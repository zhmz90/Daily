#!/bin/sh
exec scala "$0" "$@"
!#
object HelloWorld extends App{
       def main(args: Array[String]): Unit = {
              	   println("Hello, world!")
       }

}
HelloWorld.main(args)