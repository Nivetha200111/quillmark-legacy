//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//DAYCTRL JOB (QMK0001),'DAILY GL CONTROL',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//*--------------------------------------------------------------
//STEP010  EXEC PGM=DAYCTRL
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//DAYIN    DD DSN=QMK.ACCT.EXTRACT.DAILY,DISP=SHR
//CTLOUT   DD DSN=QMK.GL.CONTROL(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=35,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
