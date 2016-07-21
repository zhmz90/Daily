#!/usr/bin/env python

import sys
import collections
from collections import Counter

if __name__ == "__main__":
    print Counter(sys.argv[1].split()).most_common(int(sys.argv[2]))
