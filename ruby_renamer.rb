#!/bin/ruby
# require 'regexp'
def clone_dir
	in_list = Dir.entries("/media/fox/HARD_FOX/ROR")
	out_dir = "/media/fox/6C66-AB3D/123"
	in_list.delete(".")
	in_list.delete("..")
	in_list.each do |i|
		# puts out_dir + "/" + i
		# if (i.to_s != ".") or (i != "..")
		new_file = out_dir + "/" + i
		my_file = File.new(new_file, "w+")
		my_file.close
		# end
	end

	in_list = Dir.entries(out_dir)	
end

path = "/media/fox/HARD_FOX/ROR"
list_to_rename = Dir.entries(path)

list_to_rename.each do |e| 
	# regexp = Regexp.new ""
	# result = e.match(/ (Ruby|Rails)  (.*) \(эпизод (\d|\d\d)\)\./)
	# name, title, number = result.captures
	name_re = / (Ruby|Rails)  (.*) \(эпизод (\d|\d\d)\)\./
	result  = e.scan(name_re)
	# name, title, number  = e.match(name_re).captures
	# print result.to_s + "\n"
	final =  result[0].to_a #+ result[2].to_s + result[1].to_s + "\n"
	# print final.to_s + "\n"
	number = ""

	if (final[2].to_s.size == 1)
		number = "0#{final[2]}"
	elsif (final[2].to_s.size == 0)
		next
	else
		number = final[2].to_s 
	end

	lastname = final[0].to_s + " #" + number + " " + final[1].to_s.capitalize + ".mp4"#
	
	print e + "\n"
	print lastname + "\n"
	File.rename(path + "/" + e, path+ "/" + lastname)
end
