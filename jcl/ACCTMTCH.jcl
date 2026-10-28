//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//ACCTMTCH JOB (QMK0001),'ACCOUNT MATCH',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//* STEP 2 OF THE DAILY CYCLE: APPLY SORTED TRANSACTIONS
//*--------------------------------------------------------------
//STEP020  EXEC PGM=ACCTMTCH
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//MSTIN    DD DSN=QMK.ACCT.MASTER(0),DISP=SHR
//TXNIN    DD DSN=QMK.TXN.SORTED,DISP=SHR
//NEWMST   DD DSN=QMK.ACCT.MASTER(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=28,BLKSIZE=0)
//EXCOUT   DD DSN=QMK.TXN.EXCEPTIONS(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=30,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
