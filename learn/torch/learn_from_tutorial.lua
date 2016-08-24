local c = require 'trepl.colorize'
require "torch"

if not opt then
   print "processing opt"
   cmd = torch.CmdLine()
   cmd:text()
   cmd:text("SVHN data preprocessing")
   cmd:text()
   cmd:text("Opti:")
   cmd:option("-size","small", "sammmmmm")
   
   opt = cmd:parse(arg or {})
end
print(c.blue("test print blue"))
print(opt.size)

