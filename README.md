# quillmark-legacy

> **SYNTHETIC.** Quillmark Trust & Savings is a fictional bank invented for the [Diocle](https://github.com/Nivetha200111/Diocle) hackathon project (Meta Global AI Developer Hackathon, October 2026). Every program, copybook, job, schema and record here was written for the project. Nothing is derived from any real system, employer, client or person.

A small legacy estate in the shape banks actually have: COBOL batch programs, shared copybooks, JCL, a DB2 schema, IMS segment layouts and extract files. Diocle imports this repository by its GitHub link, converts each program to Java, proves the Java behaves the same as the COBOL, and opens a pull request on [quillmark-modern](https://github.com/Nivetha200111/quillmark-modern) with the code and an equivalence certificate.

## Batch jobs

| Job | Program | Reads (DD) | Writes (DD) | What it does |
|---|---|---|---|---|
| `jcl/INTACCR.jcl` | `cobol/INTACCR.cbl` | ACCTIN | INTOUT | Daily interest accrual and maintenance fee |
| `jcl/TXNPOST.jcl` | `cobol/TXNPOST.cbl` | TXNIN | POSTOUT | Payment, fee and interest posting with an overdraft limit |
| `jcl/FEESCHD.jcl` | `cobol/FEESCHD.cbl` | FEEIN | CHGOUT | Monthly charges by product: waiver, excess transactions, overdraft interest, cap |
| `jcl/DAYCTRL.jcl` | `cobol/DAYCTRL.cbl` | DAYIN | CTLOUT | Daily interest with a running general-ledger control total |

Record layouts are in `copybooks/`. The programs contain the quirks real ones do: `COMPUTE ROUNDED` rounds half away from zero, `COMPUTE` without it truncates, fields silently lose high-order digits on overflow, and `PIC 9(7) COMP` counters DISPLAY as ten digits.

## Data estate

`data/` holds the Quillmark data model: a DB2 schema with its Postgres conversion, IMS segment copybooks and a seeded small dataset in CSV, fixed-width and IMS unload formats. See [`data/README.md`](data/README.md) and [`data/EDGE_CASES.md`](data/EDGE_CASES.md).

## Build a program yourself (GnuCOBOL 3.x)

```sh
cobc -x -std=ibm -I copybooks -o /tmp/intaccr cobol/INTACCR.cbl
DD_ACCTIN=accounts.dat DD_INTOUT=results.dat /tmp/intaccr
```
