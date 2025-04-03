C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.24, pag. 201
C
      REAL L
      DIMENSION X(100),Y(100)
    1 READ(*,*,END=9) A,B,H,N,(X(I),Y(I),I=1,N)
C   2 FORMAT(3F15.5,I5/(8E10.4))
      NP=(B-A)/H+1
      WRITE(*,3) (I,X(I),Y(I),I=1,N)
    3 FORMAT(///55X,'COORDONATELE PUNCTELOR'/55X,22(1H=)//57X,1HX,15X,
     11HY//(48X,I3,2E16.6))
      WRITE(*,4)
    4 FORMAT(////50X,'POLINOMUL DE INTERPOLARE LAGRANGE'/50X,33(1H=)//
     143X,'NR. PUNCT',7X,7HABSCISA,12X,8HORDONATA//)
      DO 7 I=1,NP
      XC=A+(I-1)*H
      L=0.
      DO 6 J=1,N
      P=Y(J)
      DO 5 K=1,N
      IF(K.EQ.J) GO TO 5
      P=P*(XC-X(K))/(X(J)-X(K))
    5 CONTINUE
    6 L=L+P
    7 WRITE(*,8) I,XC,L
    8 FORMAT(43X,I6,2E20.8)
      GO TO 1
    9 STOP
      END
