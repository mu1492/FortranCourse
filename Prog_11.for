C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.11, pag. 155
C
      WRITE(*,1)
    1 FORMAT(///10X,'N',6X,'K',13X,'COMBINARI'/9X,3H***,4X,'***',11X
     111(1H*)//)
    2 READ(*,*,END=7) N,K
c   3 FORMAT(2I5)
      WRITE(*,4) N,K
    4 FORMAT(5X,2I7)
      IF(K.GT.N/2.) K=N-K
      C=1.
      I=1
    5 C=C*(N-I+1)/I
      I=I+1
      IF(I.LE.K) GO TO 5
      WRITE(*,6) C
    6 FORMAT('+',24X,E22.16/)
      GO TO 2
    7 STOP
      END
