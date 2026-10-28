//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//INTACCR JOB (QMK0001),'DAILY INTEREST ACCRUAL',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//*--------------------------------------------------------------
//STEP010  EXEC PGM=INTACCR
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//ACCTIN   DD DSN=QMK.ACCT.EXTRACT.DAILY,DISP=SHR
//INTOUT   DD DSN=QMK.INT.RESULT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=42,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
