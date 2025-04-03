C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.6, pag. 144
C
C   SEMNIFICATIA NOTATIILOR - TIPUL MATRICEI - IND - U - V
C                                  TE           1    L   I
C                                  TM           2    M   P
C                                  TR           3    J   P
C                                  TA           4    K
C
      DIMENSION A(4,4)
      DATA A/1.,4*0.,1.,4*0.,1.,4*0.,1/,E/21.E+10/
      READ(*,*) IND,U,V
C   1 FORMAT(I3,2E12.6)
      GO TO (2,3,4,5),IND
    2 A(1,2)=U
      A(1,3)=U*U/2./E/V
      A(1,4)=U**3/6./E/V
      A(2,3)=U/E/V
      A(2,4)=A(1,3)
      A(3,4)=U
      GO TO 6
    3 A(4,1)=U*V*V
      GO TO 6
    4 A(3,2)=U*V*V
      GO TO 6
    5 A(4,1)=-U
    6 WRITE(*,7) IND,U,V,((A(I,J),J=1,4),I=1,4)
    7 FORMAT(///35X,'IND =',I2,10X,'U =',E13.6,5X,'V =',
     *E13.6/////(25X,4E20.8//))
      STOP
      END
