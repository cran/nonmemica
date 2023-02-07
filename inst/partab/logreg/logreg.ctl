$PROB Logistic Regression

$INPUT C ID DV SEX

$DATA ../Dataset.csv IGNORE=@

$PRED
LOGIT = THETA(1)+ETA(1)
A = EXP(LOGIT)
P = A / (1+A)

IF(DV.EQ.1) Y=P
IF(DV.EQ.0) Y=1-P

$THETA
(10) ; beta0; Intercept; /

$OMEGA 
0.0001 	; Res; Between subject variability; /

$ESTIMATION MAXEVAL=9999 PRINT=5 METHOD=COND LAPLACE LIKELIHOOD NOABORT MSF=./logreg.msf

$COV MATRIX=R PRINT=E

$TABLE C ID DV SEX ETA1 PRED RES WRES ONEHEADER NOPRINT FILE=logreg.tab
