#!/bin/sh
exec scala "$0 $@"
!=

object Test extends App{
       println("hello world!")
}
Test.main(args)