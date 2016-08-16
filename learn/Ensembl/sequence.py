import requests, sys
 
server = "http://grch37.rest.ensembl.org"
ext = "/sequence/region/human/X:0?"
 

#r = requests.get(server+ext, headers={ "Content-Type" : "text/plain"})
#print(r.text)
#print("\n")
r = requests.get(server+ext, headers={ "Content-Type" : "text/x-fasta"}) 
#print(r.text)
#print("\n")
#r = requests.get(server+ext, headers={ "Content-Type" : "application/json"})

if not r.ok:
  r.raise_for_status()
  sys.exit()
 
#write()
print r.text
