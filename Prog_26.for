C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.26, pag. 208
C
      F(X)=X*SINH(50./X)-60.
      DATA A,B,EPS/40.,50.,1.E-2/
      XS=A
      XD=B
      YS=F(XS)
    1 XM=(XS+XD)/2.
      YM=F(XM)
      IF(XD-XS.LT.EPS) GO TO 5
      IF(YS*YM) 2,4,3
    2 XD=XM
      GO TO 1
    3 XS=XM
      YS=F(XS)
      GO TO 1
    4 EPS=0.
    5 WRITE(*,6) XM,EPS
    6 FORMAT(///25X,'RADACINA ECUATIEI  R =',E15.8,
     110X,'PRECIZIA  EPS =',E15.8/25X,70(1H=)////)
      STOP
      END
