# require "minitest/autorun"
#
# class TestMsgToGitBranch < Minitest::Test
#   def test_all_ok
#     assert_equal 'fix/flt-4021/duplicate_bookings_client_info', MsgToGitBranch.new("fix 4021 duplicate bookings client info").branch
#   end
#   def test_wrong_order
#     assert_equal 'fix/flt-4021/duplicate_bookings_client_info', MsgToGitBranch.new("duplicate fix 4021  bookings client info").branch
#   end
#   def test_without_fix
#     assert_equal 'feature/flt-4021/duplicate_bookings_client_info', MsgToGitBranch.new("duplicate    4021 bookings client info").branch
#   end
#
#   def test_commit_name
#     assert_equal "[FLT-4021] Close - duplicate bookings client info]", MsgToGitBranch.new("duplicate    4021 bookings client info").commit
#   end
# end

class MsgToGitBranch
  attr_reader :task
  def initialize(text)

    text = text.downcase
    @task = text.scan(/\d/).join('')
    @reason = if text.include? "fix"
               "fix"
             else
               "feature"
             end
    @msg = text.gsub("fix", "").gsub("flt-", "").gsub(/\d+/, "").gsub(/\W+/, " ").strip
  end

  def branch
    "#{@reason}/flt-#{@task}/#{@msg.gsub(" ", "_")}"
  end

  def commit
    "[FLT-#{@task}] #{@msg.capitalize}"
  end
end
result = MsgToGitBranch.new(ARGV[0])
puts "git checkout -b #{result.branch}"
puts "git commit -m '#{result.commit}'"
puts "glab mr create --draft --description 'Closes FLT-#{result.task}' --title '#{result.commit}'" + ' --target-branch master --label "don\'t merge" --assignee arseniy96'
