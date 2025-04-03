C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.21, pag. 191
C
      DIMENSION A(51)     
    1 READ(*,*,END=9) XI,XF,H,PMAX,NC,(A(I),I=1,NC)
C   2 FORMAT(4E12.6,I4/(8E10.4))
      WRITE(*,3) (I,A(I),I=1,NC)
    3 FORMAT(///54X,'COEFICIENTII POLINOMULUI'/54X,24(1H=)/(56X,'C(',I2,
     13H) =,E15.7/))
      WRITE(*,4)
    4 FORMAT(///48X,'NR.PUNCT',5X,'ABSCISA', 5X,'VALOAREA POLINOMULUI'/
     148X,8(1H*), 5X,7('*'), 5X,19(1H*)//)
      NP=(XF-XI)/H+1
      DO 8 I=1,NP
      X=XI+(I-1)*H
      WRITE(*,5,ADVANCE="NO") I,X
    5 FORMAT(48X,I6,F15.3)
      P=0.
      DO 6 J=1,NC
      P=P*X+A(J)
      IF(ABS(P).GT.PMAX) GO TO 8
    6 CONTINUE
      WRITE(*,7) P
    7 FORMAT(8X,E14.8)
    8 CONTINUE
      GO TO 1
    9 STOP
      END
