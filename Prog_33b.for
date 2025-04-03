C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.33b, pag. 235
C
      DIMENSION A(25,25),T(20)
    1 READ(*,2,END=5) T
C   2 FORMAT(20A4/I5/(8E10.3))
    2 FORMAT(20A4)
      READ(*,*) N,((A(I,J),J=1,N),I=1,N)
      WRITE(*,3)
    3 FORMAT(////60X,'MATRICEA A'/60X,10(1H*)///)
      WRITE(*,T) ((A(I,J),J=1,N),I=1,N)
      D=DET(A,N,1.E-35)
      WRITE(*,4) D
    4 FORMAT(////38X,'VALOAREA DETERMINANTULUI MATRICEI ='
     1,E20.12/38X,55(1H=)///)
      GO TO 1
    5 STOP
      END
C
      FUNCTION DET(A,N,EPS)
      DIMENSION A(25,25)
      DET=1.
      SEMN=1.
      IF(N.NE.2) GO TO 1
      DET=A(1,1)*A(2,2)-A(2,1)*A(1,2)
      RETURN
    1 DO 8 IP=1,N
      TMAX=ABS(A(IP,IP))
      IMAX=IP
      DO 2 IL=IP,N
      IF(ABS(A(IL,IP)).LE.TMAX) GO TO 2
      TMAX=ABS(A(IL,IP))
      IMAX=IL
    2 CONTINUE
      IF(TMAX.GT.EPS) GO TO 3
      DET=0.
      RETURN
    3 DO 4 J=IP,N
      T=A(IP,J)
      A(IP,J)=A(IMAX,J)
    4 A(IMAX,J)=T
      IF(IP.NE.IMAX) SEMN=-SEMN
      PIV=A(IP,IP)
      DO 5 J=IP,N
    5 A(IP,J)=A(IP,J)/PIV
      DET=DET*PIV*SEMN
      DO 7 I=1,N
      IF(I.EQ.IP) GO TO 7
      T=A(I,IP)
      DO 6 J=IP,N
    6 A(I,J)=A(I,J)-A(IP,J)*T
    7 CONTINUE 
    8 CONTINUE 
      RETURN
      END
