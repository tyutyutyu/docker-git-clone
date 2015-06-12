#!/usr/bin/python

import sys
from giturlparse import parse

print parse(sys.argv[1]).host
