# Daily

**RUN, RUN, RUN**
### Try something new each day

## Foucus on Deep Learning
- TensorFlow [C++,C,CUDA,Python,Bazel]
- CS231n, CS224d
- DeepSomaticSNV

### 27/8
- [ ] MINE.jl
- [ ] learn emacs
- [ ] blog about emacs, gdb and c++

### 26/8
- [x] get faimilar with tensorflow
- [x] try to preprocess data with tensorflow

### 25/8
- [x] learn the preprocessinng API of tensorflow
- [ ] build LSTM_CNN model

### 24/8
- [x] the bug of pywrap_tensorflow disappeared and everything goes toward expected.
- [x] learn various tutorials and sovle a segment fault (core dumped) due to out of memory
- [ ] learn how to build sophisticated RNNs and CNNs

### 23/8
- [x] learn to work with tensorflow source code
- [x] the layout of tensorflow source code 
- [x] swig
- [x] understanding and visualizing CNN 
- [x] finished files for the development of NGS data analysis core software

### 21/8
- [x] learn to how to build RNNs with TensorFlow

### 20/8
- [ ] fist step with Julia
- [ ] build simple LSTM to predict chr1 with torch

### 19/8
- [ ] build DBLSTM to predict sequence on chr1

### 18/8
- [x] apply torch-rnn to Genome
- [x] build Deep Bidirectional LSTMs with rnn in torch7

### 17/8
- [x] LSTMs with torch
- [x] prepare blog of dllab.org
- [x] test post with octopress

### 16/8
- [ ] train CNN, LSTMs with Torch

### 9/8
- [ ] faimilar with LSTMs
- [ ] Genome data

### 8/8
- [x] check the correctness of data and train benchmark model

### 7/8
- [x] quick go through CS224d from 15:30 to 18:00

### 27/7
**Refactor code of DeepSomaticSNV**
- [x] data preprocessing
- [ ] model various parameters
- [ ] various stats such as log analysis

### 20/7
- [ ] train sgRNA dataset 

### 19/7
- [x] two+ paper of sgRNA
- [x] download ImageNet datasets

### 18/7
- [x] train LeNet-5 CNN
- [ ] test ResNet on toy dataset


### Beat MSR
- [ ] STARS

### Gideon
- Mini Julia
- Julia for CUDA
- CodeAnalysis.jl for Julia, C, C++
- Kaleidoscope.jl
- COOL, COOL.jl
- new topology and opt algorithm for network

### 15/7
- [ ] baseline of Project S
- [ ] dig 14 paper

### 14/7
- [x] data preprocess
- [ ] CNN/softmax as base model
- [x] read 14 Broad's paper

### 13/7
- [x] deep learning on genomics 

### 11-12/7
- [ ] 14Broad's paper

### 8/7
- [ ] download all the genomes from ensembl

### 7/7
- [ ] vyper pipeline
- [ ] fix bug of keyerror

### 5/7
- [x] MSR's code: not clear the way of hack
- [x] GeneticAlgorithm called
- [x] mechanisms of sv: look througth a little
- [x] vyper pipeline and get breakpoint, not done

### 4/7
- [x] weekly summary and plan
- [ ] DataExpore.jl
- [ ] MH question
- [ ] STRs and homopolymers 
- [ ] sgRNA design basics

### 3/7
- [x] GRE word 2 day
- [x] JuliaCon machine code

### 2/7
- [x] Julia.h julia_internal.h 
- [x] JuliaCon2016 part videos
- [x] GRE 2 days words

### 1/7
- [ ] MH Vy-PER paper comprehension
- [ ] dive to Azimuth code and algorithm
- [ ] read paper of Azimuth
- [ ] try to learn some NoSQL databases

### 29/6 - 30/6
- [x] collect data relevant to Proj S, the result is collect several labs
- [x] understand 2016 but still a lot of questions

### 28/6
- [x] read MR's paper again
- [x] funetine pipeline of Vy-PER

### 27/6
- summary of last week
- plan of this week
- communicate with Hu
- reading paper from MR one time

### 25/6
- [x] run vyper
- [x] run azimuth

### 24/6
- [ ] finish vy-per testing
- [ ] reading all the code of azimuth

### 22/6
- [ ] rewrite final_fitering

### 19/6
- [x] rewrite blatsam and test it on real data

### 18/6
- [x] test julia version of Vy-PER and rewrite sam2fas

### 17/6
- [x] test julia version of Vy-PER

### 16/6
- [x] digest Vy-PER

### 15/6
- [x] pass Vy-PER on next-generate sequence data without the final filter

### 14/6
- [x] run Vy-PER on my data

### 13/6
- [x] Vy-PER

### 10/6
- [ ] COOL

### Julia TODO
- [ ] WARNING: could not import Base.complement into DataStructures
     WARNING: could not import Base.complement! into DataStructures
- [x] IO regression and readavailable(IOStream) 
- [x] fucntion sequence()::Int64 end not clear error msg
- [ ] methods of fieldname and fieldnames are not consistent
```shell
    julia> type Test
              a::Int64
              b::String
            end
            t = Test(1,"hello")
    Test(1,"hello")
    
    julia> fieldnames(Test)
        2-element Array{Symbol,1}:
    :a
    :b
  
    julia> fieldnames(t)
     2-element Array{Symbol,1}:
      :a
      :b
      
    julia> fieldname(Test,1)
      :a
      
    julia> fieldname(Test,2)
      :b
      
    julia> fieldname(t,1)
      ERROR: MethodError: no method matching fieldname(::Test, ::Int64)
      Closest candidates are:
        fieldname{T<:Tuple}(::Type{T<:Tuple}, ::Integer)
          fieldname(::DataType, ::Integer)
           in eval(::Module, ::Any) at ./boot.jl:225
            in macro expansion at ./REPL.jl:92 [inlined]
             in (::Base.REPL.##1#2{Base.REPL.REPLBackend})() at ./event.jl:46
     
        
```
- getfield exits but not getfields
- string concation * ^
- print_with_color is too long to write and use

### 2/6
- MH done

### 1/6
- HIVID make it done

### 31/5
- Bug: Pkg.update false
- Julia: julia.h, julia_internal.h
- **HIVID: aln, overlap, merge, aln, location**

### 30/5
- Finish Overlap.jl
- A sold understanding about julia.h

### 11/5
- make a reference contains hg19 and all hpvs
- HPVID base version

### 10/5
- HPVID base version [not finished]

### 9/5
- HPV integration

### 6/5
- MITx Unit3,4
- Fix BHTsne.jl 
- Fix MINE.jl
- Familar with LLVM IR and Assembly

### 5/5
- LLVM 
- Julia Deeper
- Assembly
- CPP

### 4/5
- LLVM
- ccall

### 30/4
- `StrPack.jl` to replace `struck` module in Python

### 28/4
- [ ] APIs of htslib

### 27/4
- [ ] htslib.jl bam APIs finished

### 16/4
- [ ] tensorflow

### 15/4
- [ ] learn how to use tensorflow 

### 14/4
- [ ] pyjulia and cnn, lstm in tensorflow

### 13/4
- [ ] aliyu

### 12/4
- [ ] tensorflow, docker and aliyun

### 11/4
- [ ] cnn Mocha

### 10/4
- [ ] deep learning getting

### 9/4
- [ ] learn cnn 

### 8/4
- [ ] make bam2pileup matrix to hdf5 file

### 7/4
- [ ] DarkVC

### 4/4
- [ ] papers about deep learning bio 

### 2/4
- [x] DeepSEA releated

### 1/4
- [x] PPT
- [x] compare prefermance of M2 and Varscan2

## month 3 / 2015

### 30/3
- [ ] machine learning applications on Gene
- [ ] compile gatk-engine
- [ ] deep learning on gene expression and predict varant effects

### 29/3
- [x] DeepSEA
- [x] learn Lua

### 28/3
- [x] fix erros while building miniutils with bazel 
 
### Month Goal
- [ ] GATK

### Week Goals
- [ ] Be able to use classes in GATK 
- [ ] finish local assembly with De Bruijn Graph 1
- [ ] finish PairHMM 2-3
- [ ] finish FM-index aligner 4

### 27/3
- [ ] minigatk with bazel

### 26/3
- [ ] master Bazel

### 25/3
- [ ] minimum gatk with Bazel 

### 24/3
- [ ] write a new walker based on Mutect2 with GATK in java and scala

### 23/3
- [ ] write a new walker based on Mutect2 with GATK in java and scala

### 22/3
- [x] Fully understand intelij idea => part
- [x] java unit test for GATK  => GATK its own test
- [x] how to write a new walker with GATK in java and scala => part

### 21/3
- [ ] De Bruijn Graph
- [ ] Test Mutect2 local assembly part with data
- [ ] how to use GATK in a new package both in java and scala
- [x] Tests in GATK

### Week Goals
- [x] hack M2 throught
- [x] Parallel MuTect2 on Cluster

### 20/3
- [x] DSA TsingHuaX week 1 and rank 107

### 19/3
- [x] nfs for x03 haplox success
- [ ] De Bruijn Graph for local assembly julia package
- [ ] PairHMM for pair alignment julia package
- [x] spark standalone cluster success

### 18/3
- [x] Presentation about M2
- [x] make PPT
- [ ] pick algorithm

### 17/3
- [x] deep understanding of M2 

### 16/3
- [x] parallel M2 on queue
- [x] deep understanding of M2 

### 15/3
- [x] M2 Math part TODO

### 14/3
- [x] M2 code part

### Week Goals
- [ ] Parallel pipeline with Queue
- [ ] hack M2 throught
- [x] learn scala and java

### 13/3
- [x] learn spark

### 12/3
- [x] learn java by Edx course
- [ ] learn scala by Courera course

### 11/3
- [ ] backgroud nosie mode
- [ ] pipeline parallel only GATK part
- [ ] MuTect2 Rewrite with scala with 3 days


### 10/3
- [x] parallel MuTect2

### 9/3
- [ ] transfer pipeline to cluster
- [ ] go throught ScalabyExample
- [x] scala cheatsheet and simple examples 

### 8/3
- [x] find feature for 6+9 samples of lung cancer and normal => gene mutations
- [x] prepare clustering code

### 7/3
- [x] hack Mutect2 
- [x] find feature for 6+9 samples of lung cancer and normal

### 3/3
- [x] learn scala by 10miniutes
- [x] learn java  by 10minimutes
- [x] hack Mutect2
- [x] hack capp stanford
- [x] write week report

### 2/3
- [x] read papers and write varant callers review  50%

### 1/3
- [ ] Finish pipeline: finished 60%
- [x] beta-bionomial distribution

## month 2 / 2015

### 29/02
- [x] mpileup APIs of htslib 
- [ ] CS231 assignment 1 50%
- [x] download and browse most of variant call papers during 2012-2016
- [x] finish most of code about pipeline and wait to bug
- [x] Ng's ML about mixture of Gaussians

### 28/02
- [x] Game Theory Week Two
- [x] CS231n segmentation video

### 27/02
- Game Theory

### 26/02
- samples pileup stats
- Data scitentis toolbox at Coursera

### 25/02
- eval the feature of err baseline

### 24/02
- Simulate data with BAMSurgeon
- Variant Call with various callers

### 23/02
- Get underlining principle of BAMSurgeon 

### 22/02
- VariantCall for ctDNA: check varscan2
 
### 20/02
- Fun.jl

### 19/02
- **osx support**

### 18/02
- stat tec support for production manager finished
- **illumina barcode demutiplex** finished
- osx support

### 17/02
- htsFile
- production related
- illumina barcode demutiplex
- tensorflow udacity assignments

### 16/02
- htslib 
- 931 genes related

### 15/02
- htsFile

### 14/02
- htslib query

### 12/02
- fix htslib's bug

### 08/02
- fix bam query bug

## month 1 / 2015

### 1/30
- prepare notebook etc for home

### 1/29
- bam/sam hdr write 
- bam index

### 1/28
- bam write and bam header IO

### 1/27
- hight level wrapper of bam read, write and query

### 1/26
- bam read and bam write

### 1/25
- bam read formal form
- paper about tumor evolution
- DL of Google

### 1/24
- L1,L2,L3 of DL course from Google

### 1/23
- Deep Learning from Google

### 1/22
- make read bam true

### 1/21
- SeqErrorDetector draft

### 1/20
- HTSLIB.jl

### 1/19
- looking for extreme sparse models in ICML NIPS ICCV and other top journals

### 1/18
- vcf data mining

### 1/17
- assign 1
- week summary

### 1/16
- lecture 3

### 1/15
- check models

### 1/14
- hand compare mutations between Small intestine and Biliary tract

### 1/13
- predict

### 1/12
- model vcf part finish

### 1/11
- fix codes about work
- lecture 2 of cs341n
- check basset

### 1/10
- a good materal: cs341n:Convolutional Neural Networks for Visual Recognition

### 1/9
- Finish work not done of this week
- Apply Deep Learning to kaggle tasks

### 1/8
- report
- MXNet.jl
- apply MXNet.jl

### 1/7 
- rewrite Fusion dectect codes
- use all the haplox data

### 1/6
	find the methods of handle false positive

### 1/5
	finish the model part 

### 1/4
	finish Strict except a good model

### 1/3
	hackerrank python
### 1/2
	9:30-11:00 readdoc,julia
	11:30-2:00 hackerrank python
	2:00-5:30 apply tensorflow to  one kaggle dataset
	5:00-7:00 spark,scala
	8:00-22:00 lan,network,htslib
    readdoc and intro to network, hackerrank, julia, lan
	one or two machine learning or deep learning package 
	spark, scala
### 1/1
	learn Readdoc and hackrank
	learn introduction to network of stanford
## month 12 / 2015
### 12/31
	just remains a few bugs of work. Go to Deep for now.

### 12/30
	focues the classification task.

### 12/29
	make GeneMisc ready for users and prepared to regeister

### PLAN of This Week
	test my model in real cfDNA data

### 12/25
	finish and test gene_location and gene synonym

### 12/24
	Summary about my skills:
		One, mathematics including machine learning, mathematical optimization, PGM.
		Two, computer science including DSA, GPU computing, compiler.

### 12/3
    Flash extended and Alogorithms_stanford urgent

### 12/2
    finish Flash Project

## month 11 / 2015

### 11/27 
    too much ideas to execute so that achived nothing
    First, classification with an emphase on feature selection
    Second, GP tune hyperpara
    Third, PGM / DBM

### 11/4
    1. Learn the structure of COSMIC by PGM
    2. feature selection with random search
### 11/3
    A great idea come in mind.
    chose hyperparameter and do feature selection with Guassian Process
	
## month 10 / 2015
    
### 10/27

    summary current published work on cancer risk prediction


Plan daily since 10/26/2015
