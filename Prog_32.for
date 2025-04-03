C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.32, pag. 227
C
      DIMENSION S(500)
      F(X)=SIN(X)*SIN(5.*X)+1.5
      LOGICAL FILLG
      READ(*,*) XI,XF,H,EPS
    1 FORMAT(4F10.3)
      NP=(XF-XI)/H+1
      DO 2 I=1,NP
    2 S(I)=F(XI+(I-1)*H)
      CALL MAXMIN(S,NP,V1,V2)
      PRINT 3
    3 FORMAT(//////107X,'ABSCISA',5X, 
     1'ORDONATA'/107X,7(1H-),5X,8(1H-)//)
      DO 4 I=1,NP
    4 CALL GRAFIC(V1,V2,XI+(I-1)*H,S(I),EPS) 
      PRINT 5
    5 FORMAT(/////)
      STOP
      END
C
      SUBROUTINE MAXMIN(T,N,VMIN,VMAX)
      DIMENSION T(N)
      VMAX=T(1)
      VMIN=T(1)
      DO 1 I=1,N
      IF(T(I).GT.VMAX) VMAX=T(I)
      IF(T(I).LT.VMIN) VMIN=T(I)
    1 CONTINUE 
      RETURN
      END
C
      SUBROUTINE GRAFIC(VMIN,VMAX,X,Y,EPS)
      DIMENSION A(105)
      DATA BLANC,PUNCT,STEA,SEMN/1H ,1H.,1H*,1H-/
      DO 1 I=1,105
    1 A(I)=BLANC
      IF(VMIN*VMAX) 2,3,3
    2 TMIN=VMIN
      TMAX=VMAX
      GO TO 6
    3 IF(VMIN) 4,5,5
    4 TMIN=VMIN
      TMAX=0.
      GO TO 6
    5 TMIN=0.
      TMAX=VMAX
    6 I=ABS(TMIN)/(TMAX-TMIN)*104+1
      J=(Y-TMIN)/(TMAX-TMIN)*104+1
      A(I)=PUNCT
      A(J)=STEA
C/    IF(IABS(I-J).LE.1) GO TO 11
C/    IF(I-J) 7,7,8
C/  7 I1=I+1
C/    J1=J-1
C/    GO TO 9
C/  8 I1=J+1
C/    J1=I-1
C/  9 DO 10 K=I1,J1
C/ 10 A(K)=SEMN
C/ 11 CONTINUE      
      WRITE(*,12) A,X,Y
   12 FORMAT(1X,105A1,F10.4,E14.6)
      IF(ABS(X).GT.EPS) GO TO 14
      WRITE(*,13)
   13 FORMAT('+',105(1H.))  
   14 RETURN
      END
