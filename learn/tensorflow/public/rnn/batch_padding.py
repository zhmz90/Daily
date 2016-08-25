#!/usr/bin/env python

import tensorflow as tf
import numpy as np

x = tf.range(1, 10, name="x")

range_q = tf.train.range_input_producer(limit=5, shuffle=False)

slice_end = range_q.dequeue()

y = tf.slice(x, [0], [slice_end], name="y")

with tf.Session() as sess:
  sess.run(y)


