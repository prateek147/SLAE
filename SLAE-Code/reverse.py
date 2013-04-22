#!/usr/bin/python

import sys

input_string = sys.argv[1]

print "String Length:" + str(len(input_string))

stringList = [input_string[i:i+4] for i in range(0, len(input_string), 4)]

for item in stringList[::-1]:
	print item[::-1] + ':' + str(item[::-1].encode('hex'))

