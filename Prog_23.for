C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.23, pag. 198
C
      DIMENSION A(10,10),S(10,10),D(10,10),TABFD(20),TABFSA(20)
C   1 READ(*,2,END=10) TABFD,TABFSA,N,((A(I,J),J=1,N),I=1,N)
C   2 FORMAT(20A4/20A4/I4/(10F8.4))
    1 READ(*,2,END=10) TABFD,TABFSA
    2 FORMAT(20A4/20A4)
      READ(*,*) N,((A(I,J),J=1,N),I=1,N)
      PRINT 3
    3 FORMAT(///////)
      DO 9 J=1,N
      DO 8 I=1,N
      S(I,J)=0.
      D(I,J)=0.
      IF(I.EQ.J) S(I,J)=1.
      SUM=0.
      L=I-1
      IF(I.GT.J) L=J-1
      IF(L.LT.1) GO TO 5
      DO 4 K=1,L
    4 SUM=SUM+S(I,K)*D(K,J)
    5 IF(I-J) 6,6,7
    6 D(I,J)=A(I,J)-SUM
      GO TO 8
    7 S(I,J)=(A(I,J)-SUM)/D(J,J)
    8 CONTINUE
    9 CONTINUE
      WRITE(*,TABFD) ((D(I,J),J=1,N),I=1,N)
      WRITE(*,TABFSA) ((S(I,J),J=1,N),(A(I,J),J=1,N),I=1,N)
      GO TO 1
   10 STOP
      END
