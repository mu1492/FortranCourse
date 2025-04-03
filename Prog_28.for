C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.28, pag. 212
C
      FUNCTION FACT(M)
      FACT=1.
      DO 1 I=1,M
    1 FACT=FACT*I
      RETURN
      END
C      
      PRINT 1
    1 FORMAT(///45X,'N',5X,1HK,10X,'COMBINARI'/44X,2(3H***,3X),6X,9(1H*)
     1//)
    2 READ(*,*,END=5) N,K
C   3 FORMAT(2I5)
      C=FACT(N)/FACT(K)/FACT(N-K)
      WRITE(*,4) N,K,C
    4 FORMAT(41X,2I6,E25.16/)
      GO TO 2
    5 STOP
      END
