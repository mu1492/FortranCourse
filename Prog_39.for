C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.39, pag. 279
C
      DIMENSION A( 25),B( 25),IL( 5),IC( 5),P( 25)
      DATA N,EPS/ 5,1.E-20/
    1 READ(*,*,END=9) A
C   2 FORMAT(5F10.5)
      WRITE(*,3) ((A(I+(J-1)*N),J=1,N),I=1,N)
    3 FORMAT(///57X,'MATRICEA INITIALA'/57X,17(1H=)
     1///(35X,5E12.5))
      CALL MRINV(A,B,N,KOD,DET,EPS,IL,IC)
      IF(KOD.NE.0) GO TO 7
      WRITE(*,4) DET
    4 FORMAT(///45X,'VALOARERA DETERMINANTULUI =',E15.8/
     145X,41(1H=)///)
      WRITE(*,5) ((B(I+(J-1)*N),J=1,N),I=1,N)
    5 FORMAT(57X,'MATRICEA INVERSA'/57X,16(1H=)///
     1(35X,5E12.5))
      CALL MRMUL(A,B,P,N,N,N)
      WRITE(*,6) ((P(I+(J-1)*N),J=1,N),I=1,N)
    6 FORMAT(///51X,'VERIFICARE    A INIT. * A INV'/
     151X,29(1H=)///(35X,5E12.5))
    7 PRINT 8
    8 FORMAT(///)
      GO TO 1
    9 STOP
      END
