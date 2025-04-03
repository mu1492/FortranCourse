C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.36, pag. 249
C
      DIMENSION YI(8),YF(8)
      EXTERNAL FUNCTII
      READ(*,*) NREC,NRITER,DELTAX,XI,YI
C   1 FORMAT(2I8,2E15.6/(8E10.4))
      I=0
      WRITE(*,2) (J,J=1,8),I,XI,(YI(J),J=1,NREC)
    2 FORMAT(///1X,132(1H=)//7X,'I',9X,'X',6X,8(6X,'Y',I1,5X)/
     1/1X,132(1H=)//1X,I8,F12.5,2X,8E13.6)
      DO 4 I=1,NRITER
      CALL RK(XI,YI,DELTAX,XF,YF,NREC,FUNCTII)
      WRITE(*,3) I,XF,(YF(J),J=1,NREC)
    3 FORMAT(1X,I8,F12.5,2X,8E13.6)
      XI=XF
      DO 4 J=1,NREC
    4 YI(J)=YF(J)
      WRITE(*,5)
    5 FORMAT(/1X,132(1H=)/////)
      STOP
      END
C
      SUBROUTINE RK(XI,YI,PASX,XF,YF,NREC,FUNCTII)
      DIMENSION YI(8),YF(8),YL(8),R1(8),R2(8),R3(8),R4(8),F(8)
      CALL FUNCTII(XI,YI,F,NREC)
      DO 1 I=1,NREC
      R1(I)=PASX*F(I)
    1 YL(I)=YI(I)+R1(I)/2.
      X1=XI+PASX/2.
      CALL FUNCTII(X1,YL,F,NREC)
      DO 2 I=1,NREC
      R2(I)=PASX*F(I)
    2 YL(I)=YI(I)+R2(I)/2.
      CALL FUNCTII(X1,YL,F,NREC)
      DO 3 I=1,NREC
      R3(I)=PASX*F(I)
    3 YL(I)=YI(I)+R3(I)
      XF=XI+PASX
      CALL FUNCTII(XF,YL,F,NREC)
      DO 4 I=1,NREC
    4 R4(I)=PASX*F(I)
      DO 5 I=1,NREC
    5 YF(I)=YI(I)+(R1(I)+2.*R2(I)+2.*R3(I)+R4(I))/6.
      RETURN
      END
C
      SUBROUTINE FUNCTII(X,Y,F,N)
      DIMENSION Y(8),F(8)
      F(1)=Y(2)
      F(2)=-1.E+4*Y(1)+50.*SIN(90.*X)
      RETURN
      END
