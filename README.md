# DPE

matlab implemtation on DPE

ver1. 160501
ver2. 160502
  fix refine: marker & camera img re-smooth
              make the terminate delta finer
ver2.1
  fix step: fix to be the same to the step in last level C2F
ver2.2
  fix poses2Trans_mex.cpp
  
### Run

for running whole DPE process
Run singleTest.m

for running APE
comment TestImage_DPE and uncomment TestImage_APE
Run singleTest.m

translation term is measured in meters