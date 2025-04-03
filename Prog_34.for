C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.34, pag. 240
C
      DIMENSION A(25,25),B(25)
      READ(*,*) N,((A(I,J),J=1,N),B(I),I=1,N)
C   1 FORMAT(I4/(6E12.6))
      WRITE(*,2) ((A(I,J),J=1,N),B(I),I=1,N)
    2 FORMAT(/////(25X,4E15.8,E20.8/))
      CALL SCHIMB(A,B,N,II,1.E-15)
      IF(II.EQ.1) GO TO 4
      WRITE(*,3) ((A(I,J),J=1,N),B(I),I=1,N)
    3 FORMAT(////47X,'MATRICEA INVERSA',31X,'SOLUTII'/
     1//(25X,4E15.8,E20.8/))
      STOP
    4 WRITE(*,5)
    5 FORMAT(////47X,'SIST. DE ECUATII NU SE POATE REZOLVA'/
     146X,'APLICIND MET. SCHIMBURILOR CU ALEGEREA'/
     245X,'ELEMENTELOR PIVOT PE DIAGONALA PRINCIPALA'///)      
      STOP
      END
C
      SUBROUTINE SCHIMB(A,B,N,IND,EPS)
      DIMENSION A(25,25),B(25)
      DO 1 I=1,N
    1 B(I)=-B(I)
      DO 7 IP=1,N
      IF(ABS(A(IP,IP)).GT.EPS) GO TO 2
      IND=1
      RETURN
    2 PIV=A(IP,IP)
      DO 4 I=1,N
      IF(I.EQ.IP) GO TO 4
      DO 3 J=1,N
      IF(J.EQ.IP) GO TO 3
      A(I,J)=A(I,J)*PIV-A(I,IP)*A(IP,J)
    3 CONTINUE
      B(I)=B(I)*PIV-A(I,IP)*B(IP)
    4 CONTINUE
      DO 5 J=1,N
    5 A(IP,J)=-A(IP,J)
      B(IP)=-B(IP)
      A(IP,IP)=1.
      DO 6 I=1,N
      B(I)=B(I)/PIV
      DO 6 J=1,N
    6 A(I,J)=A(I,J)/PIV
    7 CONTINUE
      IND=0
      RETURN
      END
