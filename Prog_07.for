C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.7, pag. 148
C
      REAL M
      READ(*,*) F,M,RO,VO
C   1 FORMAT(4E12.6)
      WRITE(*,2) RO,VO
    2 FORMAT(//10X,'RO =',E13.6,'VO =',E13.6//)
      IF(RO*VO**2-2.*F*M) 3,5,7
    3 WRITE(*,4)
    4 FORMAT(20X,'TRAIECTORIE ELIPTICA'///)
      GO TO 9
    5 WRITE(*,6)
    6 FORMAT(20X,'TRAIECTORIE PARABOLICA'///)
      GO TO 9
    7 PRINT 8
    8 FORMAT(20X,'TRAIECTORIE HIPERBOLICA'///)
    9 STOP
      END
