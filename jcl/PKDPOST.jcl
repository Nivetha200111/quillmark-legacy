//* SYNTHETIC SAMPLE - written for the Diocle hackathon project.
//* Fictional company. Not derived from any real system.
//PKDPOST JOB (QMK0001),'PACKED POSTING',CLASS=A,
//             MSGCLASS=X,NOTIFY=&SYSUID
//*--------------------------------------------------------------
//* QUILLMARK TRUST & SAVINGS (FICTIONAL) - NIGHTLY BATCH
//*--------------------------------------------------------------
//STEP010  EXEC PGM=PKDPOST
//STEPLIB  DD DSN=QMK.BATCH.LOADLIB,DISP=SHR
//PKIN     DD DSN=QMK.ACCT.EXTRACT.PACKED,DISP=SHR
//PKOUT    DD DSN=QMK.POST.RESULT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(50,10),RLSE),
//            DCB=(RECFM=FB,LRECL=42,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
