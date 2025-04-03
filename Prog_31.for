C Copyright (c) 1978, Nicolae Ursu
C
C PROGRAMARE, INSTITUTUL POLITEHNIC CLUJ-NAPOCA, 1978
C Programul nr.31, pag. 223
C
      SUBROUTINE PM(X,Y,Z,M,N,L)
      DIMENSION X(10,10),Y(10,10),Z(10,10)
      DO 1 I=1,M
      DO 1 J=1,L
      Z(I,J)=0.
      DO 1 K=1,N
    1 Z(I,J)=Z(I,J)+X(I,K)*Y(K,J)
      RETURN 
      END
C
      DIMENSION A(10,10),B(10,10),C(10,10),D(10,10),E(10,10),F(10,10),
     1P(10,10) 
      READ(*,*) ((A(I,J),J=1,5),I=1,4),((B(I,J),J=1,3),I=1,5),((C(I,J)
     1,I=1,3),J=1,6),((D(I,J),I=1,6),J=1,4)
C   1 FORMAT(8E10.4)
      CALL PM(C,D,E,3,6,4)
      PRINT 5
      WRITE(*,2) ((D(I,J),J=1,4),I=1,6),((C(I,J),J=1,6),(E(I,J),J=1,4)
     1,I=1,3)
    2 FORMAT(6(80X,4E13.6/)// 3(1X,6E13.6,1X,4E13.6/))
      CALL PM(B,E,F,5,3,4)
      PRINT 5
      WRITE(*,3) ((B(I,J),J=1,3),(F(I,J),J=1,4),I=1,5)
    3 FORMAT(40X,3E13.6,1X,4E13.6)
      CALL PM(A,F,P,4,5,4)
      PRINT 5
      WRITE(*,4) ((A(I,J),J=1,5),(P(I,J),J=1,4),I=1,4)
    4 FORMAT(14X,5E13.6,1X,4E13.6)
      PRINT 5
    5 FORMAT(/)       
      STOP
      END
