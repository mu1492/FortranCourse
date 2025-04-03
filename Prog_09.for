C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.9, pag. 150
C
      DIMENSION A(2,2)
      DATA G/8.1E+10/
      READ(*,*) N
C   1 FORMAT(I5)
      I=1
    2 READ(*,*) IND,U,V,X,Y
C   3 FORMAT(I3,4E12.6)
      A(1,1)=1.
      A(2,2)=1.
      IF(IND-2) 4,5,6
    4 A(1,2)=0.
      A(2,1)=-U*V*V
      GO TO 7
    5 A(1,2)=1./U
      A(2,1)=0.
      GO TO 7
    6 O=V*SQRT(U/G/X)
      E=O*G*X
      A(1,1)=COS(O*Y)
      A(2,2)=A(1,1)
      A(1,2)=SIN(O*Y)/E
      A(2,1)=-E*E*A(1,2)
    7 WRITE(*,8) U,V,X,Y,IND,((A(J,K),K=1,2),J=1,2)
    8 FORMAT(///10X,4E15.6///40X,'IND=',I3///(20X,2E20.10/))
      I=I+1
      IF(I-N) 2,2,9
    9 STOP
      END
