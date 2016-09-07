import tensorflow as tf

b = tf.Variable(tf.zeros([100]))
W = tf.Variable(tf.random_uniform([784, 100], -1, 1))
x = tf.placeholder(tf.float32, name='x')
relu = tf.nn.relu(tf.matmul(W,x) + b)
cost = 0

s = tf.Session()
for step in xrange(0,10):
    input = ''
    result = s.run(cost, feed_dict={x:input})
    print(step, result)
