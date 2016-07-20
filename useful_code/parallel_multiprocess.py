#!/usr/bin/env python

import multiprocessing
import sys,os

pool = multiprocessing.Pool(processes=7)

if __name__ == "__main__":
    cmds = open(sys.argv[1])
    results = []
    for cmd in cmds:
        results.append(pool.apply_async(os.system, (cmd.strip(),)))
    pool.close()
    pool.join()
        
