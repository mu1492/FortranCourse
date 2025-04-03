C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.5, pag. 140
C
      DIMENSION A(2,2),B(2)
    4 READ(*,*,END=2) ((A(I,J),I=1,2),J=1,2),(B(I),I=1,2)
    1 FORMAT(6F10.5)
      D=A(1,1)*A(2,2)-A(1,2)*A(2,1)
      X1=(B(1)*A(2,2)-B(2)*A(1,2))/D
      X2=(A(1,1)*B(2)-A(2,1)*B(1))/D
      WRITE(*,3) ((A(I,J),J=1,2),B(I),I=1,2),X1,X2
    3 FORMAT(//2(35X,2F15.5,F20.5/)///(45X,E15.8/))
      GO TO 4
    2 STOP
      END
