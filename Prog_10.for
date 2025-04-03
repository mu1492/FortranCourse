C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.10, pag. 153
C
      REAL N
      READ(*,*) A,B,N
C   1 FORMAT(3F10.3)
      IF(N.NE.1) GO TO 2
      V=ALOG(B/A)
      GO TO 3
    2 V=(B**(N+1.)-A**(N+1.))/(N+1.)
    3 WRITE(*,4) A,B,N,V
    4 FORMAT(///35X,'A=',F10.3,5X,'B=',F10.3,5X,'N=',F10.3,5X,'V=',E14.7
     1///)
      STOP
      END
