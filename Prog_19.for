C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.19, pag. 186
C
      DIMENSION C(21),H(20,20),FORMTIP(20)
    1 READ(*,*,END=9) M,(C(I),I=1,M)
c   2 FORMAT(I5/(6E13.6))
      READ(*,3) FORMTIP
    3 FORMAT(20A4)
      N=M-1
      DO 6 I=1,N
      DO 5 J=1,N
      K=2*I-J+1
      IF(1.LE.K.AND.K.LE.M) GO TO 4
      H(I,J)=0.
      GO TO 5
    4 H(I,J)=C(K)
    5 CONTINUE
    6 CONTINUE
      WRITE(*,7) (I,C(I),I=1,M)
    7 FORMAT(///45X,'COEFICIENTII POLINOMULUI CARACTERISTIC'/45X,38(1H=)
     1///(55X,'C(',I2,') = ',E14.6))
      WRITE(*,8)
    8 FORMAT(///50X,31HMATRICEA DE STABILITATE HURWITZ/50X,31('=')///)
      WRITE(*,FORMTIP) ((H(I,J),J=1,N),I=1,N)
      GO TO 1
    9 STOP
      END
