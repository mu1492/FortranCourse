C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.33a, pag. 232
C
      DIMENSION A(25,25),B(25),T(20)
    1 READ(*,2,END=4) T
C   2 FORMAT(20A4/I4/(6E12.6))
    2 FORMAT(20A4)
      READ(*,*) N,((A(I,J),J=1,N),B(I),I=1,N)
      PRINT 3
    3 FORMAT(/////)
      WRITE(*,T) ((A(I,J),J=1,N),B(I),I=1,N)
      PRINT 3
      CALL GAUSSJ(A,B,N,II,1.E-25)
      IF(II.EQ.1) GO TO 1
      WRITE(*,T) ((A(I,J),J=1,N),B(I),I=1,N)
      PRINT 3
      GO TO 1      
    4 STOP
      END
C
      SUBROUTINE GAUSSJ(A,B,N,IND,EPS)
      DIMENSION A(25,25),B(25)
      DO 7 IP=1,N
      TMAX=ABS(A(IP,IP))
      IMAX=IP
      DO 1 IL=IP,N
      IF(ABS(A(IL,IP)).LE.TMAX) GO TO 1
      TMAX=ABS(A(IL,IP))
      IMAX=IL
    1 CONTINUE
      IF(TMAX.GT.EPS) GO TO 2
      IND=1
      RETURN
    2 DO 3 J=IP,N
      T=A(IP,J)
      A(IP,J)=A(IMAX,J)
    3 A(IMAX,J)=T
      T=B(IP)
      B(IP)=B(IMAX)
      B(IMAX)=T
      PIV=A(IP,IP)
      B(IP)=B(IP)/PIV
      DO 4 J=IP,N
    4 A(IP,J)=A(IP,J)/PIV
      DO 6 I=1,N
      IF(I.EQ.IP) GO TO 6
      T=A(I,IP)
      B(I)=B(I)-B(IP)*T
      DO 5 J=IP,N
    5 A(I,J)=A(I,J)-A(IP,J)*T
    6 CONTINUE 
    7 CONTINUE 
      IND=0      
      RETURN
      END
