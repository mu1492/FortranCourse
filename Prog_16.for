C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.16, pag. 176
C
    1 READ(*,*,END=8) R,NP
C   2 FORMAT(F10.5,I5)
      WRITE(*,3) R
    3 FORMAT(/////60X,3HR =,F11.5/58X,18(1H*)///44X,'NR.PCT.', 6X,'PHI',
     110X,1HX,12X,1HY//)
      PG=360./(NP-1)
      PI=3.1415926
      DO 7 I=1,NP
      PHIG=(I-1)*PG
      PHIR=PHIG*PI/180.
      IF(0.LE.PHIG.AND.PHIG.LE.90.OR.180.LE.PHIG.AND.PHIG.LE.270)GO TO 4
      X=3.*R/4.*COS(PHIR)+R/4.*COS(3.*PHIR)
      Y=3.*R/4.*SIN(PHIR)-R/4.*SIN(3.*PHIR)
      GO TO 5
    4 X=5.*R/4.*COS(PHIR)-R/4.*COS(5.*PHIR)
      Y=5.*R/4.*SIN(PHIR)-R/4.*SIN(5.*PHIR)
    5 WRITE(*,6) I,PHIG,X,Y
    6 FORMAT(44X,I5,3F13.3)
    7 CONTINUE
      GO TO 1
    8 STOP
      END
