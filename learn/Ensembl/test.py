import requests, sys
 
server = "http://rest.ensembl.org"
#ext = "//id/ENSG00000157764?"
ext = "/info/ping"

r = requests.get(server+ext, headers={ "Content-Type" : "application/json"})
#r = requests.post(server+ext, headers={ "Content-Type" : "application/json"}, 
#                  data=' {"id" : ["ENSG00000157764", "ENSG00000248378"]} ')


if not r.ok:
  r.raise_for_status()
  sys.exit()
 
decoded = r.json()
print(repr(decoded))
