import pysam

fl = "/home/guo/haplox/Github/ctDNASomaticVariantCall/data/bam/004_gdna_rg.bam"
samfile = pysam.AlignmentFile(fl, "rb")
pairedreads = pysam.AlignmentFile("allpaired.bam", "wb", template=samfile)
for read in samfile.fetch():
     print type(read)
     if read.is_paired:
             pairedreads.write(read)
     break

pairedreads.close()
samfile.close()

import pysam
samfile = pysam.AlignmentFile(fl, "rb" )
for pileupcolumn in samfile.pileup("chr1", 100, 120000):
    print ("\ncoverage at base %s = %s" %
           (pileupcolumn.pos, pileupcolumn.n))
    for pileupread in pileupcolumn.pileups:
        if not pileupread.is_del and not pileupread.is_refskip:
            # query position is None if is_del or is_refskip is set.
            print ('\tbase in read %s = %s' %
                  (pileupread.alignment.query_name,
                   pileupread.alignment.query_sequence[pileupread.query_position]))
    break

samfile.close()
