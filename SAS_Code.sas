/*Question 1*/
libname hw4 "F:/Bank_TermDeposit_Subscription";
run;

/*Import bank.csv File*/
proc import datafile = "F:\Bank_TermDeposit_Subscription\bank.csv"
            out = hw4.bank
			dbms = csv
			replace;
			delimiter = ";";
            getnames = yes;
			run;

/*Perform Logistic Regression on bank.csv file*/

proc logistic data=hw4.bank outmodel=bankmodel;
class job (ref="unknown" param=ref) marital (ref="single" param=ref) education (ref="unknown" param=ref)
default (ref="no" param=ref) housing (ref="no" param=ref) loan (ref="no" param=ref)
contact (ref="unknown" param=ref) month (ref="jan" param=ref) poutcome (ref="unknown" param=ref);
model y (event="yes") = age job marital education default balance housing loan contact day month duration campaign
pdays  poutcome /risklimits rsquare;
run;


/*Score on bank-full.csv*/
proc import datafile = "F:\Bank_TermDeposit_Subscription\bank_full.csv"
            out = hw4.bankfull
			dbms = csv
			replace;
			delimiter = ";";
            getnames = yes;
			run;


proc logistic inmodel=bankmodel;
score data=bankfull out=finalResult fitstat;
run;

proc print data=finalresult (obs=50);
run;

/*score prediction*/
proc freq data=finalresult;
table f_y*i_y;
run;

/*null model*/
proc logistic data=bank outmodel=bankmodel;
class job(ref="unknown" param=ref);
model y (event="yes") = job;
run;