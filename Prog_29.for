C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.29, pag. 214
C
      FUNCTION POL(C,NC,X0)
      DIMENSION C(51)
      POL=0.
      DO 1 I=1,NC
    1 POL=POL*X0+C(I)
      RETURN
      END
C      
      DIMENSION A(51),B(51)
    1 READ(*,*,END=8) XI,XF,H,EPS,NA,NB,(A(I),I=1,NA),(B(I),I=1,NB)
C   2 FORMAT(4E12.6,2I5/(8E10.4))
      N=(XF-XI)/H+1
      WRITE(*,3) (I,A(I),I=1,NA),(I,B(I),I=1,NB)
    3 FORMAT(/////45X,'VALORILE COEFICIENTILOR POLINOAMELOR'/45X,36(1H=)
     1///(50X,I2,E25.6/))
      PRINT 4
    4 FORMAT(///45X,'NR.',3X,'ABSCISA X',3X,'VALOAREA FUNCTIEI'/45X,3(1H
     1=),3X,9(1H=),3X,17(1H=)//) 
      DO 7 I=1,N
      X=XI+(I-1)*H
      WRITE(*,5,ADVANCE="NO") I,X
    5 FORMAT(43X,I6,F12.3)
      PS=POL(A,NA,X)
      PJ=POL(B,NB,X)
      IF(ABS(PJ).LT.EPS) GO TO 7
      Y=PS/PJ
      WRITE(*,6) Y
    6 FORMAT(7X,E17.9)
    7 CONTINUE      
      GO TO 1
    8 STOP
      END
