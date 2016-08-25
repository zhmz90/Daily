from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
import numpy as np

def learn_string_input_producer():
    fileq = tf.python.train.string_input_producer(["test1.txt","test2.txt"])
    return fileq

def main():
    q = learn_string_input_producer()
    with tf.Session() as sess:
        coord = tf.train.Coordinator()
        threads = tf.train.start_queue_runners(coord=coord)
        r = sess.run(q)
        print(r)
        coord.request_stop()
        coord.join(threads)

if __name__ == "__main__":
    main()


