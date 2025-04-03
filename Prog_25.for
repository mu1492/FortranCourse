C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.25, pag. 206
C
      REAL L
      F(PHI,ALFA)=1./SQRT(1.-SIN(ALFA/2.)**2*SIN(PHI)**2)
      DATA L,UA,G,N/.5,0.52359,9.81,100/
      PI=4.*ATAN(1.)
      A=0.
      B=PI/2.
      H=(B-A)/N
      SM=0.
      SC=0.
      DO 1 I=1,N
      XC=A+I*H
      XM=XC-H/2.
      SM=SM+F(XM,UA)
    1 SC=SC+F(XC,UA) 
      T =2./3.*H*SQRT(L/G)*(F(A,UA)+4.*SM+2.*SC-F(B,UA))
      WRITE(*,2) T
    2 FORMAT(///40X,'VALOAREA PERIOADEI = ',E20.10////)
      STOP
      END
