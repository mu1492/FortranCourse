C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.12, pag. 157
C
      REAL MX,MY,MZ,M
    1 READ(*,*,END=13) RX,RY,RZ,MX,MY,MZ
c   2 FORMAT(6E12.6)
      WRITE(*,3) RX,RY,RZ,MX,MY,MZ
    3 FORMAT(/5X,'ELEMENTELE TORSORULUI DE REDUCERE'/5X,33(1H=)///5X,'R'
     1,3E14.6//5X,'M',3E14.6//)
      R=SQRT(RX*RX+RY*RY+RZ*RZ)
      M=SQRT(MX*MX+MY*MY+MZ*MZ)
      IF(R.NE.0.) GO TO 7
      IF(M.NE.0.) GO TO 5
      WRITE(*,4)
    4 FORMAT(10X,'SIST. DE FORTE SI MOMENTE ESTE IN ECHILIBRU'/////)
      GO TO 1
    5 PRINT 6
    6 FORMAT(10X,'SIST. DE FORTE SI MOMENTE SE REDUCE LA UN CUPLU'/////)
      GO TO 1
    7 IF(M.NE.0.) GO TO 9
      PRINT 8
    8 FORMAT(10X,'SIST. DE FORTE SI MOMENTE SE REDUCE LA O REZULTANTA UN
     1ICA'/10X,'POLUL DE REDUCERE ESTE PE AXA CENTRALA'/////)
      GO TO 1
    9 T=RX*MX+RY*MY+RZ*MZ
      IF(T.EQ.0.) GO TO 11
      PRINT 10
   10 FORMAT(10X,'SIST. DE FORTE SI MOMENTE SE REDUCE LA UN DINAM'/////)
      GO TO 1
   11 PRINT 12
   12 FORMAT(10X,'SIST. DE FORTE SI MOMENTE SE REDUCE LA O REZULTANTA UN
     1ICA'/10X,'POLUL DE REDUCERE NU ESTE PE AXA CENTRALA'/////)
      GO TO 1
   13 STOP
      END
