C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.18, pag. 182
C
      INTEGER C(25,25)
      DATA C/625*0/
      READ (*,*) M
      C(1,M)=1
      C(2,M-1)=1
      M1=M-1
      DO 1 I=3,M
      C(I,M)=-C(I-2,M)
      DO 1 J=1,M1
    1 C(I,J)=2*C(I-1,J+1)-C(I-2,J)
      WRITE(*,3) ((C(I,J),J=1,M),I=1,M)
      STOP
C   2 FORMAT(I5)
    3 FORMAT(///45X,37HCOEFICIENTII POLINOAMELOR LUI CEBISEV/45X,37(1H=)
     1///(3X,18I7))
      END
