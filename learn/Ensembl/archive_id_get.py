import requests, sys
 
server = "http://grch37.rest.ensembl.org"
ext = "/archive/id/ENSG00000157764?"
 
r = requests.get(server+ext, headers={ "Content-Type" : "application/json"})
r = requests.post(server+ext, headers={ "Content-Type" : "application/json"}, 
                  data=' {"id" : ["ENSG00000157764", "ENSG00000248378"]} ')


if not r.ok:
  r.raise_for_status()
  sys.exit()
 
decoded = r.json()
print(repr(decoded))
