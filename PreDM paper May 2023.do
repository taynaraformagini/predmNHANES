/////PAPER PREDIABETES STATUS AND AWARENESS BY RACE/ETHNICITY AND EDUCATIONAL LEVEL - NAHNES CYCLES 2011 TO 2020 PRE PANDEMIC 

*****FIRST STEP IS TO MERGE AND APPEND ALL DATASETS NEEDED FROM FOUR CYCLES (2011/2012, 2013/2014, 2015/2016, 2017/2020 PRE PANDEMIC) 


******** 2017- 2020 Pre Pandemic *********

*importing datasets*
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DEMO.XPT", clear
sort seqn
save "P_DEMO.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DIQ.XPT", clear
sort seqn
save "P_DIABETES.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_GHB.XPT", clear
sort seqn
save "P_HEMOGLOBIN.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ACQ.XPT", clear
sort seqn
save "P_ACCULTURATION.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_GLU.XPT", clear
sort seqn
save "P_FASTING.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HSQ.XPT", clear
sort seqn
save "P_HEALTHSTATUS.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HIQ.XPT", clear
sort seqn
save "P_HEALTHINSURANCE.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_MCQ.XPT", clear
sort seqn
save "P_MEDICALCONDITIONS.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PAQ.XPT", clear
sort seqn
save "P_PHYSICALACTIVITY.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DBQ.XPT", clear
sort seqn
save "P_DIETBEHAVIOR.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_BMX.XPT", clear
sort seqn
save "P_BMI.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DPQ.XPT", clear
sort seqn
save "P_DEPRESSION.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_OCQ.XPT", clear
sort seqn
save "P_OCUPATION.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_RHQ.XPT", clear
sort seqn
save "P_REPRODUCTIVE.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HUQ.XPT", clear
sort seqn
save "P_ACCESSCARE.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_SMQRTU.XPT", clear
sort seqn
save "P_SMOKE.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_FASTQX.XPT", clear
sort seqn
save "P_QUESTFASTING.DTA",replace

*merging all datasets*
clear all
use "P_DEMO.DTA", clear
merge 1:1 seqn using "P_DIABETES.DTA"
drop  _merge
merge 1:1 seqn using "P_HEMOGLOBIN.DTA"
drop  _merge
merge 1:1 seqn using "P_FASTING.DTA"
drop  _merge
merge 1:1 seqn using "P_ACCULTURATION.DTA"
drop  _merge
merge 1:1 seqn using "P_HEALTHSTATUS.DTA"
drop  _merge
merge 1:1 seqn using "P_HEALTHINSURANCE.DTA"
drop  _merge
merge 1:1 seqn using "P_MEDICALCONDITIONS.DTA"
drop  _merge
merge 1:1 seqn using "P_PHYSICALACTIVITY.DTA"
drop  _merge
merge 1:1 seqn using "P_DIETBEHAVIOR.DTA"
drop  _merge
merge 1:1 seqn using "P_BMI.DTA"
drop  _merge
merge 1:1 seqn using "P_DEPRESSION.DTA"
drop  _merge
merge 1:1 seqn using "P_OCUPATION.DTA"
drop  _merge
merge 1:1 seqn using "P_REPRODUCTIVE.DTA"
drop  _merge
merge 1:1 seqn using "P_ACCESSCARE.DTA"
drop  _merge
merge 1:1 seqn using "P_SMOKE.DTA"
drop  _merge
merge 1:1 seqn using "P_QUESTFASTING.DTA"
drop  _merge


*saving as one merged dataset*
save nhanes20172020.dta, replace


******* 2015/2016 **********

*importing datasets*
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEMO_I.XPT", clear
sort seqn
save "DEMO_I.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DIQ_I.XPT", clear
sort seqn
save "DIABETES_I.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GHB_I.XPT", clear
sort seqn
save "HEMOGLOBIN_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/ACQ_I.XPT", clear
sort seqn
save "ACCULTURATION_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GLU_I.XPT", clear
sort seqn
save "FASTING_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HSQ_I.XPT", clear
sort seqn
save "HEALTHSTATUS_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HIQ_I.XPT", clear
sort seqn
save "HEALTHINSURANCE_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/MCQ_I.XPT", clear
sort seqn
save "MEDICALCONDITIONS_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PAQ_I.XPT", clear
sort seqn
save "PHYSICALACTIVITY_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DBQ_I.XPT", clear
sort seqn
save "DIETBEHAVIOR_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BMX_I.XPT", clear
sort seqn
save "BMI_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DPQ_I.XPT", clear
sort seqn
save "DEPRESSION_I.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/OCQ_I.XPT", clear
sort seqn
save "OCUPATION_I.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/RHQ_I.XPT", clear
sort seqn
save "REPRODUCTIVE_I.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HUQ_I.XPT", clear
sort seqn
save "ACCESSCARE_I.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SMQRTU_I.XPT", clear
sort seqn
save "SMOKE_I.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/FASTQX_I.XPT", clear
sort seqn
save "QUESTFASTING_I.DTA",replace

*merging all datasets*
clear all
use "DEMO_I.DTA", clear
merge 1:1 seqn using "DIABETES_I.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_I.DTA"
drop  _merge
merge 1:1 seqn using "FASTING_I.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_I.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_I.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_I.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_I.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_I.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_I.DTA"
drop  _merge
merge 1:1 seqn using "BMI_I.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_I.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_I.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_I.DTA"
drop  _merge
merge 1:1 seqn using "ACCESSCARE_I.DTA"
drop  _merge
merge 1:1 seqn using "SMOKE_I.DTA"
drop  _merge
merge 1:1 seqn using "QUESTFASTING_I.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2015.dta, replace


*********** 2013/2014 **********


*importing datasets*
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEMO_H.XPT", clear
sort seqn
save "DEMO_H.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DIQ_H.XPT", clear
sort seqn
save "DIABETES_H.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GHB_H.XPT", clear
sort seqn
save "HEMOGLOBIN_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ACQ_H.XPT", clear
sort seqn
save "ACCULTURATION_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GLU_H.XPT", clear
sort seqn
save "FASTING_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HSQ_H.XPT", clear
sort seqn
save "HEALTHSTATUS_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HIQ_H.XPT", clear
sort seqn
save "HEALTHINSURANCE_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/MCQ_H.XPT", clear
sort seqn
save "MEDICALCONDITIONS_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAQ_H.XPT", clear
sort seqn
save "PHYSICALACTIVITY_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DBQ_H.XPT", clear
sort seqn
save "DIETBEHAVIOR_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BMX_H.XPT", clear
sort seqn
save "BMI_H.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DPQ_H.XPT", clear
sort seqn
save "DEPRESSION_H.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/OCQ_H.XPT", clear
sort seqn
save "OCUPATION_H.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/RHQ_H.XPT", clear
sort seqn
save "REPRODUCTIVE_H.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HUQ_H.XPT", clear
sort seqn
save "ACCESSCARE_H.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SMQRTU_H.XPT", clear
sort seqn
save "SMOKE_H.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/FASTQX_H.XPT", clear
sort seqn
save "QUESTFASTING_H.DTA", replace


*merging all datasets*
clear all
use "DEMO_H.DTA", clear
merge 1:1 seqn using "DIABETES_H.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_H.DTA"
drop  _merge
merge 1:1 seqn using "FASTING_H.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_H.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_H.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_H.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_H.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_H.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_H.DTA"
drop  _merge
merge 1:1 seqn using "BMI_H.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_H.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_H.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_H.DTA"
drop  _merge
merge 1:1 seqn using "ACCESSCARE_H.DTA"
drop  _merge
merge 1:1 seqn using "SMOKE_H.DTA"
drop  _merge
merge 1:1 seqn using "QUESTFASTING_H.DTA"
drop  _merge


*saving as one merged dataset*
save nhanes2013.dta, replace


********** 2011/2012 *******

*importing datasets*
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT", clear
sort seqn
save "DEMO_G.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DIQ_G.XPT", clear
sort seqn
save "DIABETES_G.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GHB_G.XPT", clear
sort seqn
save "HEMOGLOBIN_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ACQ_G.XPT", clear
sort seqn
save "ACCULTURATION_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GLU_G.XPT", clear
sort seqn
save "FASTING_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HSQ_G.XPT", clear
sort seqn
save "HEALTHSTATUS_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HIQ_G.XPT", clear
sort seqn
save "HEALTHINSURANCE_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/MCQ_G.XPT", clear
sort seqn
save "MEDICALCONDITIONS_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAQ_G.XPT", clear
sort seqn
save "PHYSICALACTIVITY_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DBQ_G.XPT", clear
sort seqn
save "DIETBEHAVIOR_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BMX_G.XPT", clear
sort seqn
save "BMI_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HIQ_G.XPT", clear 
sort seqn
save "INSURANCE_G.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DPQ_G.XPT", clear
sort seqn
save "DEPRESSION_G.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/OCQ_G.XPT", clear
sort seqn
save "OCUPATION_G.DTA", replace 
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/RHQ_G.XPT", clear
sort seqn
save "REPRODUCTIVE_G.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HUQ_G.XPT", clear
sort seqn
save "ACCESSCARE_G.DTA",replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SMQRTU_G.XPT", clear
sort seqn
save "SMOKE_G.DTA", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/FASTQX_G.XPT", clear
sort seqn
save "QUESTFASTING_G.DTA", replace

*merging all datasets*
clear all
use "DEMO_G.DTA", clear
merge 1:1 seqn using "DIABETES_G.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_G.DTA"
drop  _merge
merge 1:1 seqn using "FASTING_G.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_G.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_G.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_G.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_G.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_G.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_G.DTA"
drop  _merge
merge 1:1 seqn using "BMI_G.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_G.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_G.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_G.DTA"
drop  _merge
merge 1:1 seqn using "ACCESSCARE_G.DTA"
drop  _merge
merge 1:1 seqn using "SMOKE_G.DTA"
drop  _merge
merge 1:1 seqn using "QUESTFASTING_G.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2011.dta, replace

///////// APENDINGING ALL FOUR DATASETS INTO ONE

use "/Users/taynara/Desktop/Prediabetes Paper/NHANES DATASETS 2023/nhanes20172020.dta"


*append datasets together
append using "/Users/taynara/Desktop/Prediabetes Paper/NHANES DATASETS 2023/nhanes2015.dta" "/Users/taynara/Desktop/Prediabetes Paper/NHANES DATASETS 2023/nhanes2013.dta" "/Users/taynara/Desktop/Prediabetes Paper/NHANES DATASETS 2023/nhanes2011.dta"


*saving as one merged dataset*
save predmpapermay2023.dta, replace

use predmpapermay2023.dta, clear
rename *, lower
set more off


*SAVING AS THE FINAL DATASET*

save "/Users/taynara/Desktop/Prediabetes Paper/predmpapermay2023.dta", replace 

******************************* EVERY TIME YOU NEED TO USE THE DATASET YOU CAN START HERE *******************************
 
use "/Users/taynara/Desktop/Prediabetes Paper/NHANES DATASETS 2023/nhanes20172020.dta"


************************* APPLY WEIGHTS *******************************

** Note: using the MEC Exam Weights (WTMEC2YR), per the analytic notes
* Use website https://stats.idre.ucla.edu/stata/seminars/applied-svy-stata13/ for explanation of how to apply the sample weights
*Because we are using fasting glucose, need to use specific sample weights from fasting (wtsaf2yr)
*FROM NHANES: For example, combining the 2015-2016 and 2017-March 2020 files would result in a data file representing a 5.2-year period, and the survey weights should be adjusted as follows: 2015-2016 survey weights should be multiplied by 2/5.2 (the fraction of the 5.2-year period represented by the 2015-2016 cycle) and likewise, the 2017-March 2020 survey weights should be multiplied by 3.2/5.2.


gen wtsaf8yr = wtsaf2yr * 6 / 9.2
replace wtsaf8yr = wtsafprp * (3.2/9.2) if sddsrvyr == 66 

svyset sdmvpsu [w=wtsaf8yr], psu(sdmvpsu) strata(sdmvstra) vce(linearized) singleunit(centered)



******************************* VARIABLES *******************************

*** sample sizes 

*whole NHANES 2011-2020 (pre)
sum seqn
*n=45,462

**start with the fasting sample 
drop if lbxglu ==.


*fasting time <8 or >24
*excluding individuals with unreasonable fasting hours (<8 or > 24)
gen fast =.
replace fast = 0 if phafsthr <8  |  phafsthr >24 & phafsthr!=.
replace fast = 1 if phafsthr >=8 & phafsthr <=24

*missiing and unknown education values 
gen eduexclude =.
replace eduexclude = 1 if dmdeduc2==7 | dmdeduc2==9 | dmdeduc2==.

*** number of individuals excluded in each category: 

*younger than 20
tab ridageyr if ridageyr < 20 & ridreth3 !=7 & ridexprg!=1 & fast ==1 & lbxgh!=. & (dmdeduc2 !=7 | dmdeduc2 !=9 )

tab ridageyr if ridageyr < 20 

*two races 
tab ridreth3 if ridreth3 ==7 & ridageyr >=20 & ridexprg!=1 & fast==1 & lbxgh!=. & eduexclude !=1

tab ridreth3 if ridreth3 ==7 

*pregnant women
tab ridexprg if ridexprg==1 & ridageyr >=20 & ridreth3 !=7 & fast==1 & lbxgh!=. & eduexclude !=1
 
tab ridexprg if ridexprg==1
 
*fasting wrong time
tab fast if fast ==0 & ridageyr >=20 & ridreth3 !=7 & ridexprg!=1 & lbxgh!=. & eduexclude !=1
 
tab fast if fast ==0  
 
* missing data on a1c 
tab lbxglu if lbxgh==. & ridageyr >=20 & ridreth3 !=7 & ridexprg!=1 & fast==1 & eduexclude !=1

tab lbxglu if lbxgh==.

*missing data on education 
tab eduexclude if eduexclude ==1  & ridageyr >=20 & ridreth3 !=7 & ridexprg!=1 & fast==1 & lbxgh!=.

tab dmdeduc2 if  dmdeduc2==7 | dmdeduc2==9 



**sample of interest : adults 20 or older, not wiht 2 or more races, not pregnant, with no missing data on a1c, reasonable fasting time, and known education
gen inclusion = 0
replace inclusion =1 if ridageyr >=20 & ridreth3 !=7 & ridexprg!=1 & fast ==1 & lbxgh!=. & eduexclude!=1

gen inclusion1 = 0
replace inclusion1 =1 if ridageyr >=20 & ridreth3 !=7 & ridexprg!=1 & fast ==1 & lbxgh!=. & eduexclude!=1 & wtsaf8yr !=0



****************** OUTCOME VARIABLES **************

****** PREDIABETES *******

**** Prediabetes diagnosis criteria 1 (Glycohemoglobin HbA1c (laboratory data))

gen a1cpredm =.
replace a1cpredm = 0 if lbxgh <=5.6  | lbxgh >=6.5 & lbxgh <.
replace a1cpredm = 1 if lbxgh >=5.7 & lbxgh <=6.4


**** Prediabetes diagnosis criteria 2 - fasting plasma glucose (lab data)
** ****** backward regression ****** 
gen g1p_b = 0.9835 * (lbxglu - 1.139) 
replace g1p_b = 0.9835 * ((0.9776 * lbxglu + 0.4994) - 1.139) if sddsrvyr == 9 | sddsrvyr == 66

*fasting plasma glucose 
gen fastpredm =.
replace fastpredm = 0 if g1p_b  <100 | g1p_b  >125 & g1p_b <.  & fast==1
replace fastpredm = 1 if g1p_b  >=100 & g1p_b  <=125 & fast==1


***** Combine both criteria for prediabetes: a1c and/or fasting
gen predm =.
replace predm = 1 if a1cpredm ==0 & fastpredm==0
replace predm = 2 if a1cpredm ==1 & fastpredm==1
replace predm = 3 if a1cpredm ==1 & fastpredm==0
replace predm = 4 if a1cpredm ==0 & fastpredm==1

gen predmada =. 
replace predmada = 0 if predm ==1
replace predmada = 1 if predm ==2 | predm==3 | predm==4


** AWARENESS of prediabetes among those whose blood sample = prediabetes - includes borderline diabetes 
gen predmaware =.
replace predmaware = 0 if (diq160 ==2) & predmada == 1 
replace predmaware = 1 if (diq160 ==1 |diq010 ==3) & predmada == 1 

**generate variable with missing data from prediabetes awareness
gen missaware =.
replace missaware =1 if predmada== 1 & predmaware ==. 
replace missaware =2 if predmaware ==0   | predmaware ==1



************ INDEPENDENT VARIABLES **********

**RACE
gen race =.
replace race = 1 if ( ridreth3 == 6) 
replace race = 2 if ( ridreth3 == 4) 
replace race = 3 if ( ridreth3 == 1 | ridreth3 == 2) 
replace race = 4 if ( ridreth3 == 3) 


*Label variable sample
label define race 1 "Asian" 2 "Black" 3 "Hispanic" 4 "White" 
label values race race



***EDUCATIONAL LEVEL 
* less than high school, high school, some college or college or more 
gen edu4 =.
replace edu4 = 1 if( dmdeduc2 == 1 | dmdeduc2 == 2) & race!=.
replace edu4 = 2 if( dmdeduc2 == 3) & race!=.
replace edu4 = 3 if( dmdeduc2 == 4) & race!=. 
replace edu4 = 4 if( dmdeduc2 == 5) & race!=.

label define edu4 1 "less than highschool" 2 "highschool" 3 "some college" 4 "college or higher" 
label values edu4 edu4



*********************COVARIATES***********************

**********Socio-demographic variables 

*GENDER (given by NHANES)
*riagendr
*1 = male

*create variables AGE GROUPS
*preent the mean

*age groups if needed
gen age =.
replace age = 1 if ridageyr >=20 & ridageyr <=29
replace age = 2 if ridageyr >=30 & ridageyr <=39
replace age = 3 if ridageyr >=40 & ridageyr <=49
replace age = 4 if ridageyr >=50 & ridageyr <=59
replace age = 5 if ridageyr >=60

label define age 1 "20-29" 2 "30-39" 3 "40-49" 4 "50-59" 5 ">=60"
label values age age 


*FPL
*Create a categorical variable from the nuemrical variable INDFMPIR (poverty-income ratio) to separate 100% of the FPL to more than 100%
egen fp = cut(indfmpir), at(0, 1.01 , 5.1)

*multiplying fpl by 10 to have a variable with integer numbers"
gen fpl = (fp)*10

* making it a categorical variable 
gen fpl2=.
replace fpl2 =0 if fpl ==0 
replace fpl2 =1 if fpl !=0 & fpl !=. 

label define fpl2 0 "<=100%" 1 ">100"
label values fpl2 fpl2

*create variable with missing data 
gen missfpl =.
replace missfpl = 1 if fpl2==.
replace missfpl = 2 if fpl2== 0 | fpl2== 1


************Health and healthcare-related variables
*Insurance (given by NHANES) - create a variable to include 7 and 9s
gen insurance =.
replace insurance = 0 if (hiq011 ==2)
replace insurance = 1 if (hiq011 ==1)


*usual source of care
gen placehc =.
replace placehc =0 if huq030 == 2
replace placehc =1 if huq030 == 1 | huq030 == 3 


** smoking (need tocombine sm1 680 (2011) with 681 (2013-2020))
gen smoke=.
replace smoke = 0 if smq680 ==2 | smq681==2
replace smoke = 1 if smq680 ==1 | smq681==1 


**Physical activity - any PA
gen anypa =.
replace anypa = 1 if (paq605 ==1 | paq620 ==1 | paq635 ==1 | paq650 ==1 | paq665 ==1)
replace anypa = 0 if(anypa == .)




************** Clinical variables 
*Generate variable BMI
gen bmi=.
replace bmi = 1 if bmxbmi < 18.5
replace bmi = 2 if bmxbmi >=18.5 & bmxbmi <=24.9
replace bmi = 3 if bmxbmi >=25 & bmxbmi <=29.9
replace bmi = 4 if bmxbmi >=30 & bmxbmi !=.

*label variable bmi 
label define bmi 1 "underweight" 2 "normal" 3 "overweight" 4 "obese" 
label values bmi bmi


*waist circumference 
gen wc =.
replace wc = 0 if (bmxwaist <= 88  & riagendr ==2) | (bmxwaist <= 101  & riagendr ==1)
replace wc = 1 if (bmxwaist >=89 & bmxwaist !=.  & riagendr ==2) | (bmxwaist >= 102 & bmxwaist !=. & riagendr ==1)




******************* ANALYSIS ****************************



*** DESCRIPTION OF THE SAMPLE
*** unweighted descriptive statistics (description of the sample)

tab edu4 race if inclusion1==1

tab  riagendr race if inclusion1==1

tab fpl2 race if inclusion1==1

tab smoke race if inclusion1==1
tab anypa race if inclusion1==1

tab insurance race if inclusion1==1

tab placehc race if inclusion1==1

tab bmi race if inclusion1==1

tab wc race if inclusion1==1

** weighted 
svy: tab edu4 race if inclusion1==1, col
svy: proportion edu4 if inclusion==1, over(race)

svy: mean ridageyr if inclusion1==1
svy: mean ridageyr if inclusion==1, over(race)
svy: regress ridageyr i.race

svy: tab riagendr race if inclusion1==1, col
svy: proportion riagendr if inclusion==1, over(race)

svy: tab fpl2 race if inclusion1==1, col
svy: proportion fpl2 if inclusion==1, over(race)

svy: tab anypa race if inclusion==1, col
svy: proportion anypa if inclusion==1, over(race)

svy: tab smoke race if inclusion==1, col
svy: proportion smoke if inclusion==1, over(race)

svy: tab insurance race if inclusion==1, col
svy: proportion insurance if inclusion==1, over(race)

svy: tab placehc race if inclusion==1, col
svy: proportion placehc if inclusion==1, over(race)

svy: tab bmi race if inclusion==1, col
svy: proportion bmi if inclusion==1, over(race)

svy: tab wc race if inclusion==1, col
svy: proportion wc if inclusion==1, over(race)


** PREDIABETES by race/ethnicity 
** prevalence of prediabetes and awareness
*prevalence 
tab predmada if inclusion1==1
svy: tab predmada race if inclusion==1, col
svy: proportion predmada if inclusion==1, over(race)


*awareness among those with prediabetes
tab predmaware if inclusion1==1
svy: tab predmaware race if inclusion==1, col
svy: proportion predmaware if inclusion==1, over(race)

******* socio-demographic of the sample by educational level among sample (aisna, blacks,hispanic and white together)

***unweighted to calculate sample size
tab race edu4 if inclusion1==1
tab  riagendr edu4 if inclusion1==1
tab fpl2 edu4 if inclusion1==1
tab anypa edu4 if inclusion1==1
tab smoke edu4 if inclusion1==1

tab insurance edu4 if inclusion1==1
tab placehc edu4 if inclusion1==1
tab bmi edu4 if inclusion1==1
tab wc edu4 if inclusion1==1

** weighted 
svy: tab race edu4 if inclusion==1, col
svy: proportion race if inclusion==1, over(edu4)

svy: mean ridageyr if inclusion1==1
3svy: regress ridageyr i.edu4

svy: tab riagendr edu4 if inclusion==1, col
svy: proportion riagendr if inclusion==1, over(edu4)

svy: tab fpl2 edu4 if inclusion==1, col
svy: proportion fpl2 if inclusion==1, over(edu4)

svy: tab anypa edu4 if inclusion==1, col
svy: proportion anypa if inclusion==1, over(edu4)

svy: tab smoke edu4 if inclusion==1, col
svy: proportion smoke if inclusion==1, over(edu4)

svy: tab insurance edu4 if inclusion==1, col
svy: proportion insurance if inclusion==1, over(edu4)

svy: tab placehc edu4 if inclusion==1, col
svy: proportion placehc if inclusion==1, over(edu4)

svy: tab bmi edu4 if inclusion==1, col
svy: proportion bmi if inclusion==1, over(edu4)

svy: tab wc edu4 if inclusion==1, col
svy: proportion wc if inclusion==1, over(edu4)


** PREDIABETES by race/ethnicity 
** prevalence of prediabetes and awareness
*prevalence 
tab predmada if inclusion==1
svy: tab predmada edu4 if inclusion==1, col
svy: proportion predmada if inclusion==1, over(edu4)


*awareness among those with prediabetes
tab predmaware if inclusion==1
svy: tab predmaware edu4 if inclusion==1, col
svy: proportion predmaware if inclusion==1, over(edu4)




******************* REGRESSION ANALYSIS ****************************


******** AIM 1 *******
*logistic regression: odds of prediabetes among US adults whites, Latinos and blacks
*unadjusted 
svy: logistic predmada ib4.race if inclusion==1 

*adjusted socio-demographic
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.edu4 if inclusion==1 

*adjusted socio-demographic + health-related 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa i.edu4 if inclusion==1 

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.edu4 if inclusion==1 


************educational attainment

*logistic regression: odds of prediabetes among US adults by educational level 
*unadjusted 
svy: logistic predmada ib4.edu4 if inclusion==1 

*adjusted socio-demographic
svy: logistic predmada ib4.edu4 ridageyr i.riagendr indfmpir i.race if inclusion==1 

*adjusted socio-demographic + health-related 
svy: logistic predmada ib4.edu4 ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa i.race if inclusion ==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if inclusion==1 



******** AIM 2 *******

*logistic regression: odds of prediabetes AWARENESS among US adults whites, Latinos and blacks
*unadjusted 
svy: logistic predmaware ib4.race if inclusion==1

*adjusted socio-demographic
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.edu4 if inclusion ==1

*adjusted socio-demographic + health-related 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc  i.smoke i.anypa i.edu4 if inclusion ==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc  i.smoke i.anypa bmxbmi bmxwaist i.edu4 if inclusion ==1



*logistic regression: odds of prediabetes AWARENESS among US adults by educational level 
*unadjusted 
svy: logistic predmaware ib4.edu4 if inclusion==1

*adjusted socio-demographic
svy: logistic predmaware ib4.edu4 ridageyr i.riagendr indfmpir i.race if inclusion ==1 

*adjusted socio-demographic + health-related 
svy:logistic predmaware ib4.edu4 ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa i.race if inclusion ==1 

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if inclusion ==1 




******** Stratifiying by educational level (maybe add to supplemental - to be decided)
**** LOGISTIC REGRESSION MODELS

****prediabetes
**less than high school
*unadjusted 
svy: logistic predmada ib4.race if edu4==1 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==1 & inclusion==1

**high school
*unadjusted 
svy: logistic predmada ib4.race if edu4==2 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc  i.smoke i.anypa bmxbmi bmxwaist if edu4==2 & inclusion==1

**some college
*unadjusted 
svy: logistic predmada ib4.race  if edu4==3 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==3 & inclusion==1

**college
*unadjusted 
svy: logistic predmada ib4.race if edu4==4 & inclusion==1


*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==4 & inclusion==1


****prediabetes awareness
****prediabetes
**less than high school
*unadjusted 
svy: logistic predmaware ib4.race if edu4==1 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==1 & inclusion==1

**high school
*unadjusted 
svy: logistic predmaware ib4.race if edu4==2 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc  i.smoke i.anypa bmxbmi bmxwaist if edu4==2 & inclusion==1

**some college
*unadjusted 
svy: logistic predmaware ib4.race  if edu4==3 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==3 & inclusion==1

**college
*unadjusted 
svy: logistic predmaware ib4.race if edu4==4 & inclusion==1

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist if edu4==4 & inclusion==1



******* interaction term 
*adjusted socio-demographic + health-related + clinical 
*prediabetes
svy: logistic predmada ib4.race#ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if inclusion ==1 

*awareness
svy: logistic predmaware ib4.race#ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if inclusion ==1 






******** run tests to check if the ones missing data on prediabetes awareness and FPL are different than those who completed questions

** prediabetes aware vs. unaware

mean ridageyr if inclusion==1, over(missaware)
oneway ridageyr missaware

tab riagendr missaware if inclusion==1, col chi
proportion riagendr if inclusion==1, over(missaware)

tab edu4 missaware if inclusion==1, col chi
proportion edu4 if inclusion==1, over(missaware)

tab placehc missaware if inclusion==1, col chi
proportion placehc if inclusion==1, over(missaware)

tab insurance missaware if inclusion==1, col chi
proportion insurance if inclusion==1, over(missaware)

tab wc missaware if inclusion==1, col chi
proportion wc if inclusion==1, over(missaware)


** MISSING FPL
mean ridageyr if inclusion==1, over(missfpl)
oneway ridageyr missfpl

tab riagendr missfpl if inclusion==1, col chi
proportion riagendr if inclusion==1, over(missfpl)

tab edu4 missfpl if inclusion==1, col chi
proportion edu4 if inclusion==1, over(missfpl)

tab placehc missfpl if inclusion==1, col chi
proportion placehc if inclusion==1, over(missfpl)

tab insurance missfpl if inclusion==1, col chi
proportion insurance if inclusion==1, over(missfpl)

tab wc missfpl if inclusion==1, col chi
proportion wc if inclusion==1, over(missfpl)

tab predmada missfpl if inclusion==1, col chi
svy: proportion predmada if inclusion==1, over(missfpl)


***sensitivity analysis comparing those 20 or older vs. those 25 or older 

gen seninclusion = 0
replace seninclusion =1 if ridageyr >=25 & ridreth3 !=7 & ridexprg!=1 & fast ==1 & lbxgh!=. & eduexclude!=1


*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.edu4 if seninclusion==1 

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if seninclusion==1 

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.race ridageyr i.riagendr indfmpir i.insurance i.placehc  i.smoke i.anypa bmxbmi bmxwaist i.edu4 if seninclusion ==1


*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc i.smoke i.anypa bmxbmi bmxwaist i.race if seninclusion ==1 



