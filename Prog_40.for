C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.40, pag. 281
C
      DIMENSION COF(5),X(4),Y(4)
      DATA NC,M/5,4/
    5 READ(*,*,END=1000) COF
C   1 FORMAT(5F15.8)
      WRITE(*,2) (I,COF(I),I=1,NC)
    20FORMAT(/1X,131(1H*)//54X,'COEFICIENTII POLINOMULUI'/54X,24(1H=)/
     1///(54X,'C(',I2,') = ',E15.8/))   
      CALL PORAB(COF,M,X,Y,KOD)
      IF(KOD.NE.0) GO TO 5
      WRITE(*,3) (X(I),Y(I),I=1,M)
    3 FORMAT(///32X,'SOLUTIILE ECUATIEI POLINOMIALE DETERMINATE PRIN MET
     1ODA LUI BAIRSTOW'/32X,67(1H=)///(46X,E15.8,' + J * ',E15.8))
      PRINT 4
    4 FORMAT(///)
      GO TO 5
 1000 STOP
      END
