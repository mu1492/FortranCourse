C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.8, pag. 149
C
      DIMENSION A(100)
      READ(*,*) N,(A(I),I=1,N)
C   1 FORMAT(I5/(10F8.4))
      P=1.
      M=0
      I=1
    2 IF(A(I)) 3,4,3
    3 P=P*A(I)
      M=M+1
    4 I=I+1
      IF(I-N) 2,2,5
    5 WRITE(*,6) P,M
    6 FORMAT(///50X,'P=',E14.7,5X,'M=',I5///)
      STOP
      END
