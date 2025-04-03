C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.22, pag. 194
C
      DIMENSION A(10,10),B(10,10),C(10,10)
      READ(*,*) M,N,L,((A(I,J),J=1,N),I=1,M),((B(I,J),I=1,N),J=1,L)
C   1 FORMAT(3I4/(8E10.4))
      WRITE(*,3) ((B(I,J),J=1,L),I=1,N)
    3 FORMAT(////(56X,6E12.5/))
      DO 2 I=1,M
      DO 2 J=1,L
      C(I,J)=0.
      DO 2 K=1,N
    2 C(I,J)=C(I,J)+A(I,K)*B(K,J)
      WRITE(*,4) ((A(I,J),J=1,N),(C(I,J),J=1,L),I=1,M)
    4 FORMAT(/3X,4E12.5,5X,6E12.5)
      STOP
      END
