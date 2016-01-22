module Re


link1 = """<a href="http://www.hackerrank.com">HackerRank</a>"""
link2 = """<a href="http://www.hackerrank.com"><h1><b>HackerRank</b></h1></a> """

"""<a href="http://www.hackerrank.com">HackerRank</a>"""
ptn = r"<a href=\"(.+)\">(<.+></.+>)</a>"

"""<a href="http://www.hackerrank.com" title="gege">HackerRank</a>"""
ptn = r"<a href=\"()\" .+>(.+)</a>"

@show match(ptn, link1)
@show match(ptn, link2)

ptn = r"<a href=\"(.+)\"(?: .+)?>(.+)</.+>"

#=
t_ptr = r"(a a)(?:123)"
str = "Aa a123b"
@show r = match(t_ptr,str)
=#



end
