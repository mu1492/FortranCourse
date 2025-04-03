C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.38, pag. 276
C
      DIMENSION A(100),B(10)
      DATA N,EPS/10,1.E-10/
      READ(*,*) A,B
    1 FORMAT(10F6.4)
      WRITE(*,2) ((A(I+(J-1)* N),J=1,N),B(I),I=1,N)
    2 FORMAT(////30X,'MATRICEA SISTEMULUI',30X,
     1'TERMENII LIBERI'/30X,19(1H=),30X,15(1H=)///
     2(1X,10F8.4,F10.1))
      CALL RESOL(A,B,N,KOD,EPS)
      IF(KOD.EQ.1) GO TO 4
      WRITE(*,3) (I,B(I),I=1,N)
    3 FORMAT(////35X,'SOLUTIILE SISTEMULUI'/35X,20(1H=)/
     1///(30X,'S(',I2,') = ',E15.7))      
    4 STOP
      END
