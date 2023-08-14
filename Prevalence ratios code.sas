LIBNAME NHANES '\\cdc.gov\private\M139\WRB6\PREDM';

data predm;
set nhanes.Predmpapermay2023;
race2=race;
if race=. then race2=99;
edu42=edu4;
if edu4=. then edu42=99;

ridageyr2=ridageyr;
if ridageyr=. then ridageyr2=99;
riagendr2=riagendr;
if riagendr=. then riagendr2=99;
fpl22=fpl2;
if fpl2=. then fpl22=99;
insurance2=insurance;
if insurance=. then insurance2=99;
placehc2=placehc;
if placehc=. then placehc2=99;
smoke2=smoke;
if smoke=. then smoke2=99;
anypa2=anypa;
if anypa=. then anypa2=99;
bmi2=bmi;
if bmi=. then bmi2=99;
wc2=wc;
if wc=. then wc2=99;

run;


proc freq data=predm;
tables fpl2*indfmpir;
run;

proc freq data=predm;
tables wtsaf8yr;
where inclusion=1;
run;
proc freq data=predm;
tables bmi wc;
run;
proc freq data=predm;
tables race2 edu42 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2;
run;

proc sort data=predm;
by sdmvstra sdmvpsu;
run;


*Table 3 - RACE**;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2 ;
model predmada = race2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2  riagendr2  edu42;
model predmada = race2 ridageyr2 riagendr2 fpl22 edu42;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class   race2  riagendr2  fpl22 insurance2 placehc2 smoke2 anypa2 edu42;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 edu42 ;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class   race2  riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2 edu42 ;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2 edu42 ;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


*Table 3 - EDUCATION**;
PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42 ;
model predmada = edu42;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42  riagendr2 fpl22  race2 ;
model predmada = edu42 ridageyr2 riagendr2 fpl22 race2;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42  riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 race2 ;
model predmada = edu42 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 race2;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;



PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class   edu42   riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2 race2 ;
model predmada = edu42  ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2 race2;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


**Table 4 - RACE**;
PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2 ;
model predmaware  = race2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2 riagendr2 fpl22 edu42 ;
model predmaware  = race2 ridageyr2 riagendr2 fpl22 edu42;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2  riagendr2 fpl22 insurance2 placehc2  smoke2 anypa2 edu42;
model predmaware  = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2  smoke2 anypa2 edu42;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    race2  riagendr2 fpl22 insurance2 placehc2  smoke2 anypa2 bmi2 wc2 edu42;
model predmaware  = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2  smoke2 anypa2 bmi2 wc2 edu42;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;

*Table 4 - EDUCATION*;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42;
model predmaware  = edu42;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42  riagendr2 fpl22  race2 ;
model predmaware  = edu42 ridageyr2 riagendr2 fpl22 race2;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42  riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 race2 ;
model predmaware  = edu42 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 race2;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
nest sdmvstra sdmvpsu;
subpopn inclusion=1;
weight wtsaf8yr;
class    edu42   riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2  race2 ;
model predmaware  = edu42  ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2 race2 ;
PREDMARG edu42(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


*SUPPLEMENTAL TABLE 1*;
PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
subpopn inclusion=1 and edu42=1;
nest sdmvstra sdmvpsu;
weight wtsaf8yr;
class    race2  riagendr2  fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2   ;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
subpopn inclusion=1 and edu42=2;
nest sdmvstra sdmvpsu;
weight wtsaf8yr;
class    race2  riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2  bmi2 wc2 ;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;

PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
subpopn inclusion=1 and edu42=3;
nest sdmvstra sdmvpsu;
weight wtsaf8yr;
class    race2  riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2   ;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;


PROC RLOGIST data=predm FILETYPE=SAS DESIGN=WR ;
subpopn inclusion=1 and edu42=4;
nest sdmvstra sdmvpsu;
weight wtsaf8yr;
class    race2  riagendr2 fpl22  insurance2 placehc2 smoke2 anypa2   ;
model predmada = race2 ridageyr2 riagendr2 fpl22 insurance2 placehc2 smoke2 anypa2 bmi2 wc2;
PREDMARG race2(4)/ADJRR;
 setenv labwidth=24 decwidth=4 colwidth=6 colspce=2;
print predmrg="PREDMARG" /
 pred_mrg=default
 t_prdmrgfmt=f8.2;
 setenv labwidth=27 decwidth=3 colwidth=5 colspce=5;
 print  pred_rr="Prev Ratio"
 /  predrisk=default;
run;
