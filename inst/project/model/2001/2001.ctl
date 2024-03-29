$PROBLEM //like/2001//but/1 cmt, diag. omega, prop. err.//
$INPUT C ID TIME SEQ=DROP EVID AMT DV SUBJ HOUR HEIGHT WT SEX AGE DOSE FED
$DATA ../../data/derived/drug.csv IGNORE=C
$SUBROUTINE ADVAN2 TRANS2
$PK
 CL=THETA(1)*EXP(ETA(1))
 V =THETA(2)*EXP(ETA(2))
 KA=THETA(3)*EXP(ETA(3))
 S2=V
 
$ERROR
 Y=F*(1+ERR(1))
 IPRE=F

$THETA
(0,10,50)                       ; CL/F     ; clearance                                     ; L/h                    
(0,10,100)                      ; Vc/F     ; central volume                                ; L                      
(0,0.2,5)                       ; Ka       ; absorption rate constant                      ; 1/h                    

$OMEGA                      
0.1                             ; IIV_CL   ; interindividual variability on clearance     
0.1                             ; IIV_Vc   ; interindividual variability on central volume
0.1                             ; IIV_Ka   ; interindividual variability on Ka            

$SIGMA
0.1                             ; ERR_PROP ; proportional error                           

$ESTIMATION MAXEVAL=9999 PRINT=5 NOABORT METHOD=1 INTER MSFO=mod.msf
$COV PRINT=E
$TABLE NOPRINT FILE=mod.tab ONEHEADER
ID                              ; ID       ; NONMEM subject identifier                    
AMT                             ; AMT      ; dose amount                                   ; mg                     
TIME                            ; TIME     ; time                                          ; h                      
EVID                            ; EVID     ; event type                                    ; //0/observation//1/dose
PRED                            ; PRED     ; population prediction                         ; ng/mL                  
IPRE                            ; IPRED    ; individual prediction                         ; ng/mL                  
CWRESI                          ; CWRESI   ; conditional weighted residual                
CIWRESI                         ; CIWRESI  ; conditional indvividual weighted residual    

$TABLE NOPRINT FILE=mod2.tab ONEHEADER
ID                              ; ID       ; NONMEM subject identifier                    
TIME                            ; TIME     ; time                                          ; h                      
CL                              ; CLI      ; posthoc systemic clearance                    ; L/h                    
V                               ; V2I      ; posthoc systemic volume                       ; L                      
KA                              ; KAI      ; posthoc absorption rate                       ; 1/h                    
ETA1                            ; BSV_CL   ; clearance between-subject variability        
ETA2                            ; BSV_V2   ; volume between-subject variability           
ETA3                            ; BSV_KA   ; absorption between-subject variability       
