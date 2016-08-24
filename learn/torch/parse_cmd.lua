
cmd = torch.CmdLine()
cmd:text()
cmd:text("CmdLine Example:")
cmd:text("th parse_cmd.lua --cuda  --batch_size 1024")
cmd:text()
cmd:option("--cuda", false, "use cuda")
cmd:option("--batch_size", 512, "batch size")
cmd:option("--lstm", false, "use Long Short Term Memory Cell")
cmd:text()

local opt = cmd:parse(arg or {})
print(opt)

print(loadstring)
