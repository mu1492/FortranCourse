C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.35, pag. 244
C
      DIMENSION A(25,25),AI(25,25),COEF(26)
    5 READ(*,*,END=100) N,((A(I,J),J=1,N),I=1,N)
C   1 FORMAT(I5/(4F15.5))
      CALL FADEEV(A,N,COEF,AI,III)
      WRITE(*,2) ((A(I,J),J=1,N),I=1,N)
    2 FORMAT(////58X,'MATRICEA INITIALA'/58X,17(1H*)//(40X,4E13.6/))
      N1=N+1
      WRITE(*,3) (I,COEF(I),I=1,N1)
    3 FORMAT(/47X,'COEFICIENTII POLINOMULUI CARACTERISTIC'/47X,38(1H*)
     1///(56X,'C(',I2,') =',E13.6/))
      IF(III.EQ.1) GO TO 5
      WRITE(*,4) ((AI(I,J),J=1,N),I=1,N)
    4 FORMAT(///58X,'MATRICEA INVERSA'/58X,16(1H*)//(40X,4E13.6/))
      GO TO 5
  100 STOP
      END
C      
      SUBROUTINE FADEEV(A,N,C,AINV,IND)
      DIMENSION A(25,25),C(26),AINV(25,25),AL(25,25)
      C(1)=1.
      DO 1 I=1,N
      DO 1 J=1,N
    1 AL(I,J)=A(I,J)
      DO 6 K=2,N
      U=0.
      DO 2 I=1,N
    2 U=U+AL(I,I)
      C(K)=-U/(K-1)
      DO 4 I=1,N
      DO 3 J=1,N
      AINV(I,J)=AL(I,J)
      IF(I.NE.J) GO TO 3
      AINV(I,J)=AINV(I,J)+C(K)
    3 CONTINUE
    4 CONTINUE
      DO 5 I=1,N
      DO 5 J=1,N
      AL(I,J)=0.
      DO 5 L=1,N
    5 AL(I,J)=AL(I,J)+A(I,L)*AINV(L,J)
    6 CONTINUE
      U=0.
      DO 7 I=1,N
    7 U=U+AL(I,I)
      C(N+1)=-U/N
      IND=1
      IF(C(N+1).EQ.0) GO TO 9
      DO 8 I=1,N
      DO 8 J=1,N
    8 AINV(I,J)=-AINV(I,J)/C(N+1)
      IND=0
    9 RETURN
      END
