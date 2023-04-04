//////PAPER PREDIABETES STATUS AND AWARENESS BY RACE/ETHNICITY AND EDUCATIONAL LEVEL - NAHNES CYCLES 2011 TO 2020 PRE PANDEMIC - SEPTEMBER 2022

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


*saving as one merged dataset*
save nhanes2011.dta, replace

///////// APENDINGING ALL FOUR DATASETS INTO ONE

use "nhanes20172020.dta"

*append datasets together
append using "/Users/taynaraformagini/Library/CloudStorage/OneDrive-UniversityofCentralFlorida/Documents/Prediabetes Paper/nhanes 2011-2020/nhanes2015.dta" "/Users/taynaraformagini/Library/CloudStorage/OneDrive-UniversityofCentralFlorida/Documents/Prediabetes Paper/nhanes 2011-2020/nhanes2013.dta" "/Users/taynaraformagini/Library/CloudStorage/OneDrive-UniversityofCentralFlorida/Documents/Prediabetes Paper/nhanes 2011-2020/nhanes2011.dta"


*saving as one merged dataset*
save predmpaper09.dta, replace

use predmpaper09.dta, clear
rename *, lower
set more off


*SAVING AS THE FINAL DATASET*

save "/Users/taynaraformagini/Library/CloudStorage/OneDrive-UniversityofCentralFlorida/Documents/Prediabetes Paper/nhanes 2011-2020/predmpaper09.dta", replace


******************************* EVERY TIME YOU NEED TO USE THE DATASET YOU CAN START HERE *******************************
 
use "/Users/taynaraformagini/Desktop/Prediabetes Paper/nhanes 2011-2020/predmpaper09.dta"


************************* APPLY WEIGHTS *******************************

** Note: using the MEC Exam Weights (WTMEC2YR), per the analytic notes
* Use website https://stats.idre.ucla.edu/stata/seminars/applied-svy-stata13/ for explanation of how to apply the sample weights
*Because we are using fasting glucose, need to use specific sample weights from fasting (wtsaf2yr)
*FROM NHANES: For example, combining the 2015-2016 and 2017-March 2020 files would result in a data file representing a 5.2-year period, and the survey weights should be adjusted as follows: 2015-2016 survey weights should be multiplied by 2/5.2 (the fraction of the 5.2-year period represented by the 2015-2016 cycle) and likewise, the 2017-March 2020 survey weights should be multiplied by 3.2/5.2.


gen wtsaf8yr = wtsaf2yr * 6 / 9.2
replace wtsaf8yr = wtsafprp * (3.2/9.2) if sddsrvyr == 66 

svyset sdmvpsu [w=wtsaf8yr], psu(sdmvpsu) strata(sdmvstra) vce(linearized) singleunit(centered)




******************************* VARIABLES *******************************


*sample of interest 
* ALL RACES + ADULTS 20 YEARS OR OLDER + NOT PREGNANT 
* sample = 1 mean mexican american + other hispanics 
gen sample1 =.
replace sample1 = 1 if ( ridreth3 == 1 | ridreth3 == 2) & ridageyr >=20 & ridexprg !=1
replace sample1 = 2 if ( ridreth3 == 4) & ridageyr >=20 & ridexprg !=1
replace sample1 = 3 if ( ridreth3 == 3) & ridageyr >=20 & ridexprg !=1


**** exclude those with diabetes
gen a1cdm =.
replace a1cdm = 1 if lbxgh >=6.5 & lbxgh !=.

gen fastdm=.
replace fastdm = 1 if g1p_b  >=126 & g1p_b !=.


gen diabetes =.
replace diabetes =1 if a1cdm==1 | fastdm ==1


** sample excluding those with diabetes
gen sample =.
replace sample = 1 if sample1 ==1 & diabetes !=1
replace sample = 2 if sample1 ==2 & diabetes !=1
replace sample = 3 if sample1 ==3 & diabetes !=1

*Label variable sample
label define sample 1 "Hispanic" 2 "Black" 3 "White" 
label values sample sample


****************** OUTCOME VARIABLES **************


****** PREDIABETES *******

**** Prediabetes diagnosis criteria 1 (Glycohemoglobin HbA1c (laboratory data))
gen a1cpredm =.
replace a1cpredm = 0 if lbxgh <=5.6 
replace a1cpredm = 1 if lbxgh >=5.7 & lbxgh <=6.4


**** Prediabetes diagnosis criteria 2 - fasting plasma glucose (lab data)
** ****** backward regression ****** 
gen g1p_b = 0.9835 * (lbxglu - 1.139) 
replace g1p_b = 0.9835 * ((0.9776 * lbxglu + 0.4994) - 1.139) if sddsrvyr == 9 | sddsrvyr == 66


****prediabetes based on fasting plasma glucose
*excluding individuals with unreasonable fasting hours (<8 or > 24)
gen fast =.
replace fast =0 if phafsthr <8  |  phafsthr >24 & phafsthr !=.
replace fast = 1 if phafsthr >=8 & phafsthr <=24

*fasting plasma glucose 
gen fastpredm =.
replace fastpredm = 0 if (g1p_b  <=99) & fast !=0
replace fastpredm = 1 if (g1p_b  >=100 & g1p_b  <=125) & fast !=0


***** Combine both criteria for prediabetes: a1c and/or fasting
gen predmada =.
replace predmada = 0 if a1cpredm ==0 & fastpredm ==0
replace predmada = 1 if a1cpredm ==1 | fastpredm ==1

** AWARENESS of prediabetes among those whose blood sample = prediabetes  
gen predmaware =.
replace predmaware = 0 if (diq160 ==2) & predmada == 1 
replace predmaware = 1 if (diq160 ==1) & predmada == 1 




************ INDEPENDENT VARIABLES **********
***EDUCATIONAL LEVEL 
* less than high school, high school, some college or college or more 
gen edu4 =.
replace edu4 = 1 if( dmdeduc2 == 1 | dmdeduc2 == 2)
replace edu4 = 2 if( dmdeduc2 == 3)
replace edu4 = 3 if( dmdeduc2 == 4) 
replace edu4 = 4 if( dmdeduc2 == 5)

label define edu4 1 "less than highschool" 2 "highschool" 3 "some college" 4 "college or higher" 
label values edu4 edu4



*********************COVARIATES***********************

**********Socio-demographic variables 

*GENDER (given by NHANES)
*riagendr
*1 = male

*create variables AGE GROUPS
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

************Health-related variables
*Insurance (given by NHANES) - create a variable to include 7 and 9s
gen insurance =.
replace insurance = 0 if (hiq011 ==2)
replace insurance = 1 if (hiq011 ==1)


*usual source of care
gen placehc =.
replace placehc =0 if huq030 == 2
replace placehc =1 if huq030 == 1 | huq030 == 3 


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

*** sample sizes 

*whole NHANES 2011-2020 (pre)
sum seqn
*n=45,462

*adults 20 years or older
sum ridageyr if ridageyr>=20
*n=26,280

*who reported being Latino, White or Black
tab ridreth3 if ridageyr>=20





********** JUST WHEN CALCULATING PREDIABETES AWARENESS use samplepre
*then we only need the data of those who had a blood sample that fit criteria for prediabetes
tab sample predmada 

*** created a variable to have only individulas with prediabetes among the sample (adults 20 years or older, black/hispanic,white, not pregnant)
gen samplepre=.
replace samplepre =1 if sample ==1 & predmada==1
replace samplepre =2 if sample ==2 & predmada==1
replace samplepre =3 if sample ==3 & predmada==1


*** DESCRIPTION OF THE SAMPLE
*** unweighted descriptive statistics (description of the sample)

tab edu4 if sample !=.
tab  age if sample !=.
tab  riagendr if sample !=.
tab fpl if sample !=.
tab insurance if sample !=.
tab placehc if sample !=.
tab bmi if sample !=.
tab wc if sample !=.

** weighted 
svy: tab edu4 sample, col
svy: proportion edu4, over(sample)

svy: tab age sample, col
svy: proportion age, over(sample)

svy: tab riagendr sample, col
svy: proportion riagendr, over(sample)

svy: tab fpl2 sample, col
svy: proportion fpl2, over(sample)

svy: tab insurance sample, col
svy: proportion insurance, over(sample)

svy: tab placehc sample, col
svy: proportion placehc, over(sample)

svy: tab bmi sample, col
svy: proportion bmi, over(sample)

svy: tab wc sample, col
svy: proportion wc, over(sample)


** PREDIABETES by race/ethnicity 
** prevalence of prediabetes and awareness
*prevalence 
tab predmada sample, col
svy: tab predmada sample, col
svy: proportion predmada, over(sample)


*awareness among those with prediabetes
tab predmaware sample, col
svy: tab predmaware samplepre,col
svy: proportion predmaware, over(samplepre)



******* socio-demographic of the sample by educational level among sample (blacks,hispanic and white together)

***unweighted to calculate sample size
tab  sample edu4 if sample !=., col
tab  age edu4 if sample !=.
tab riagendr edu4 if sample !=.
tab fpl edu4 if sample !=.
tab insurance edu4 if sample !=.
tab placehc edu4 if sample !=.
tab bmi edu4 if sample !=.
tab wc edu4 if sample !=.

*prediabetes and awareness 
tab predmada edu4 if sample !=.
tab predmaware edu4 if samplepre !=.

**weighted 
svy: tab sample edu4 if sample !=., col
svy: proportion sample if sample !=., over(edu4) 

svy: tab age edu4 if sample !=., col
svy: proportion age if sample !=., over(edu4) 

svy: tab riagendr edu4 if sample !=., col
svy: proportion riagendr if sample !=., over(edu4) 

svy: tab fpl2 edu4 if sample !=., col
svy: proportion fpl2 if sample !=., over(edu4) 

svy: tab insurance edu4 if sample !=., col
svy: proportion insurance if sample !=., over(edu4) 

svy: tab placehc edu4 if sample !=., col
svy: proportion placehc if sample !=., over(edu4) 

svy: tab bmi edu4 if sample !=., col
svy: proportion bmi if sample !=., over(edu4) 

svy: tab wc edu4 if sample !=., col
svy: proportion wc if sample !=., over(edu4) 


**prediabetes by edu among sample 
*prevalence
svy: tab predmada edu4 if sample !=., col
svy: proportion predmada if sample !=., over(edu4) 

*awareness
svy: tab predmaware edu4 if samplepre !=., col
svy: proportion predmaware if samplepre !=., over(edu4) 


******************* REGRESSION ANALYSIS ****************************


*logistic regression: odds of prediabetes among US adults whites, Latinos and blacks
*unadjusted 
svy: logistic predmada ib3.sample

*adjusted socio-demographic
svy: logistic predmada ib3.sample ridageyr i.riagendr indfmpir

*adjusted socio-demographic + health-related 
svy: logistic predmada ib3.sample ridageyr i.riagendr indfmpir i.insurance i.placehc

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib3.sample ridageyr i.riagendr indfmpir i.insurance i.placehc bmxbmi bmxwaist


*logistic regression: odds of prediabetes AWARENESS among US adults whites, Latinos and blacks
*unadjusted 
svy: logistic predmaware2 ib3.samplepre

*adjusted socio-demographic
svy: logistic predmaware2 ib3.samplepre ridageyr i.riagendr indfmpir

*adjusted socio-demographic + health-related 
svy: logistic predmaware2 ib3.samplepre ridageyr i.riagendr indfmpir i.insurance i.placehc

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware ib3.samplepre ridageyr i.riagendr indfmpir i.insurance i.placehc bmxbmi bmxwaist

************educational attainment

*logistic regression: odds of prediabetes among US adults by educational level 
*unadjusted 
svy: logistic predmada ib4.edu4 if sample!=.

*adjusted socio-demographic
svy: logistic predmada ib4.edu4 ridageyr i.riagendr indfmpir if sample!=.

*adjusted socio-demographic + health-related 
svy: logistic predmada ib4.edu4 ridageyr i.riagendr indfmpir i.insurance i.placehc if sample!=.

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc bmxbmi bmxwaist if sample!=.


*logistic regression: odds of prediabetes AWARENESS among US adults by educational level 
*unadjusted 
svy: logistic predmaware2 ib4.edu4 if samplepre!=.

*adjusted socio-demographic
svy: logistic predmaware2 ib4.edu4 ridageyr i.riagendr indfmpir if samplepre!=.

*adjusted socio-demographic + health-related 
svy: logistic predmaware2 ib4.edu4 ridageyr i.riagendr indfmpir i.insurance i.placehc if samplepre!=.

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware2 ib4.edu4  ridageyr i.riagendr indfmpir i.insurance i.placehc bmxbmi bmxwaist if samplepre!=.


*** LOGISTIC REGRESSION with the interaction between the two independent variables
*PREDIABETES
*unadjusted
svy: logistic predmada ib2.sample#ib4.edu4 

*adjusted socio-demographic
svy: logistic predmada ib2.sample#ib4.edu4 age riagendr fpl

*adjusted socio-demographic + health-related 
svy: logistic predmada ib2.sample#ib4.edu4 age riagendr fpl insurance placehc

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmada iib2.sample#ib4.edu4  age riagendr fpl insurance placehc bmi wc

*AWARENESS
*unadjusted
svy: logistic predmaware2 ib2.sample#ib4.edu4 

*adjusted socio-demographic
svy: logistic predmaware2 ib2.sample#ib4.edu4 age riagendr fpl

*adjusted socio-demographic + health-related 
svy: logistic predmaware2 ib2.sample#ib4.edu4 age riagendr fpl insurance placehc

*adjusted socio-demographic + health-related + clinical 
svy: logistic predmaware2 iib2.sample#ib4.edu4  age riagendr fpl insurance placehc bmi wc



