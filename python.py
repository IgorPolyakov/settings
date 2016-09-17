#!/bin/python
import random
import string

def create(file_name, msg):
	with open(file_name, "w+") as f:
		f.write(msg)

def generate_random(length):
	return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(length))


for x in range(1000000):
	file_name = generate_random(10)
	msg = generate_random(12)
	create(file_name + (".txt"), msg)

file_name = generate_random(10)
create(file_name + (".txt"), "flag_is_easy")
