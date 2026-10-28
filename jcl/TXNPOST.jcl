//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//TXNPOST JOB (QMK0001),'TRANSACTION POSTING',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//*--------------------------------------------------------------
//STEP010  EXEC PGM=TXNPOST
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//TXNIN    DD DSN=QMK.TXN.PENDING,DISP=SHR
//POSTOUT  DD DSN=QMK.TXN.POSTED(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=29,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
