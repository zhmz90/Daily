import re
from re import findall
#pattern = r"<a href=\"([^<>\"]+)\"(?: [^<>]+)?>(?:<[^<>/]+>[^<>]*)*([^<>/]+)</[^<>]+>"
pattern = r"<a href=\"([^<>\"]+)\"(?:[^<>]+)*>(?:<[^<>/]*[^<>]*>)*([^<>]*)</[^<>]*>"
N = int(raw_input())
while N>=1:
    N -=  1
    lts = re.findall(pattern,raw_input())
    #print lts
    for link,title in lts:
        print "%s,%s" % (link,title)
