//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//FEESCHD JOB (QMK0001),'MONTHLY FEE SCHEDULE',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//*--------------------------------------------------------------
//STEP010  EXEC PGM=FEESCHD
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//FEEIN    DD DSN=QMK.ACCT.MONTHLY,DISP=SHR
//CHGOUT   DD DSN=QMK.FEE.CHARGES(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=38,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
