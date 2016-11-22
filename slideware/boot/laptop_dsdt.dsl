/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140214-64 [Mar 29 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of dsdt.dat, Fri Nov 18 09:10:43 2016
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00008F59 (36697)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x6D
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("dsdt.aml", "DSDT", 1, "ACRSYS", "ACRPRDCT", 0x00000000)
{
    /*
     * iASL Warning: There were 5 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     */
    External (_SB_.PCI0.IEIT.EITV, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (_SB_.PCI0.PEG0.PEGP.AFN0, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (HDOS, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)
    External (HNOT, MethodObj)    // Warning: Unresolved Method, guessing 1 arguments (may be incorrect, see warning above)
    External (TNOT, MethodObj)    // Warning: Unresolved Method, guessing 0 arguments (may be incorrect, see warning above)

    External (_PR_.CPU0._PPC)
    External (_SB_.PCI0.PEG0.PEGP.DD01)
    External (_SB_.PCI0.PEG0.PEGP.DVID)
    External (CFGD)
    External (HWID, IntObj)
    External (PDC0)
    External (PDC1)
    External (PDC2)
    External (PDC3)
    External (PDC4)
    External (PDC5)
    External (PDC6)
    External (PDC7)

    Name (ECDY, Zero)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (SMBS, 0x0580)
    Name (SMBL, 0x20)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BSR, 0x14)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (BLLS, 0x25)
    Name (BLLP, 0x26)
    Name (BLLD, 0x27)
    Name (BHBE, 0x30)
    Name (BHBC, 0x31)
    Name (BHBN, 0x32)
    Name (BHBM, 0x33)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    OperationRegion (GNVS, SystemMemory, 0x96FBCE18, 0x000001BB)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        Offset (0xED), 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        DSEL,   8, 
        ESEL,   8, 
        PSEL,   8, 
        PWEN,   8, 
        PRST,   8, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        GBAS,   16, 
        Offset (0x19D), 
        ALFP,   8, 
        IMON,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        S3DS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        NVSZ,   32, 
        OPTF,   8
    }

    OperationRegion (OGNS, SystemMemory, 0x96FBBD98, 0x00000141)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8, 
        PRMW,   8, 
        DI00,   560, 
        LMST,   8, 
        EPMS,   8, 
        ODPM,   8, 
        MTNM,   16, 
        MTID,   8, 
        WMIB,   320, 
        CTHT,   16, 
        BTNU,   480, 
        FNBN,   960, 
        PSCT,   8, 
        D2DF,   8, 
        DPMD,   8, 
        TPAD,   8, 
        PANT,   8, 
        VGAT,   8, 
        CCDT,   8, 
        CUTY,   8, 
        D3GE,   8, 
        PJID,   8
    }

    OperationRegion (SMIO, SystemIO, 0xB2, 0x02)
    Field (SMIO, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    Method (OSMI, 1, NotSerialized)
    {
        Store (Arg0, APMD)
        Store (0xB2, APMC)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
    }

    Mutex (SMIX, 0x00)
    Method (SMID, 2, NotSerialized)
    {
        Acquire (SMIX, 0xFFFF)
        Store (Arg1, APMD)
        Store (Arg0, APMC)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Stall (0xFF)
        Release (SMIX)
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    Method (CMSW, 2, NotSerialized)
    {
        Store (Arg0, CMSI)
        Store (Arg1, CMSD)
    }

    Method (CMSR, 1, NotSerialized)
    {
        Store (Arg0, CMSI)
        Return (CMSD)
    }

    Method (WMIS, 2, NotSerialized)
    {
        Store (Arg0, MTID)
        Store (Arg1, WMIB)
        Store (0xD1, SSMP)
        Return (WMIB)
    }

    OperationRegion (COMP, SystemMemory, 0x96FBEF98, 0x00000014)
    Field (COMP, AnyAcc, Lock, Preserve)
    {
        IDMN,   16, 
        IDPC,   16, 
        BDID,   8, 
        CPFB,   8, 
        PBTI,   8, 
        BRLV,   8, 
        CMPS,   8, 
        CG09,   8, 
        CG10,   8, 
        CG11,   8, 
        CG12,   8, 
        CG13,   8, 
        CG14,   8, 
        CG15,   8, 
        CG16,   8, 
        CG17,   8, 
        CG18,   8, 
        CG19,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {1,3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (PR00, Package (0x24)
            {
                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }
            })
            Name (AR00, Package (0x24)
            {
                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                Store (Subtract (ShiftRight (PELN, 0x14), 0x02), PBMX)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                Store (Subtract (ShiftRight (PELN, 0x14), One), PBLN)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, Buffer (0x10)
            {
                /* 0000 */   0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40,
                /* 0008 */   0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, One))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
                }

                Name (PR01, Package (0x0C)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR01, Package (0x0C)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH)
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x006C,             // Range Minimum
                            0x006C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0xFF2C,             // Range Minimum
                            0xFF2C,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0)
                    }
                }

                Method (ECOK, 0, NotSerialized)
                {
                    If (LEqual (^EC0.OKEC, One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Name (OKEC, Zero)
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    OperationRegion (HDCS, PCI_Config, Zero, One)
                    Field (HDCS, ByteAcc, NoLock, Preserve)
                    {
                        OBV,    8
                    }

                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, OKEC)
                            Store (Arg1, ECOK)
                            If (LIDF)
                            {
                                ^^^GFX0.GLID (Zero)
                            }
                            Else
                            {
                                ^^^GFX0.GLID (One)
                            }

                            ^^^GFX0.GLID (One)
                        }
                    }

                    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                        CDPR,   1, 
                        LCDS,   1, 
                        Offset (0x01), 
                        HTBN,   8, 
                        HTBT,   8, 
                        LMEN,   1, 
                        Offset (0x04), 
                        ADAP,   2, 
                        Offset (0x05), 
                        CORE,   2, 
                        Offset (0x06), 
                        Offset (0x08), 
                        Offset (0x40), 
                        Offset (0x5A), 
                        Offset (0x5B), 
                        Offset (0x5C), 
                        Offset (0x5D), 
                        ENIB,   16, 
                        ENDD,   8, 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   24, 
                        Offset (0x90), 
                        BMFN,   72, 
                        BATD,   56, 
                        DKSP,   1, 
                        DKIN,   1, 
                        DKID,   1, 
                        DKOK,   1, 
                        DKPW,   1, 
                        Offset (0xA1), 
                            ,   1, 
                        VIDO,   1, 
                        TOUP,   1, 
                        Offset (0xA2), 
                        ODTS,   8, 
                        OSTY,   3, 
                            ,   4, 
                        ADPT,   1, 
                        PWAK,   1, 
                        MWAK,   1, 
                        LWAK,   1, 
                        RWAK,   1, 
                        WWAK,   1, 
                        UWAK,   1, 
                        KWAK,   1, 
                        TWAK,   1, 
                        CCAC,   1, 
                        AOAC,   1, 
                        BLAC,   1, 
                        PSRC,   1, 
                        BOAC,   1, 
                        LCAC,   1, 
                        AAAC,   1, 
                        ACAC,   1, 
                        Offset (0xA7), 
                        OSTT,   8, 
                        OSST,   8, 
                        THLT,   8, 
                        TCNL,   8, 
                        MODE,   1, 
                            ,   2, 
                        INIT,   1, 
                        FAN1,   1, 
                        FAN2,   1, 
                        FANT,   1, 
                        SKNM,   1, 
                        SDTM,   8, 
                        FSSN,   4, 
                        FANU,   4, 
                        PCVL,   4, 
                            ,   2, 
                        SWTO,   1, 
                        TTHR,   1, 
                        TTHM,   1, 
                        THTL,   1, 
                        Offset (0xB0), 
                        CTMP,   8, 
                        CTML,   8, 
                        SKTA,   8, 
                        SKTB,   8, 
                        SKTC,   8, 
                        Offset (0xB6), 
                        NTMP,   8, 
                        S4ST,   1, 
                        SKEY,   1, 
                        DIGM,   1, 
                        CDLE,   1, 
                        Offset (0xB8), 
                            ,   1, 
                        LIDF,   1, 
                        PMEE,   1, 
                        PWBE,   1, 
                        RNGE,   1, 
                        BTWE,   1, 
                        Offset (0xB9), 
                        BRTS,   8, 
                        CNTS,   8, 
                        WLAT,   1, 
                        BTAT,   1, 
                        WLEX,   1, 
                        BTEX,   1, 
                        KLSW,   1, 
                        WLOK,   1, 
                        AT3G,   1, 
                        EX3G,   1, 
                        PJID,   8, 
                        CPUN,   8, 
                        BOL0,   1, 
                        BOL1,   1, 
                            ,   2, 
                        BCC0,   1, 
                        BCC1,   1, 
                        Offset (0xBF), 
                        BPU0,   1, 
                        BPU1,   1, 
                            ,   2, 
                        BOS0,   1, 
                        BOS1,   1, 
                        Offset (0xC0), 
                        BTY0,   1, 
                        BAM0,   1, 
                        BAL0,   1, 
                            ,   1, 
                        BMF0,   3, 
                        Offset (0xC1), 
                        BST0,   8, 
                        BRC0,   16, 
                        BSN0,   16, 
                        BPV0,   16, 
                        BDV0,   16, 
                        BDC0,   16, 
                        BFC0,   16, 
                        GAU0,   8, 
                        CYC0,   8, 
                        BPC0,   16, 
                        BAC0,   16, 
                        BTW0,   8, 
                        BVL0,   8, 
                        BTM0,   8, 
                        BAT0,   8, 
                        BCG0,   16, 
                        BCT0,   8, 
                        BCI0,   8, 
                        BCM0,   8, 
                        BOT0,   8, 
                        BSSB,   16, 
                        BOV0,   8, 
                        BCF0,   8, 
                        BAD0,   8, 
                        BCV1,   16, 
                        BCV2,   16, 
                        BCV3,   16, 
                        BCV4,   16, 
                        Offset (0xF4), 
                        BMD0,   16, 
                        BACV,   16, 
                        BDN0,   8
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LMST)
                        {
                            Store (One, Index (^^^WMID.FEBC, Zero))
                            Store (HTBN, Index (^^^WMID.FEBC, One))
                            Notify (WMID, 0xBC)
                        }

                        If (LGreaterEqual (OSYS, 0x07D6))
                        {
                            If (LEqual (OBV, 0xFF))
                            {
                                Notify (^^^PEG0.PEGP.DD01, 0x87)
                            }
                            Else
                            {
                                Notify (^^^GFX0.DD03, 0x87)
                            }
                        }
                        Else
                        {
                            If (LNotEqual (OBV, 0xFF))
                            {
                                Store (BRTS, Local1)
                                Add (Local1, One, Local1)
                                ^^^GFX0.AINT (One, Multiply (Local1, 0x0A))
                            }
                            Else
                            {
                                Notify (^^^PEG0.PEGP.DD01, 0x87)
                            }
                        }

                        If (LMST)
                        {
                            Store (BRTS, Index (^^^WMID.FEBC, One))
                            Store (0x04, Index (^^^WMID.FEBC, Zero))
                            Notify (WMID, 0xBC)
                        }
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LMST)
                        {
                            Store (One, Index (^^^WMID.FEBC, Zero))
                            Store (HTBN, Index (^^^WMID.FEBC, One))
                            Notify (WMID, 0xBC)
                        }

                        If (LGreaterEqual (OSYS, 0x07D6))
                        {
                            If (LEqual (OBV, 0xFF))
                            {
                                Notify (^^^PEG0.PEGP.DD01, 0x86)
                            }
                            Else
                            {
                                Notify (^^^GFX0.DD03, 0x86)
                            }
                        }
                        Else
                        {
                            If (LNotEqual (OBV, 0xFF))
                            {
                                Store (BRTS, Local1)
                                Add (Local1, One, Local1)
                                ^^^GFX0.AINT (One, Multiply (Local1, 0x0A))
                            }
                            Else
                            {
                                Notify (^^^PEG0.PEGP.DD01, 0x86)
                            }
                        }

                        If (LMST)
                        {
                            Store (BRTS, Index (^^^WMID.FEBC, One))
                            Store (0x04, Index (^^^WMID.FEBC, Zero))
                            Notify (WMID, 0xBC)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x1C, P80H)
                        If (LOr (LEqual (DPMD, Zero), LEqual (DPMD, 0x04)))
                        {
                            If (LOr (^^^GFX0.CPDS (0x80000100), ^^^GFX0.CPDS (0x80007330)))
                            {
                                ^^^GFX0.GHDS (One)
                            }
                        }
                        Else
                        {
                            If (LAnd (LEqual (DPMD, One), LEqual (^^^PEG0.PEGP.DVID, 0x1002)))
                            {
                                ^^^PEG0.PEGP.AFN0 ()
                            }
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        PCLK ()
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (^^BAT0, 0x80)
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x03E8)
                        Notify (^^BAT0, 0x81)
                        Sleep (0x03E8)
                        Notify (^^BAT0, 0x80)
                        Store (0x25, P80H)
                    }

                    Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (CMSR (0x62))
                        {
                            Store (0x37, P80H)
                            Notify (ACAD, 0x80)
                            Sleep (0x03F0)
                            Notify (^^BAT0, 0x80)
                            Store (One, PWRS)
                            If (LNotEqual (DPMD, Zero))
                            {
                                Store (Zero, \_PR.CPU0._PPC)
                                PSTA ()
                            }
                        }
                    }

                    Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (CMSR (0x62))
                        {
                            Store (0x38, P80H)
                            Notify (ACAD, 0x80)
                            Sleep (0x03F0)
                            Notify (^^BAT0, 0x80)
                            Store (Zero, PWRS)
                            If (LNotEqual (DPMD, Zero))
                            {
                                Store (One, \_PR.CPU0._PPC)
                                PSTA ()
                            }
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (WLEX)
                        {
                            Store (WLAT, LANE)
                        }

                        If (BTEX)
                        {
                            Store (Not (BTAT), BTPD)
                        }

                        If (EX3G)
                        {
                            Store (AT3G, WANE)
                        }
                    }

                    Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LMST)
                        {
                            Store (One, Index (^^^WMID.FEBC, Zero))
                            Store (HTBN, Index (^^^WMID.FEBC, One))
                            Notify (WMID, 0xBC)
                        }
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LMST)
                        {
                            Store (0x02, Index (^^^WMID.FEBC, Zero))
                            Store (HTBN, Index (^^^WMID.FEBC, One))
                            Notify (WMID, 0xBC)
                        }
                    }

                    Mutex (FAMX, 0x00)
                    Method (FANG, 1, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        Store (Arg0, ENIB)
                        Store (ENDD, Local0)
                        Release (FAMX)
                        Return (Local0)
                    }

                    Method (FANW, 2, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        Store (Arg0, ENIB)
                        Store (Arg1, ENDD)
                        Release (FAMX)
                        Return (Arg1)
                    }

                    Method (TUVR, 1, NotSerialized)
                    {
                        Return (0x03)
                    }

                    Method (THRO, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (TTHR)
                        }
                        Else
                        {
                            If (LEqual (Arg0, One))
                            {
                                Return (PCVL)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x02))
                                {
                                    Return (TTHR)
                                }
                                Else
                                {
                                    Return (0xFF)
                                }
                            }
                        }
                    }

                    Method (CMFC, 4, Serialized)
                    {
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (RTVL, Package (0x04)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        While (One)
                        {
                            Store (ToInteger (Arg0), _T_0)
                            If (LEqual (_T_0, 0xFE00))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        While (One)
                                        {
                                            Store (ToInteger (Arg2), _T_2)
                                            If (LEqual (_T_2, Zero))
                                            {
                                                If (LNotEqual (ToInteger (Arg3), Zero))
                                                {
                                                    Store (0x8300, Index (RTVL, Zero))
                                                }
                                                Else
                                                {
                                                    Store (Zero, Index (RTVL, Zero))
                                                    Store (IDMN, Index (RTVL, One))
                                                    Store (IDPC, Index (RTVL, 0x02))
                                                }
                                            }
                                            Else
                                            {
                                                Store (0x8300, Index (RTVL, Zero))
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        Store (0x8000, Index (RTVL, Zero))
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                Store (0x8000, Index (RTVL, Zero))
                            }

                            Break
                        }

                        Return (RTVL)
                    }

                    Method (PCLK, 0, NotSerialized)
                    {
                        Store (PCVL, Local0)
                        Store (Local0, P80H)
                        Sleep (0x01F4)
                        Store (CMPS, Local1)
                        If (LLessEqual (Local0, Local1))
                        {
                            Store (Local0, \_PR.CPU0._PPC)
                        }
                        Else
                        {
                            Store (Local1, \_PR.CPU0._PPC)
                        }

                        PNOT ()
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                }

                Device (MSE0)
                {
                    Name (_HID, EisaId ("ETD0500"))  // _HID: Hardware ID
                    Name (_CID, Package (0x02)  // _CID: Compatible ID
                    {
                        EisaId ("ETD0500"), 
                        EisaId ("PNP0F13")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (And (TPAD, One), One))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (MSS0)
                {
                    Name (_HID, EisaId ("SYN1B16"))  // _HID: Hardware ID
                    Name (_CID, Package (0x03)  // _CID: Compatible ID
                    {
                        EisaId ("SYN1B00"), 
                        EisaId ("SYN0002"), 
                        EisaId ("PNP0F13")
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (And (TPAD, One), One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (ACAD)
                {
                    Name (_HID, "ACPI0003")  // _HID: Hardware ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        If (LAnd (ECOK (), LEqual (ECDY, Zero)))
                        {
                            Sleep (0x64)
                            Store (^^EC0.ADPT, Local0)
                            Sleep (0x64)
                            Return (Local0)
                        }

                        Sleep (0x64)
                        Return (One)
                    }
                }

                Device (BAT0)
                {
                    Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (PBIF, Package (0x0D)
                    {
                        One, 
                        0x0FA0, 
                        0x0FA0, 
                        One, 
                        0x39D0, 
                        0x0190, 
                        0x78, 
                        0x0108, 
                        0x0EC4, 
                        "Li_Ion_4000mA ", 
                        "1234", 
                        "Lion", 
                        "Acer "
                    })
                    Name (PBST, Package (0x04)
                    {
                        One, 
                        Ones, 
                        Ones, 
                        0x39D0
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ECOK ())
                        {
                            Sleep (0x14)
                            If (^^EC0.BOL0)
                            {
                                Sleep (0x14)
                                Return (0x1F)
                            }
                            Else
                            {
                                Sleep (0x14)
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            Sleep (0x14)
                            Return (0x1F)
                        }
                    }

                    Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                    {
                        If (ECOK ())
                        {
                            Sleep (0x14)
                            Store (^^EC0.BDC0, Index (PBIF, One))
                            Sleep (0x14)
                            Store (^^EC0.BFC0, Index (PBIF, 0x02))
                            Sleep (0x14)
                            Store (^^EC0.BDV0, Index (PBIF, 0x04))
                            Sleep (0x14)
                            Store (^^EC0.BDC0, Local2)
                            Sleep (0x14)
                            Divide (Local2, 0x64, Local6, Local2)
                            Multiply (Local2, 0x05, Local3)
                            Store (Local3, Index (PBIF, 0x05))
                            Multiply (Local2, 0x03, Local4)
                            Store (Local4, Index (PBIF, 0x06))
                            If (LGreaterEqual (OSYS, 0x07D6))
                            {
                                ToHexString (^^EC0.BSN0, Local2)
                                Sleep (0x14)
                                Mid (Local2, 0x02, 0x04, Local3)
                                Store (Local3, Index (PBIF, 0x0A))
                            }

                            Store (^^EC0.BMF0, Local1)
                            Sleep (0x14)
                            If (LEqual (Local1, One))
                            {
                                Store ("SANYO ", Index (PBIF, 0x0C))
                            }
                            Else
                            {
                                If (LEqual (Local1, 0x02))
                                {
                                    Store ("SONY ", Index (PBIF, 0x0C))
                                }
                                Else
                                {
                                    If (LEqual (Local1, 0x04))
                                    {
                                        Store ("PANASONIC ", Index (PBIF, 0x0C))
                                    }
                                    Else
                                    {
                                        If (LEqual (Local1, 0x03))
                                        {
                                            Store ("Simplo ", Index (PBIF, 0x0C))
                                        }
                                        Else
                                        {
                                            If (LEqual (Local1, 0x05))
                                            {
                                                Store ("SDI ", Index (PBIF, 0x0C))
                                            }
                                            Else
                                            {
                                                If (LEqual (Local1, 0x06))
                                                {
                                                    Store ("LG ", Index (PBIF, 0x0C))
                                                }
                                                Else
                                                {
                                                    Store ("COMPAL ", Index (PBIF, 0x0C))
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Return (PBIF)
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        If (ECOK ())
                        {
                            Sleep (0x14)
                            Store (^^EC0.BST0, Local0)
                            Sleep (0x14)
                            And (Local0, 0x07, Local0)
                            Store (Local0, Index (PBST, Zero))
                            Store (^^EC0.GAU0, Local2)
                            Sleep (0x14)
                            Store (^^EC0.BPV0, Local3)
                            Sleep (0x14)
                            Store (^^EC0.BFC0, Local1)
                            Sleep (0x14)
                            If (Local2)
                            {
                                Multiply (Local2, Local1, Local2)
                                Divide (Local2, 0x64, Local6, Local2)
                                If (Local6)
                                {
                                    Increment (Local2)
                                }
                            }

                            Store (^^EC0.BAC0, Local1)
                            Sleep (0x14)
                            If (And (Local1, 0x8000, Local1))
                            {
                                Store (^^EC0.BAC0, Local1)
                                Sleep (0x14)
                                Subtract (0xFFFF, Local1, Local1)
                            }
                            Else
                            {
                                Store (Zero, Local1)
                            }

                            Store (Local1, Index (PBST, One))
                            Store (Local2, Index (PBST, 0x02))
                            Store (Local3, Index (PBST, 0x03))
                        }

                        Return (PBST)
                    }
                }

                Device (PWRB)
                {
                    Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                }

                Device (LID0)
                {
                    Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                    Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                    {
                        Return (LPDL)
                    }
                }

                Device (SLPB)
                {
                    Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
                }
            }

            Device (WMID)
            {
                Name (_HID, "PNP0C14")  // _HID: Hardware ID
                Name (_UID, "APGe")  // _UID: Unique ID
                Name (FEBC, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (AAST, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Name (AAGT, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (BLST, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Name (BLGT, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (BEGT, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Method (GCMS, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (^^LPCB.EC0.WLAT)
                    {
                        Or (Local0, 0x81, Local0)
                    }

                    If (^^LPCB.EC0.BTAT)
                    {
                        Or (Local0, 0x0800, Local0)
                    }

                    If (^^LPCB.EC0.AT3G)
                    {
                        Or (Local0, 0x40, Local0)
                    }

                    Store (Local0, Arg0)
                    Return (Zero)
                }

                Method (GOTS, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (LEqual (^^LPCB.EC0.TOUP, One))
                    {
                        Or (Local0, 0x02, Local0)
                    }

                    Store (Local0, Arg0)
                    Return (Zero)
                }

                Name (_WDG, Buffer (0x64)
                {
                    /* 0000 */   0x5E, 0xA1, 0x6A, 0x67, 0x47, 0x6A, 0x9F, 0x4D,
                    /* 0008 */   0xA2, 0xCC, 0x1E, 0x6D, 0x18, 0xD1, 0x40, 0x26,
                    /* 0010 */   0xBC, 0x00, 0x01, 0x08, 0xEA, 0x69, 0xEF, 0x61,
                    /* 0018 */   0x5C, 0x86, 0xC3, 0x4B, 0xA5, 0x02, 0xA0, 0xDE,
                    /* 0020 */   0xBA, 0x0C, 0xB5, 0x31, 0x41, 0x41, 0x01, 0x02,
                    /* 0028 */   0xDA, 0xBB, 0x1D, 0xFE, 0x14, 0x30, 0x56, 0x48,
                    /* 0030 */   0x87, 0x0C, 0x5B, 0x3A, 0x74, 0x4B, 0xF3, 0x41,
                    /* 0038 */   0x42, 0x4C, 0x01, 0x02, 0xC5, 0x2E, 0x77, 0x79,
                    /* 0040 */   0xB1, 0x04, 0xFD, 0x4B, 0x84, 0x3C, 0x61, 0xE7,
                    /* 0048 */   0xF7, 0x7B, 0x6C, 0xC9, 0x42, 0x45, 0x01, 0x02,
                    /* 0050 */   0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                    /* 0058 */   0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                    /* 0060 */   0x41, 0x42, 0x01, 0x00
                })
                Name (WQAB, Buffer (0x1038)
                {
                    /* 0000 */   0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                    /* 0008 */   0x28, 0x10, 0x00, 0x00, 0xD0, 0x65, 0x00, 0x00,
                    /* 0010 */   0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                    /* 0018 */   0x28, 0xC3, 0xB0, 0x00, 0x01, 0x06, 0x18, 0x42,
                    /* 0020 */   0x10, 0x0D, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,
                    /* 0028 */   0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,
                    /* 0030 */   0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,
                    /* 0038 */   0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,
                    /* 0040 */   0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,
                    /* 0048 */   0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,
                    /* 0050 */   0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,
                    /* 0058 */   0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,
                    /* 0060 */   0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,
                    /* 0068 */   0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0xCA, 0x05,
                    /* 0070 */   0xF8, 0x46, 0x10, 0x78, 0xB9, 0x02, 0x24, 0x4F,
                    /* 0078 */   0x40, 0x9A, 0x05, 0xEC, 0xAC, 0x75, 0x01, 0xB2,
                    /* 0080 */   0x87, 0x40, 0xA5, 0x0E, 0x01, 0x25, 0x67, 0x08,
                    /* 0088 */   0xA8, 0x01, 0xB4, 0x3A, 0x01, 0xE1, 0x57, 0x3A,
                    /* 0090 */   0x25, 0x24, 0x41, 0x38, 0x63, 0x15, 0x8F, 0xAF,
                    /* 0098 */   0x59, 0x34, 0x3D, 0x27, 0x39, 0xC7, 0x90, 0xE3,
                    /* 00A0 */   0x71, 0xA1, 0x07, 0xC1, 0xA3, 0x4A, 0x00, 0x61,
                    /* 00A8 */   0xF2, 0x87, 0xAC, 0x70, 0x30, 0xA8, 0x71, 0x7B,
                    /* 00B0 */   0x2C, 0x76, 0x31, 0x6A, 0xD4, 0x48, 0xD9, 0x80,
                    /* 00B8 */   0x0C, 0x51, 0x12, 0x1C, 0x6A, 0xD4, 0x96, 0x28,
                    /* 00C0 */   0xC0, 0xFC, 0x38, 0x34, 0xBB, 0xB6, 0xC7, 0x42,
                    /* 00C8 */   0x20, 0x99, 0xB4, 0xA1, 0xA0, 0xA4, 0x40, 0x68,
                    /* 00D0 */   0x6C, 0x67, 0xEA, 0x19, 0x45, 0x3C, 0x52, 0xC3,
                    /* 00D8 */   0x24, 0xF0, 0x28, 0x22, 0x1B, 0x8D, 0x43, 0x63,
                    /* 00E0 */   0x87, 0xE1, 0x61, 0x06, 0x3B, 0x88, 0xC3, 0x38,
                    /* 00E8 */   0xE6, 0xC8, 0x09, 0x3C, 0xA1, 0x23, 0x3D, 0xF2,
                    /* 00F0 */   0xC2, 0xE6, 0x29, 0xD4, 0x18, 0xCD, 0x41, 0x11,
                    /* 00F8 */   0xC1, 0x47, 0x01, 0xF4, 0x98, 0xC2, 0x1E, 0x6D,
                    /* 0100 */   0xEC, 0xF3, 0xB5, 0xF0, 0xC1, 0x0A, 0xE3, 0x08,
                    /* 0108 */   0x8E, 0x2B, 0xC1, 0xFF, 0xFF, 0xC4, 0x0F, 0xA5,
                    /* 0110 */   0x47, 0x38, 0x09, 0x9A, 0x22, 0x05, 0x39, 0x6A,
                    /* 0118 */   0x8C, 0x2C, 0x1C, 0x69, 0x9D, 0x15, 0x99, 0xBB,
                    /* 0120 */   0x81, 0x0D, 0x54, 0x99, 0x00, 0x5D, 0x10, 0x22,
                    /* 0128 */   0x38, 0x9E, 0x03, 0xC1, 0xC8, 0x80, 0x90, 0xE7,
                    /* 0130 */   0x73, 0x81, 0x46, 0x68, 0x02, 0xBB, 0x17, 0xA0,
                    /* 0138 */   0x4D, 0x80, 0x37, 0x08, 0x8D, 0x23, 0x42, 0x63,
                    /* 0140 */   0x02, 0xAC, 0x4D, 0x42, 0xB6, 0x70, 0xC8, 0xBC,
                    /* 0148 */   0x62, 0x45, 0x89, 0x71, 0x4C, 0x47, 0x56, 0x23,
                    /* 0150 */   0x8A, 0x90, 0x4E, 0xE1, 0xCD, 0x20, 0x42, 0x94,
                    /* 0158 */   0x98, 0x21, 0x23, 0x06, 0x0B, 0xF2, 0x18, 0x11,
                    /* 0160 */   0xC3, 0x43, 0x34, 0x5C, 0xA4, 0xF6, 0x07, 0x41,
                    /* 0168 */   0xE4, 0x3D, 0x26, 0x74, 0x1E, 0x70, 0xA4, 0xD1,
                    /* 0170 */   0xA0, 0x0E, 0x0B, 0x3E, 0x13, 0x78, 0x72, 0xCF,
                    /* 0178 */   0x08, 0x1E, 0xDB, 0x39, 0x07, 0x39, 0xCF, 0x63,
                    /* 0180 */   0x7B, 0x84, 0x78, 0x18, 0xF0, 0xB0, 0xD9, 0x2D,
                    /* 0188 */   0xC1, 0x67, 0x0B, 0x9F, 0x0E, 0xF0, 0xAE, 0x01,
                    /* 0190 */   0x75, 0x2D, 0x78, 0x28, 0x60, 0x93, 0x0C, 0x87,
                    /* 0198 */   0x19, 0xA2, 0xC7, 0x1A, 0xEE, 0x04, 0x0E, 0x91,
                    /* 01A0 */   0x01, 0x7A, 0x48, 0xCF, 0x03, 0xD8, 0xB9, 0x9D,
                    /* 01A8 */   0xCC, 0xA1, 0xBF, 0x4F, 0x34, 0x7B, 0x93, 0x20,
                    /* 01B0 */   0x04, 0xC7, 0xE3, 0x4B, 0x04, 0x9B, 0xF0, 0xA3,
                    /* 01B8 */   0x03, 0x19, 0x04, 0x6A, 0x64, 0x86, 0xF6, 0x50,
                    /* 01C0 */   0x4F, 0xEB, 0x65, 0xC0, 0xC7, 0x00, 0x13, 0x58,
                    /* 01C8 */   0x2C, 0x84, 0x14, 0x40, 0x68, 0x3C, 0xE0, 0x57,
                    /* 01D0 */   0x7C, 0xF0, 0x20, 0x37, 0x06, 0xCF, 0xD7, 0x67,
                    /* 01D8 */   0x08, 0x9D, 0x2C, 0x64, 0x64, 0x15, 0x1E, 0x0F,
                    /* 01E0 */   0x3D, 0x2E, 0xF8, 0x8E, 0x80, 0xB9, 0x30, 0x78,
                    /* 01E8 */   0xE8, 0x1E, 0xD2, 0xF3, 0x81, 0x25, 0x1D, 0x32,
                    /* 01F0 */   0xE8, 0xFF, 0x5F, 0xD4, 0xC8, 0xE9, 0xA1, 0x82,
                    /* 01F8 */   0x9F, 0x27, 0x18, 0x6C, 0xD0, 0xB0, 0x1E, 0xCC,
                    /* 0200 */   0x39, 0xF9, 0xCF, 0xE2, 0xB1, 0xC1, 0x07, 0xC4,
                    /* 0208 */   0x7B, 0x9F, 0x35, 0x19, 0xC1, 0xC9, 0x1A, 0xD0,
                    /* 0210 */   0x87, 0x07, 0xDC, 0xA1, 0x02, 0xBC, 0x30, 0x87,
                    /* 0218 */   0xC5, 0xAF, 0x15, 0x70, 0x0F, 0x0B, 0x6C, 0x94,
                    /* 0220 */   0x7C, 0x34, 0x1E, 0xC2, 0x59, 0x3C, 0x0D, 0x18,
                    /* 0228 */   0xC6, 0xE8, 0x4F, 0x01, 0xB0, 0x6F, 0x18, 0x1E,
                    /* 0230 */   0x8B, 0x0F, 0x3A, 0x3E, 0xE9, 0x80, 0x63, 0x70,
                    /* 0238 */   0xFC, 0x0A, 0x83, 0x3B, 0xE9, 0x00, 0x8F, 0xB9,
                    /* 0240 */   0x3E, 0xE9, 0x80, 0xED, 0x7C, 0xC0, 0x4E, 0x39,
                    /* 0248 */   0xD0, 0x4C, 0x80, 0xB0, 0x00, 0x6F, 0x04, 0xC9,
                    /* 0250 */   0x5A, 0x37, 0x85, 0xF1, 0xFF, 0xFF, 0x94, 0x03,
                    /* 0258 */   0xB8, 0xBA, 0x4B, 0xF8, 0x04, 0x01, 0x56, 0x8C,
                    /* 0260 */   0xE7, 0x0D, 0x8B, 0x06, 0xD4, 0x08, 0x9E, 0x1F,
                    /* 0268 */   0x60, 0x1F, 0x73, 0xE0, 0x5F, 0x6D, 0x7C, 0xBE,
                    /* 0270 */   0x09, 0x72, 0x52, 0x41, 0x0E, 0xE5, 0xF5, 0xE6,
                    /* 0278 */   0xC9, 0x21, 0xCC, 0x8B, 0xCE, 0x13, 0x8E, 0x87,
                    /* 0280 */   0x56, 0x21, 0x88, 0x9C, 0x1D, 0x73, 0x08, 0xD2,
                    /* 0288 */   0x03, 0x8E, 0x51, 0x0C, 0x72, 0x66, 0x51, 0xA3,
                    /* 0290 */   0x45, 0x31, 0x5E, 0x90, 0x68, 0x11, 0x8F, 0xE0,
                    /* 0298 */   0x31, 0x87, 0xC5, 0x3A, 0x10, 0xE8, 0x1F, 0xE5,
                    /* 02A0 */   0x63, 0x0E, 0x70, 0xFF, 0xFF, 0x1F, 0x73, 0x00,
                    /* 02A8 */   0x47, 0xF2, 0x8E, 0x24, 0xA0, 0x1A, 0x15, 0xBF,
                    /* 02B0 */   0x32, 0xB0, 0x33, 0x09, 0x30, 0x89, 0xF2, 0xF4,
                    /* 02B8 */   0xD0, 0x38, 0xAD, 0xF1, 0x39, 0x20, 0x1B, 0x27,
                    /* 02C0 */   0x21, 0x3A, 0x08, 0x2B, 0xA1, 0xD2, 0x08, 0xDE,
                    /* 02C8 */   0x23, 0x7C, 0x6B, 0x88, 0xFB, 0x6C, 0xE0, 0xF9,
                    /* 02D0 */   0x60, 0xD2, 0x1F, 0x14, 0x74, 0xFE, 0x31, 0xB8,
                    /* 02D8 */   0x73, 0x93, 0x28, 0xF7, 0x80, 0x28, 0xBC, 0x93,
                    /* 02E0 */   0x1E, 0x83, 0x28, 0x88, 0x01, 0x1D, 0x03, 0x42,
                    /* 02E8 */   0x56, 0x0E, 0x02, 0xE8, 0xEB, 0x84, 0x8F, 0x0C,
                    /* 02F0 */   0x3E, 0x67, 0x44, 0x39, 0x23, 0x1F, 0x30, 0x1E,
                    /* 02F8 */   0x17, 0xD8, 0x70, 0x7C, 0x10, 0xE0, 0x07, 0x14,
                    /* 0300 */   0xDF, 0x0C, 0x8C, 0x6D, 0x35, 0xC7, 0x1D, 0x14,
                    /* 0308 */   0x98, 0xE1, 0x5F, 0x60, 0x4C, 0xE0, 0x7B, 0xC6,
                    /* 0310 */   0xCB, 0x00, 0xBC, 0xFF, 0xFF, 0x6D, 0x07, 0x7B,
                    /* 0318 */   0xC6, 0x78, 0x2C, 0xB1, 0xBE, 0xC3, 0x00, 0x28,
                    /* 0320 */   0x80, 0x3C, 0x7D, 0x9F, 0x68, 0x1E, 0x01, 0xD8,
                    /* 0328 */   0x18, 0x1E, 0x6A, 0x8C, 0x66, 0x74, 0x1E, 0x7F,
                    /* 0330 */   0xAE, 0xA8, 0xC0, 0x73, 0xA5, 0x20, 0x9E, 0xAB,
                    /* 0338 */   0xC3, 0x40, 0xC8, 0xC9, 0x5C, 0x51, 0xB7, 0x17,
                    /* 0340 */   0x8F, 0xC8, 0x3E, 0xA7, 0x4A, 0x06, 0xCB, 0x09,
                    /* 0348 */   0xA2, 0xBC, 0x6A, 0xC0, 0x3A, 0x08, 0x44, 0x64,
                    /* 0350 */   0xF3, 0xF0, 0x5D, 0x09, 0x3F, 0x5B, 0x3E, 0x18,
                    /* 0358 */   0x5F, 0x25, 0xE0, 0x0F, 0x97, 0x9F, 0x4A, 0xDE,
                    /* 0360 */   0x57, 0x98, 0xC0, 0xE9, 0x82, 0x1C, 0x1E, 0x23,
                    /* 0368 */   0x68, 0x3D, 0xB2, 0x70, 0x97, 0xA2, 0xE3, 0xE2,
                    /* 0370 */   0xB7, 0x03, 0xDF, 0x78, 0xD8, 0x9D, 0x06, 0x77,
                    /* 0378 */   0x11, 0xC3, 0xC0, 0x7A, 0xA4, 0x1C, 0xD6, 0x68,
                    /* 0380 */   0x61, 0x0F, 0xF8, 0x8D, 0xC3, 0xC7, 0x15, 0xCF,
                    /* 0388 */   0xCC, 0x18, 0x61, 0x7D, 0x4F, 0x01, 0xC7, 0x9D,
                    /* 0390 */   0x0C, 0x7E, 0x80, 0xB1, 0x21, 0xFE, 0xFF, 0x57,
                    /* 0398 */   0x20, 0xF0, 0x9D, 0x35, 0xD8, 0x95, 0xCC, 0x20,
                    /* 03A0 */   0x2F, 0x4A, 0x3E, 0xD7, 0x18, 0x3D, 0xD0, 0xFB,
                    /* 03A8 */   0x06, 0xFE, 0x26, 0x04, 0xFB, 0x06, 0x02, 0x67,
                    /* 03B0 */   0x28, 0xBE, 0x81, 0x00, 0x87, 0x63, 0x04, 0xEE,
                    /* 03B8 */   0x06, 0x02, 0xAC, 0xEF, 0x10, 0xEC, 0x06, 0x02,
                    /* 03C0 */   0x2C, 0x4F, 0x2F, 0xB8, 0x1B, 0x08, 0x38, 0xFF,
                    /* 03C8 */   0xFF, 0x37, 0x10, 0xE0, 0x72, 0x7F, 0x61, 0x37,
                    /* 03D0 */   0x10, 0x60, 0x3E, 0x6A, 0xDF, 0x40, 0x00, 0x4B,
                    /* 03D8 */   0x67, 0x0D, 0x76, 0x03, 0x01, 0xBF, 0x48, 0x0F,
                    /* 03E0 */   0xE3, 0x61, 0x31, 0x86, 0x2E, 0x81, 0x0B, 0xA7,
                    /* 03E8 */   0x30, 0x3E, 0x25, 0x82, 0xEB, 0xFF, 0x7F, 0x4A,
                    /* 03F0 */   0x04, 0xFE, 0xE7, 0x0A, 0x9F, 0x00, 0xC0, 0x71,
                    /* 03F8 */   0x7E, 0x38, 0x83, 0x53, 0x88, 0x76, 0xE6, 0x1E,
                    /* 0400 */   0x79, 0x8C, 0x37, 0x04, 0xA3, 0x04, 0x8C, 0x17,
                    /* 0408 */   0x23, 0x6E, 0x48, 0x1F, 0xEE, 0x7C, 0x7B, 0x33,
                    /* 0410 */   0x50, 0xBC, 0xC3, 0x0A, 0x1B, 0xE7, 0x45, 0xC0,
                    /* 0418 */   0x67, 0xB8, 0x97, 0x57, 0x9F, 0x0E, 0x0C, 0xF4,
                    /* 0420 */   0xDC, 0xE7, 0x83, 0x22, 0xEC, 0x83, 0xF5, 0x59,
                    /* 0428 */   0x85, 0x88, 0xF0, 0x20, 0xF0, 0x4E, 0x71, 0x32,
                    /* 0430 */   0xCF, 0x86, 0x2F, 0x88, 0x87, 0xF6, 0x98, 0xE8,
                    /* 0438 */   0xCB, 0xE1, 0x83, 0xA2, 0xC7, 0xF0, 0xD4, 0x16,
                    /* 0440 */   0xF5, 0x69, 0xD1, 0x30, 0x4F, 0x2A, 0x4F, 0x8B,
                    /* 0448 */   0x3E, 0x34, 0x32, 0xE0, 0xC7, 0x83, 0xD8, 0x06,
                    /* 0450 */   0x0D, 0xF4, 0x90, 0xED, 0x11, 0x3C, 0x28, 0xB2,
                    /* 0458 */   0x68, 0x07, 0x45, 0x40, 0xD1, 0xFF, 0xFF, 0xA0,
                    /* 0460 */   0x08, 0x38, 0x38, 0xEA, 0xE2, 0x0E, 0x2F, 0xF0,
                    /* 0468 */   0xCE, 0x01, 0x8F, 0x08, 0x38, 0xB4, 0x97, 0x05,
                    /* 0470 */   0xDC, 0x51, 0x11, 0xB8, 0x44, 0x7F, 0x0E, 0xE8,
                    /* 0478 */   0xB4, 0xE3, 0xD8, 0x17, 0x2B, 0xD4, 0x29, 0xC6,
                    /* 0480 */   0x21, 0x2F, 0x56, 0x88, 0x29, 0xF1, 0x0B, 0x82,
                    /* 0488 */   0xE1, 0x0F, 0x21, 0x88, 0x87, 0xC5, 0xA6, 0xE0,
                    /* 0490 */   0x33, 0x82, 0x09, 0x1C, 0x07, 0x58, 0xB7, 0x2B,
                    /* 0498 */   0x1E, 0x84, 0x42, 0x51, 0x68, 0x74, 0x44, 0xE2,
                    /* 04A0 */   0xE2, 0x2F, 0x59, 0x14, 0xC4, 0x47, 0x05, 0x07,
                    /* 04A8 */   0xBA, 0x5D, 0xA1, 0x0F, 0x26, 0x9E, 0xD4, 0xC9,
                    /* 04B0 */   0x62, 0xE7, 0x82, 0x9B, 0x9D, 0x4F, 0x20, 0xAF,
                    /* 04B8 */   0x58, 0xC0, 0xE2, 0xFF, 0x7F, 0xC5, 0x02, 0x47,
                    /* 04C0 */   0x92, 0x81, 0xA1, 0xB5, 0x0C, 0x0C, 0xCA, 0x51,
                    /* 04C8 */   0xE0, 0xB8, 0x4E, 0x0A, 0xBC, 0x63, 0xF6, 0x39,
                    /* 04D0 */   0x0C, 0x38, 0x87, 0x3F, 0x87, 0xA1, 0xE2, 0x0E,
                    /* 04D8 */   0x89, 0x82, 0xF8, 0x74, 0xE0, 0x28, 0x57, 0x38,
                    /* 04E0 */   0x48, 0x03, 0x78, 0x61, 0x30, 0xC8, 0xC9, 0x1E,
                    /* 04E8 */   0xA4, 0x8F, 0x61, 0xE0, 0x1E, 0x89, 0xEF, 0x95,
                    /* 04F0 */   0xC0, 0x5B, 0xC8, 0x31, 0x0C, 0xF5, 0xFF, 0x3F,
                    /* 04F8 */   0x86, 0x81, 0x63, 0xC8, 0x3E, 0x86, 0x01, 0xD7,
                    /* 0500 */   0x53, 0x13, 0x78, 0x6E, 0x60, 0xFC, 0xA4, 0x84,
                    /* 0508 */   0x05, 0x7A, 0xF6, 0xE0, 0x38, 0x8F, 0x4C, 0x06,
                    /* 0510 */   0xE6, 0x60, 0xEC, 0x6A, 0x82, 0xBD, 0x4D, 0x98,
                    /* 0518 */   0xA0, 0x8E, 0x5F, 0x85, 0x8F, 0x43, 0x1E, 0xB6,
                    /* 0520 */   0x44, 0x2D, 0x9A, 0xC2, 0xF8, 0x08, 0x06, 0xB8,
                    /* 0528 */   0x3A, 0x17, 0xF9, 0x08, 0x06, 0xCE, 0xFF, 0xFF,
                    /* 0530 */   0x11, 0x8C, 0xCD, 0x9D, 0x21, 0x19, 0xD5, 0x88,
                    /* 0538 */   0xEF, 0x04, 0xBE, 0x4A, 0xF9, 0xF0, 0x05, 0xFF,
                    /* 0540 */   0xB8, 0xF5, 0x1E, 0xF1, 0xC2, 0x75, 0x2C, 0xCF,
                    /* 0548 */   0x2C, 0x11, 0x62, 0x3C, 0xF4, 0xFB, 0x6C, 0x71,
                    /* 0550 */   0x52, 0x91, 0x0E, 0xEB, 0xE1, 0xCB, 0x47, 0xAF,
                    /* 0558 */   0x17, 0xB0, 0x97, 0xAE, 0x87, 0x2F, 0x9F, 0xBB,
                    /* 0560 */   0xDE, 0xF7, 0x8D, 0x12, 0x28, 0x68, 0xC4, 0xA0,
                    /* 0568 */   0x81, 0xE2, 0x3D, 0x86, 0x79, 0x00, 0x71, 0x82,
                    /* 0570 */   0x3C, 0xF4, 0xF3, 0xC3, 0x17, 0xC0, 0x25, 0xAB,
                    /* 0578 */   0x57, 0x04, 0xE4, 0x2D, 0x18, 0xC6, 0xE1, 0x8B,
                    /* 0580 */   0xFF, 0xFF, 0x0F, 0x5F, 0xE0, 0x4F, 0xFA, 0x66,
                    /* 0588 */   0xD2, 0xE9, 0xC0, 0x7A, 0x1E, 0x31, 0x3A, 0x7C,
                    /* 0590 */   0xF1, 0x23, 0x81, 0x15, 0x50, 0x09, 0xFF, 0x0D,
                    /* 0598 */   0x26, 0xF0, 0xD9, 0x3C, 0x12, 0x1C, 0xC3, 0xD3,
                    /* 05A0 */   0x04, 0xBB, 0xAA, 0x3C, 0x4A, 0x78, 0xBA, 0xCE,
                    /* 05A8 */   0x7C, 0x14, 0xA3, 0x03, 0x77, 0x5A, 0x18, 0xA9,
                    /* 05B0 */   0x22, 0xD1, 0x99, 0x88, 0xEB, 0x38, 0x7F, 0x51,
                    /* 05B8 */   0x10, 0x8F, 0xC3, 0x67, 0x22, 0x2B, 0x39, 0x0B,
                    /* 05C0 */   0xA0, 0x06, 0xE7, 0x49, 0xE0, 0xA7, 0xFB, 0x46,
                    /* 05C8 */   0xE3, 0x53, 0x17, 0x70, 0xBC, 0x5B, 0x3C, 0x65,
                    /* 05D0 */   0x24, 0x18, 0x0A, 0x42, 0x46, 0x06, 0x4B, 0x47,
                    /* 05D8 */   0xE5, 0x81, 0x79, 0xA6, 0x30, 0x12, 0x40, 0x68,
                    /* 05E0 */   0x82, 0x9E, 0x13, 0xBC, 0x7B, 0x13, 0x7E, 0x30,
                    /* 05E8 */   0x4F, 0x03, 0x6F, 0x0F, 0xBE, 0x39, 0xF8, 0xEC,
                    /* 05F0 */   0x05, 0xF3, 0x4C, 0xE4, 0xA9, 0x81, 0xE3, 0x38,
                    /* 05F8 */   0xF2, 0xD2, 0xCD, 0xCE, 0x20, 0x38, 0x60, 0x36,
                    /* 0600 */   0xB0, 0xE7, 0x8F, 0xE7, 0x1E, 0x63, 0xFE, 0xFF,
                    /* 0608 */   0xCF, 0xCC, 0xA3, 0x07, 0xEB, 0xF5, 0xC0, 0xA3,
                    /* 0610 */   0x87, 0x7F, 0xFB, 0xC0, 0xDE, 0xCE, 0x80, 0x45,
                    /* 0618 */   0xAC, 0x2B, 0x20, 0x2A, 0xC8, 0x15, 0x90, 0x82,
                    /* 0620 */   0x78, 0x62, 0x8E, 0x73, 0x3B, 0x43, 0x4F, 0xD2,
                    /* 0628 */   0xA7, 0x33, 0xDC, 0x74, 0x7D, 0xC2, 0xF0, 0xAD,
                    /* 0630 */   0x1B, 0xFC, 0x50, 0xBE, 0x9F, 0x81, 0x2F, 0xD6,
                    /* 0638 */   0xB8, 0xD0, 0xA2, 0x2E, 0x0F, 0x50, 0x26, 0x10,
                    /* 0640 */   0xE6, 0x44, 0x82, 0x3F, 0x89, 0x44, 0x78, 0x6F,
                    /* 0648 */   0xF2, 0x35, 0x8C, 0x8D, 0x0D, 0xEC, 0x07, 0x0A,
                    /* 0650 */   0x8F, 0x0D, 0xE6, 0xFF, 0xFF, 0x2A, 0x07, 0xEC,
                    /* 0658 */   0x44, 0x5C, 0xE5, 0x40, 0x77, 0xCF, 0xE0, 0x57,
                    /* 0660 */   0x39, 0xE0, 0x79, 0xDD, 0xF0, 0xED, 0x0B, 0x2C,
                    /* 0668 */   0x57, 0x1C, 0x7E, 0xFB, 0xE2, 0x77, 0x2F, 0x83,
                    /* 0670 */   0x84, 0x89, 0x19, 0xC6, 0x87, 0x34, 0xE3, 0x3C,
                    /* 0678 */   0x81, 0x31, 0xA4, 0xA7, 0x04, 0xEC, 0xC9, 0xC3,
                    /* 0680 */   0xF9, 0xEE, 0x3D, 0xA8, 0xA1, 0x38, 0xD3, 0xAB,
                    /* 0688 */   0x40, 0x53, 0x3F, 0x5F, 0x9F, 0x5E, 0x60, 0xE4,
                    /* 0690 */   0x80, 0xD3, 0xB5, 0x87, 0x27, 0x80, 0x91, 0xFE,
                    /* 0698 */   0xE5, 0xEB, 0xB0, 0xC1, 0x15, 0xDF, 0x7E, 0x28,
                    /* 06A0 */   0x88, 0xAF, 0x24, 0x4E, 0x73, 0xED, 0x41, 0xEB,
                    /* 06A8 */   0x01, 0x91, 0xCF, 0xB1, 0x6B, 0x08, 0x0F, 0x3E,
                    /* 06B0 */   0xE0, 0xF9, 0xFF, 0x1F, 0x7C, 0x80, 0x57, 0xAE,
                    /* 06B8 */   0x83, 0x0F, 0x7A, 0x30, 0x9E, 0x16, 0xAC, 0x9B,
                    /* 06C0 */   0x0F, 0xE0, 0xE0, 0x08, 0x00, 0xE7, 0xCA, 0x75,
                    /* 06C8 */   0xF2, 0x47, 0xF6, 0x08, 0x00, 0x6C, 0x4E, 0x3F,
                    /* 06D0 */   0xE0, 0x38, 0x02, 0x80, 0x61, 0x5A, 0xB0, 0x8E,
                    /* 06D8 */   0x00, 0x60, 0xFD, 0xFF, 0x1F, 0x01, 0x60, 0x23,
                    /* 06E0 */   0xF9, 0x2E, 0x05, 0x58, 0x18, 0xA6, 0xEF, 0x52,
                    /* 06E8 */   0xC0, 0xF9, 0x0B, 0xE1, 0xFB, 0x08, 0x8F, 0x7C,
                    /* 06F0 */   0x8D, 0xA0, 0x20, 0xBE, 0x22, 0xF8, 0x2E, 0x05,
                    /* 06F8 */   0x3C, 0x2F, 0x40, 0xBE, 0x20, 0x01, 0xAF, 0xFF,
                    /* 0700 */   0xFF, 0x05, 0x09, 0xBE, 0x84, 0x0B, 0x12, 0xE8,
                    /* 0708 */   0x86, 0xED, 0x0B, 0x12, 0x70, 0x45, 0xF5, 0x05,
                    /* 0710 */   0x09, 0x1C, 0x77, 0x21, 0x76, 0x3F, 0x02, 0xAB,
                    /* 0718 */   0xD6, 0x1F, 0x85, 0xEE, 0x47, 0x9C, 0xC3, 0x4A,
                    /* 0720 */   0x17, 0xAD, 0xF3, 0x34, 0xBB, 0xE0, 0x1E, 0xE7,
                    /* 0728 */   0x5B, 0xCE, 0x3B, 0x80, 0x71, 0x3C, 0x17, 0x9F,
                    /* 0730 */   0x27, 0x8C, 0x9F, 0xA0, 0x32, 0x48, 0xDD, 0x90,
                    /* 0738 */   0xB8, 0x26, 0x18, 0x69, 0x3B, 0x68, 0xA2, 0xD4,
                    /* 0740 */   0x1C, 0x34, 0x29, 0x88, 0x0F, 0x9A, 0xC0, 0xFF,
                    /* 0748 */   0xFF, 0x7F, 0xD0, 0x04, 0xFC, 0x85, 0x19, 0x3F,
                    /* 0750 */   0x7A, 0x32, 0xBE, 0x13, 0xE0, 0xCF, 0xCF, 0x3E,
                    /* 0758 */   0x92, 0xF8, 0xF0, 0xFD, 0x78, 0x04, 0x4C, 0xEF,
                    /* 0760 */   0x33, 0xC0, 0x22, 0xF6, 0xED, 0x01, 0x15, 0xF4,
                    /* 0768 */   0xF6, 0x40, 0x41, 0x7C, 0x29, 0xF1, 0x7D, 0x06,
                    /* 0770 */   0x58, 0xFC, 0xFF, 0xCF, 0x9A, 0xC0, 0xEA, 0x92,
                    /* 0778 */   0x81, 0xBF, 0xF7, 0xB3, 0xFB, 0xC3, 0x03, 0xBA,
                    /* 0780 */   0xAF, 0x18, 0xFC, 0x94, 0x09, 0x3C, 0x0F, 0x05,
                    /* 0788 */   0xEC, 0x92, 0x01, 0xE3, 0x44, 0xE1, 0x51, 0x71,
                    /* 0790 */   0x02, 0x87, 0x18, 0x06, 0x1D, 0x14, 0xB8, 0x0E,
                    /* 0798 */   0x19, 0x9C, 0xDC, 0xF7, 0x23, 0xB8, 0x97, 0x0C,
                    /* 07A0 */   0x70, 0x05, 0x1B, 0x1A, 0x5A, 0xCA, 0x31, 0x81,
                    /* 07A8 */   0x1E, 0x6F, 0xD8, 0x39, 0xDE, 0xF7, 0x1E, 0x36,
                    /* 07B0 */   0x38, 0x70, 0x1F, 0x32, 0x0C, 0xC7, 0xFE, 0xFF,
                    /* 07B8 */   0x83, 0x83, 0x71, 0xDB, 0xF0, 0xE0, 0xC0, 0x75,
                    /* 07C0 */   0x95, 0x02, 0x1E, 0xC1, 0xC7, 0x8E, 0xBA, 0x4A,
                    /* 07C8 */   0x81, 0xE3, 0x5C, 0xC7, 0xAF, 0x52, 0xC0, 0x73,
                    /* 07D0 */   0x80, 0xAF, 0x52, 0x60, 0xB9, 0x36, 0xB1, 0x39,
                    /* 07D8 */   0x3C, 0x37, 0xF1, 0xAB, 0x94, 0x0F, 0x35, 0xD8,
                    /* 07E0 */   0x2B, 0x8C, 0xAF, 0x37, 0x3A, 0xB5, 0xA2, 0x38,
                    /* 07E8 */   0x1C, 0xE5, 0xD4, 0x8A, 0xB8, 0x45, 0xC1, 0x94,
                    /* 07F0 */   0x7E, 0x6E, 0x45, 0x89, 0x86, 0x91, 0xE4, 0x73,
                    /* 07F8 */   0x2B, 0x4A, 0xE4, 0xB9, 0x95, 0x82, 0xF8, 0x84,
                    /* 0800 */   0xE0, 0x5B, 0x14, 0x58, 0xFE, 0xFF, 0xB7, 0x28,
                    /* 0808 */   0x80, 0x15, 0x87, 0x56, 0x38, 0x80, 0x8F, 0x51,
                    /* 0810 */   0x80, 0x83, 0x8B, 0xA8, 0xAF, 0x41, 0xF0, 0xC7,
                    /* 0818 */   0x04, 0xAE, 0xFF, 0xFF, 0x59, 0x15, 0x3B, 0x26,
                    /* 0820 */   0xB0, 0x05, 0xBA, 0x23, 0xA0, 0x55, 0x5C, 0x82,
                    /* 0828 */   0x90, 0x37, 0x04, 0xF0, 0x52, 0xFB, 0xC4, 0x0A,
                    /* 0830 */   0xF3, 0x86, 0x00, 0xAE, 0x0B, 0x2B, 0xC0, 0x91,
                    /* 0838 */   0xFF, 0xFF, 0xB1, 0x08, 0x18, 0xDD, 0x0C, 0xF8,
                    /* 0840 */   0xB1, 0x08, 0xF0, 0x71, 0x61, 0xE5, 0xC7, 0x22,
                    /* 0848 */   0xF8, 0xE9, 0x7D, 0x8D, 0x81, 0x05, 0x78, 0x2A,
                    /* 0850 */   0x48, 0xD6, 0x62, 0x29, 0x8C, 0x8F, 0x14, 0x3E,
                    /* 0858 */   0x1F, 0xE0, 0x47, 0x7C, 0xC0, 0xE7, 0x70, 0x48,
                    /* 0860 */   0x4C, 0x12, 0x1C, 0xEA, 0x30, 0xE0, 0x09, 0x36,
                    /* 0868 */   0x3F, 0x0C, 0x4D, 0xF1, 0xCC, 0x3D, 0xA7, 0x90,
                    /* 0870 */   0x4C, 0xDA, 0xD8, 0x50, 0xC7, 0x34, 0x0F, 0xEC,
                    /* 0878 */   0xCC, 0xCE, 0xEB, 0x81, 0xD6, 0x37, 0x07, 0xC3,
                    /* 0880 */   0x24, 0xF0, 0x31, 0x80, 0xCD, 0x32, 0x1A, 0x83,
                    /* 0888 */   0xC6, 0x0E, 0xC3, 0xF7, 0x83, 0x60, 0x07, 0x71,
                    /* 0890 */   0x18, 0xEF, 0x00, 0x26, 0xF0, 0x84, 0x8E, 0xB1,
                    /* 0898 */   0xDC, 0x7B, 0x83, 0x6E, 0x34, 0x51, 0x63, 0x34,
                    /* 08A0 */   0x07, 0x45, 0x6E, 0xBD, 0xE0, 0x39, 0x33, 0xFC,
                    /* 08A8 */   0xFF, 0xCF, 0xE0, 0x7D, 0x88, 0x5D, 0x7B, 0x39,
                    /* 08B0 */   0x7A, 0x94, 0x9A, 0xCF, 0xBC, 0x74, 0xEA, 0x30,
                    /* 08B8 */   0x09, 0x8C, 0x7E, 0x24, 0x98, 0x63, 0x81, 0xC1,
                    /* 08C0 */   0x5E, 0x28, 0x7C, 0x3C, 0x60, 0xEE, 0x05, 0x68,
                    /* 08C8 */   0x14, 0xE0, 0x4D, 0x80, 0x35, 0x0C, 0x41, 0xBC,
                    /* 08D0 */   0xBA, 0x44, 0xB0, 0xAD, 0x39, 0xE8, 0x54, 0x12,
                    /* 08D8 */   0xE2, 0xBD, 0x22, 0xCA, 0xA1, 0x1D, 0x4D, 0xB0,
                    /* 08E0 */   0xA8, 0x51, 0xDE, 0x26, 0x0E, 0xEE, 0x19, 0xE6,
                    /* 08E8 */   0x8C, 0xA2, 0xC4, 0x8D, 0x15, 0x30, 0x42, 0xE4,
                    /* 08F0 */   0xB0, 0x0F, 0x18, 0x6F, 0x14, 0xC1, 0x0D, 0x1B,
                    /* 08F8 */   0xAB, 0xFD, 0x41, 0x90, 0x58, 0x07, 0x02, 0x1D,
                    /* 0900 */   0x23, 0x1C, 0xE9, 0x20, 0x8F, 0x3E, 0x14, 0xF8,
                    /* 0908 */   0x46, 0xE4, 0xEB, 0xBA, 0x0F, 0xF2, 0x9E, 0xE8,
                    /* 0910 */   0xA1, 0xBD, 0xF7, 0x3F, 0x0D, 0x78, 0xDC, 0xEC,
                    /* 0918 */   0x18, 0xE2, 0xD3, 0x08, 0x1C, 0xD7, 0x80, 0xBA,
                    /* 0920 */   0x17, 0x3C, 0x50, 0x80, 0xE5, 0x38, 0x02, 0xFF,
                    /* 0928 */   0x36, 0x8F, 0x25, 0x28, 0x7F, 0x10, 0xA8, 0x8B,
                    /* 0930 */   0x11, 0x1F, 0xEA, 0x69, 0x9D, 0xBF, 0xEF, 0x87,
                    /* 0938 */   0x26, 0xF0, 0x89, 0x90, 0x8F, 0x07, 0xFC, 0x8A,
                    /* 0940 */   0xAF, 0x06, 0x42, 0x78, 0x65, 0xF0, 0x7C, 0x4D,
                    /* 0948 */   0x50, 0xDE, 0x69, 0x05, 0x14, 0xF7, 0x38, 0xEC,
                    /* 0950 */   0xFF, 0xFF, 0x94, 0xC0, 0x8F, 0x6F, 0x3A, 0x3D,
                    /* 0958 */   0xA0, 0xE1, 0xF9, 0x21, 0xE0, 0xB9, 0x85, 0x01,
                    /* 0960 */   0xBF, 0xBA, 0x78, 0x0A, 0x87, 0xE3, 0x73, 0x85,
                    /* 0968 */   0x11, 0xC2, 0x3F, 0x4E, 0x3C, 0x5E, 0xF8, 0xF0,
                    /* 0970 */   0x70, 0x3E, 0xCF, 0x0B, 0x67, 0xF4, 0x2E, 0x60,
                    /* 0978 */   0x82, 0xE9, 0xDE, 0x2B, 0x1A, 0xA5, 0xD3, 0x3E,
                    /* 0980 */   0x07, 0x74, 0xD0, 0xE3, 0xA2, 0x20, 0x94, 0x72,
                    /* 0988 */   0xB1, 0xC2, 0x7F, 0x75, 0x09, 0x7C, 0xCC, 0x0F,
                    /* 0990 */   0x04, 0x6F, 0x6B, 0xF8, 0x59, 0x3C, 0x60, 0xBC,
                    /* 0998 */   0x91, 0x7B, 0x04, 0x2C, 0xD1, 0x59, 0x97, 0x8E,
                    /* 09A0 */   0xDC, 0x59, 0x28, 0x94, 0x7B, 0x50, 0x14, 0xCE,
                    /* 09A8 */   0x49, 0x4F, 0x44, 0x14, 0xC4, 0x80, 0xBE, 0x74,
                    /* 09B0 */   0xF9, 0xD4, 0x80, 0x1B, 0x3A, 0x9B, 0xC5, 0x13,
                    /* 09B8 */   0x43, 0x84, 0xB3, 0xF6, 0x1D, 0xC0, 0x07, 0x3D,
                    /* 09C0 */   0x60, 0x76, 0x5F, 0xC0, 0x5E, 0xA6, 0x80, 0x45,
                    /* 09C8 */   0xA4, 0xCB, 0x14, 0x2A, 0x04, 0x8C, 0xE6, 0x6A,
                    /* 09D0 */   0x10, 0x4F, 0xCC, 0x97, 0x29, 0xE0, 0xF3, 0xFF,
                    /* 09D8 */   0xBF, 0x4C, 0xC1, 0x1B, 0x8D, 0x2F, 0x53, 0xE0,
                    /* 09E0 */   0xBB, 0x97, 0x78, 0x5C, 0xB8, 0xF7, 0x82, 0x8F,
                    /* 09E8 */   0x0A, 0x30, 0x6F, 0x30, 0x6C, 0x64, 0xE0, 0xBE,
                    /* 09F0 */   0x2F, 0xF8, 0xD6, 0x05, 0xBC, 0xE3, 0xDF, 0xBA,
                    /* 09F8 */   0x40, 0x77, 0xA1, 0xE4, 0xB7, 0x2E, 0xE0, 0x79,
                    /* 0A00 */   0x2D, 0x79, 0x61, 0x02, 0xCB, 0xFF, 0xFF, 0x52,
                    /* 0A08 */   0x82, 0x99, 0x44, 0xB0, 0x67, 0x03, 0x2C, 0xD2,
                    /* 0A10 */   0x73, 0xA6, 0xEF, 0x06, 0x6C, 0x60, 0xBE, 0x07,
                    /* 0A18 */   0xF9, 0xD0, 0x61, 0x19, 0xD7, 0x14, 0xD4, 0xBD,
                    /* 0A20 */   0xCA, 0xD1, 0xD7, 0xA9, 0xDB, 0x2E, 0x9B, 0x7D,
                    /* 0A28 */   0xF4, 0xF8, 0xAF, 0x58, 0xBE, 0xC8, 0x04, 0x7E,
                    /* 0A30 */   0x5E, 0xC0, 0x5F, 0x00, 0xDE, 0x8C, 0x7C, 0xB5,
                    /* 0A38 */   0xF0, 0x79, 0x81, 0x05, 0x3C, 0x67, 0x50, 0x08,
                    /* 0A40 */   0x47, 0xA3, 0x50, 0xB0, 0xE3, 0x06, 0x2A, 0x0A,
                    /* 0A48 */   0x1C, 0x05, 0xF1, 0x71, 0x03, 0xB8, 0x12, 0xF8,
                    /* 0A50 */   0x14, 0x01, 0xBE, 0xCB, 0xB9, 0xC7, 0x85, 0x3B,
                    /* 0A58 */   0x2A, 0x78, 0xCA, 0xE0, 0x3A, 0x9A, 0x00, 0xDF,
                    /* 0A60 */   0x13, 0x07, 0xEE, 0xFF, 0x7F, 0xE2, 0x00, 0xB7,
                    /* 0A68 */   0x84, 0xF5, 0xE8, 0xC4, 0x01, 0xAE, 0xC3, 0x89,
                    /* 0A70 */   0x4F, 0x1C, 0xC0, 0xF5, 0xC6, 0x07, 0x9E, 0xCB,
                    /* 0A78 */   0x39, 0x87, 0x7A, 0x3A, 0xE0, 0x30, 0xD1, 0x7C,
                    /* 0A80 */   0xE9, 0x80, 0x73, 0x95, 0x63, 0xD7, 0x03, 0x76,
                    /* 0A88 */   0xE6, 0x70, 0xA2, 0x5F, 0x9D, 0xCE, 0x1C, 0xB8,
                    /* 0A90 */   0x14, 0x4B, 0xD6, 0x35, 0x8C, 0x9D, 0x39, 0xC0,
                    /* 0A98 */   0xA6, 0xF5, 0x7E, 0x4E, 0x47, 0x6E, 0x95, 0x30,
                    /* 0AA0 */   0xD2, 0x48, 0xA2, 0x33, 0x07, 0x57, 0x75, 0xE7,
                    /* 0AA8 */   0xA2, 0x20, 0xBE, 0xF1, 0xF9, 0x9A, 0x0E, 0x5C,
                    /* 0AB0 */   0xFE, 0xFF, 0xD7, 0x74, 0xC0, 0xF7, 0xD0, 0x3C,
                    /* 0AB8 */   0x7E, 0xDC, 0xD9, 0x04, 0x7C, 0x47, 0x75, 0xE0,
                    /* 0AC0 */   0x79, 0xBE, 0x06, 0x9E, 0xFF, 0xFF, 0x4B, 0x10,
                    /* 0AC8 */   0x30, 0x84, 0xF2, 0xC5, 0x06, 0xF0, 0x04, 0xE9,
                    /* 0AD0 */   0x8B, 0x0D, 0xE0, 0xE4, 0x7C, 0xCD, 0x2F, 0x36,
                    /* 0AD8 */   0xE0, 0x94, 0x7D, 0xB1, 0x41, 0x1D, 0x09, 0x2C,
                    /* 0AE0 */   0x76, 0xA5, 0xBA, 0xEC, 0xB0, 0x2B, 0x6B, 0xE8,
                    /* 0AE8 */   0xFF, 0xFF, 0x1B, 0xAA, 0x67, 0xE3, 0x13, 0xB5,
                    /* 0AF0 */   0x0F, 0x6A, 0x1E, 0xF5, 0xDB, 0x02, 0x1B, 0xEC,
                    /* 0AF8 */   0x23, 0x30, 0x4E, 0xD4, 0xBD, 0x06, 0x25, 0x07,
                    /* 0B00 */   0x46, 0x87, 0x6E, 0x1F, 0x23, 0xB8, 0xE4, 0xAB,
                    /* 0B08 */   0x19, 0x05, 0xF1, 0x01, 0xC0, 0x87, 0x52, 0xC0,
                    /* 0B10 */   0x45, 0x92, 0xBB, 0x0A, 0x5A, 0xCB, 0x49, 0x80,
                    /* 0B18 */   0x5C, 0xF2, 0x7C, 0xD8, 0x3B, 0xD0, 0x13, 0x3F,
                    /* 0B20 */   0xA9, 0x17, 0xE0, 0xC7, 0x71, 0x36, 0x29, 0xB0,
                    /* 0B28 */   0x0E, 0xD7, 0xC7, 0x14, 0xE0, 0x1C, 0xE6, 0x40,
                    /* 0B30 */   0x80, 0x92, 0x7F, 0x20, 0xA0, 0x20, 0xBE, 0xFA,
                    /* 0B38 */   0x81, 0xF1, 0xFF, 0x7F, 0x1F, 0x05, 0xB6, 0x61,
                    /* 0B40 */   0xCE, 0x0D, 0xE8, 0x13, 0xBF, 0x2F, 0x13, 0x70,
                    /* 0B48 */   0x0E, 0x33, 0xC0, 0xEF, 0x74, 0x8E, 0x3F, 0xCC,
                    /* 0B50 */   0x00, 0x8F, 0x27, 0x81, 0x0F, 0x33, 0xE0, 0x02,
                    /* 0B58 */   0xF7, 0x61, 0x06, 0xB8, 0x0A, 0x3E, 0xCC, 0x40,
                    /* 0B60 */   0xF8, 0xFF, 0x5F, 0xFA, 0x60, 0x1F, 0xE4, 0x19,
                    /* 0B68 */   0x8A, 0x2F, 0x06, 0x3E, 0xB9, 0x70, 0x9C, 0xD3,
                    /* 0B70 */   0x7A, 0x3A, 0xE0, 0x30, 0x81, 0xDF, 0x0E, 0xD8,
                    /* 0B78 */   0x91, 0xC3, 0xE2, 0xEF, 0x7C, 0x68, 0xB9, 0x67,
                    /* 0B80 */   0x19, 0xC8, 0xB7, 0x1C, 0x4F, 0xC7, 0x03, 0x78,
                    /* 0B88 */   0x5E, 0xF0, 0x9D, 0x04, 0x77, 0x98, 0x01, 0x98,
                    /* 0B90 */   0xF6, 0xFF, 0x3F, 0xCC, 0x00, 0xC6, 0x6F, 0x13,
                    /* 0B98 */   0x30, 0x0E, 0x33, 0x80, 0x39, 0x11, 0x87, 0x19,
                    /* 0BA0 */   0xD0, 0x99, 0x38, 0xCC, 0x40, 0xF8, 0xFF, 0x1F,
                    /* 0BA8 */   0x66, 0x80, 0xDD, 0x4D, 0xC3, 0x87, 0x19, 0xE0,
                    /* 0BB0 */   0x00, 0xFD, 0x74, 0x80, 0xB9, 0xCC, 0xF8, 0x0A,
                    /* 0BB8 */   0x82, 0xB9, 0x73, 0x98, 0x60, 0xBC, 0x77, 0x83,
                    /* 0BC0 */   0x8E, 0x33, 0x7C, 0x28, 0xBE, 0xC6, 0x7B, 0x14,
                    /* 0BC8 */   0x6C, 0xFC, 0xEF, 0x7D, 0x46, 0xF1, 0x01, 0x20,
                    /* 0BD0 */   0xFE, 0xFB, 0x80, 0x43, 0xDD, 0xE6, 0x51, 0x71,
                    /* 0BD8 */   0x28, 0x74, 0xCE, 0x00, 0x1C, 0xDC, 0xE6, 0xC1,
                    /* 0BE0 */   0x79, 0xCE, 0x80, 0x33, 0x57, 0x18, 0xC3, 0x82,
                    /* 0BE8 */   0xFF, 0xFF, 0xBF, 0xC7, 0x03, 0x83, 0x73, 0x06,
                    /* 0BF0 */   0xF0, 0x0A, 0x0D, 0xA1, 0x73, 0x06, 0xB8, 0x54,
                    /* 0BF8 */   0x9C, 0x33, 0x80, 0xAE, 0xC8, 0x73, 0x06, 0xE8,
                    /* 0C00 */   0x8E, 0xA6, 0x0C, 0x86, 0x5D, 0x4C, 0x3D, 0xF7,
                    /* 0C08 */   0xE7, 0x0B, 0x26, 0xF4, 0xF4, 0x85, 0x1A, 0x82,
                    /* 0C10 */   0xA5, 0x5E, 0xE0, 0x11, 0x77, 0x04, 0x18, 0xF2,
                    /* 0C18 */   0x8E, 0x5D, 0x28, 0x61, 0x30, 0x92, 0x75, 0x73,
                    /* 0C20 */   0x47, 0x09, 0xB9, 0xB9, 0x53, 0x10, 0xDF, 0xDC,
                    /* 0C28 */   0xC1, 0xF4, 0xFF, 0xBF, 0xB9, 0x03, 0xAC, 0xC8,
                    /* 0C30 */   0x71, 0x0E, 0x41, 0x0F, 0xCD, 0x77, 0x02, 0x18,
                    /* 0C38 */   0x67, 0x76, 0x60, 0x76, 0x0A, 0xC1, 0x9E, 0xD9,
                    /* 0C40 */   0x81, 0xDB, 0xFF, 0xFF, 0xCC, 0x0E, 0x98, 0x3E,
                    /* 0C48 */   0xC4, 0x80, 0x6F, 0x9C, 0x3E, 0xC4, 0x00, 0x4E,
                    /* 0C50 */   0xCE, 0xEC, 0xFC, 0x10, 0x03, 0x2F, 0xE9, 0x3A,
                    /* 0C58 */   0x75, 0x88, 0xE1, 0x1C, 0xCE, 0xF9, 0x50, 0xD0,
                    /* 0C60 */   0xD4, 0xC3, 0x1F, 0x93, 0x6F, 0xA4, 0x27, 0xD8,
                    /* 0C68 */   0xE7, 0x04, 0x34, 0x0E, 0x6B, 0x46, 0xD2, 0x59,
                    /* 0C70 */   0xE0, 0xFF, 0x7F, 0x8C, 0x4F, 0x07, 0xCE, 0x75,
                    /* 0C78 */   0x7E, 0xA1, 0x67, 0x06, 0x27, 0xA2, 0x50, 0x9E,
                    /* 0C80 */   0xB3, 0x03, 0x2A, 0xC1, 0xA9, 0x8B, 0x82, 0x78,
                    /* 0C88 */   0xF8, 0x3E, 0xC6, 0x00, 0xDC, 0xB9, 0xA2, 0x00,
                    /* 0C90 */   0x46, 0xFE, 0xFF, 0x77, 0x52, 0xE0, 0x7A, 0x45,
                    /* 0C98 */   0x01, 0x1E, 0xC1, 0xAF, 0x28, 0xA0, 0xB3, 0x71,
                    /* 0CA0 */   0x45, 0x01, 0xBA, 0x03, 0x7C, 0x45, 0x01, 0xCB,
                    /* 0CA8 */   0xAD, 0x84, 0x0F, 0xE2, 0xB1, 0x84, 0x1F, 0x37,
                    /* 0CB0 */   0xD9, 0xB5, 0x04, 0x73, 0x49, 0x61, 0x99, 0x2F,
                    /* 0CB8 */   0x29, 0x28, 0x51, 0x10, 0xCA, 0x7A, 0x49, 0x41,
                    /* 0CC0 */   0x59, 0x3D, 0x77, 0xD2, 0x6B, 0x0A, 0x78, 0xFF,
                    /* 0CC8 */   0xFF, 0xD7, 0x14, 0x80, 0xFF, 0xFF, 0xFF, 0x6B,
                    /* 0CD0 */   0x0A, 0x60, 0x23, 0xFE, 0x35, 0x05, 0x74, 0x3A,
                    /* 0CD8 */   0xAE, 0x29, 0x40, 0x57, 0xEE, 0x35, 0x05, 0x84,
                    /* 0CE0 */   0x53, 0x7F, 0x30, 0x61, 0x9E, 0x40, 0x74, 0x54,
                    /* 0CE8 */   0x81, 0x1D, 0xF8, 0xA6, 0x82, 0x8E, 0xF9, 0x24,
                    /* 0CF0 */   0xD0, 0xF9, 0x95, 0xCD, 0xC4, 0x67, 0x6E, 0x7E,
                    /* 0CF8 */   0x01, 0x78, 0xDA, 0x30, 0xD4, 0x11, 0x3C, 0xAD,
                    /* 0D00 */   0x79, 0x5A, 0x8C, 0x60, 0xA4, 0x9B, 0x0A, 0x2A,
                    /* 0D08 */   0x0C, 0x85, 0xC2, 0x9F, 0x08, 0x28, 0x9C, 0xE3,
                    /* 0D10 */   0x1E, 0x21, 0x28, 0x88, 0x01, 0x9D, 0xE5, 0x08,
                    /* 0D18 */   0x81, 0xFC, 0xFF, 0x5F, 0x4D, 0xD8, 0x44, 0x70,
                    /* 0D20 */   0xC7, 0x82, 0xE6, 0xC7, 0x28, 0x90, 0x87, 0x06,
                    /* 0D28 */   0x76, 0x54, 0x01, 0x86, 0x27, 0x08, 0x76, 0x00,
                    /* 0D30 */   0x01, 0x16, 0x87, 0x74, 0x0F, 0x97, 0x07, 0xB8,
                    /* 0D38 */   0xE7, 0x50, 0x10, 0x9F, 0xD1, 0x81, 0xEB, 0xE9,
                    /* 0D40 */   0x1B, 0x1C, 0x07, 0x10, 0xFC, 0xB8, 0xE0, 0x9C,
                    /* 0D48 */   0x0A, 0x70, 0x77, 0x05, 0xDC, 0x39, 0x05, 0xD8,
                    /* 0D50 */   0xFC, 0xFF, 0xCF, 0x29, 0xC0, 0x74, 0xD9, 0x3E,
                    /* 0D58 */   0xA7, 0x80, 0xEB, 0xAA, 0xE4, 0x73, 0x0A, 0x70,
                    /* 0D60 */   0x15, 0x7C, 0x48, 0x07, 0xDD, 0xD9, 0xC1, 0x07,
                    /* 0D68 */   0x03, 0x7E, 0x27, 0x35, 0xDC, 0xC3, 0x8A, 0x51,
                    /* 0D70 */   0x1F, 0x4C, 0x18, 0xCA, 0x13, 0xB2, 0x4F, 0x07,
                    /* 0D78 */   0xEC, 0x86, 0xC6, 0x12, 0xAD, 0x57, 0x07, 0x15,
                    /* 0D80 */   0x5C, 0x8E, 0xC7, 0x95, 0xCE, 0xA8, 0xEC, 0xA0,
                    /* 0D88 */   0x02, 0x06, 0xCD, 0xB0, 0x3A, 0xA8, 0x70, 0xB5,
                    /* 0D90 */   0x30, 0xD2, 0xFA, 0x00, 0xD0, 0x51, 0x83, 0xAB,
                    /* 0D98 */   0x3B, 0xB5, 0x53, 0x10, 0x5F, 0x48, 0x7C, 0x43,
                    /* 0DA0 */   0x03, 0xDB, 0xFF, 0xFF, 0xB8, 0x0E, 0x30, 0x62,
                    /* 0DA8 */   0xFC, 0x38, 0x18, 0x9F, 0x5C, 0x7C, 0x42, 0x62,
                    /* 0DB0 */   0x27, 0x83, 0x77, 0x09, 0x76, 0x5C, 0x07, 0x66,
                    /* 0DB8 */   0xB3, 0xC7, 0x5E, 0x8D, 0x80, 0xE3, 0xFF, 0x1F,
                    /* 0DC0 */   0xC9, 0x57, 0x23, 0xB0, 0x1D, 0x24, 0x7C, 0xB6,
                    /* 0DC8 */   0x01, 0xCF, 0xA8, 0xC0, 0x7A, 0x62, 0xF0, 0xFD,
                    /* 0DD0 */   0x09, 0x38, 0xDF, 0x07, 0x01, 0x07, 0x17, 0x1F,
                    /* 0DD8 */   0x5F, 0x8C, 0x80, 0xEB, 0xFF, 0xFF, 0x62, 0x04,
                    /* 0DE0 */   0xEE, 0x41, 0xFB, 0x62, 0x04, 0x38, 0xB9, 0xF8,
                    /* 0DE8 */   0xF3, 0x8B, 0x11, 0xF8, 0x14, 0xDA, 0xF4, 0xA9,
                    /* 0DF0 */   0xD1, 0xA8, 0x55, 0x83, 0x32, 0x35, 0xCA, 0x34,
                    /* 0DF8 */   0xA8, 0xD5, 0xA7, 0x52, 0x63, 0xC6, 0x0E, 0x24,
                    /* 0E00 */   0x16, 0xB4, 0x64, 0xDD, 0xDF, 0x08, 0x08, 0x0D,
                    /* 0E08 */   0xFE, 0xAE, 0x10, 0x88, 0xC3, 0x7B, 0x00, 0x61,
                    /* 0E10 */   0xD2, 0x17, 0x25, 0x10, 0xC7, 0x34, 0x71, 0xD1,
                    /* 0E18 */   0xD1, 0xD9, 0xD8, 0x20, 0x02, 0x72, 0x42, 0x15,
                    /* 0E20 */   0x40, 0x2C, 0x2F, 0x88, 0x80, 0xAC, 0xE4, 0x45,
                    /* 0E28 */   0x2D, 0x20, 0xCB, 0x02, 0x11, 0x90, 0x45, 0x7C,
                    /* 0E30 */   0x2F, 0x05, 0x64, 0x49, 0x20, 0x02, 0x72, 0x58,
                    /* 0E38 */   0x1A, 0x81, 0x58, 0xEA, 0x67, 0x46, 0x20, 0x8E,
                    /* 0E40 */   0xFB, 0x0E, 0x10, 0xA0, 0xB3, 0x83, 0x08, 0xC8,
                    /* 0E48 */   0xBA, 0xA5, 0x00, 0xB1, 0x10, 0x20, 0x02, 0xB2,
                    /* 0E50 */   0x60, 0x2B, 0x40, 0x4C, 0x3E, 0x88, 0x06, 0x41,
                    /* 0E58 */   0xCC, 0x80, 0xB0, 0x08, 0x20, 0x34, 0xF8, 0x37,
                    /* 0E60 */   0x44, 0x80, 0x56, 0xE1, 0x06, 0x88, 0xA5, 0x01,
                    /* 0E68 */   0x11, 0x90, 0xA3, 0x01, 0x51, 0x49, 0x0F, 0x0A,
                    /* 0E70 */   0x01, 0xF9, 0xFF, 0xAF, 0x0F, 0x44, 0x40, 0xD6,
                    /* 0E78 */   0x63, 0x07, 0x88, 0xA9, 0x03, 0x11, 0x90, 0x53,
                    /* 0E80 */   0x02, 0xD1, 0xCC, 0x40, 0x54, 0xC8, 0xBB, 0x40,
                    /* 0E88 */   0x40, 0x56, 0x05, 0x22, 0x20, 0x07, 0x04, 0xA2,
                    /* 0E90 */   0x69, 0x81, 0xA8, 0x58, 0x43, 0x40, 0x4C, 0x39,
                    /* 0E98 */   0x88, 0x06, 0x45, 0x14, 0x01, 0x31, 0x45, 0x20,
                    /* 0EA0 */   0x02, 0x72, 0x12, 0x20, 0x1A, 0x0B, 0x88, 0xC6,
                    /* 0EA8 */   0x70, 0x04, 0xC4, 0x42, 0x81, 0x08, 0xC8, 0x41,
                    /* 0EB0 */   0x2D, 0x01, 0xB1, 0xD4, 0x20, 0x02, 0xB2, 0x7A,
                    /* 0EB8 */   0x4D, 0x40, 0x2C, 0x0A, 0x88, 0x06, 0x44, 0x1E,
                    /* 0EC0 */   0xA0, 0x07, 0xC4, 0x40, 0x04, 0x64, 0x15, 0x1F,
                    /* 0EC8 */   0x30, 0x01, 0x59, 0x13, 0x88, 0x80, 0x9C, 0x07,
                    /* 0ED0 */   0x88, 0xA6, 0x03, 0xA2, 0x2A, 0x4D, 0x01, 0x31,
                    /* 0ED8 */   0xCD, 0x20, 0x02, 0x72, 0x7A, 0x20, 0xAA, 0x45,
                    /* 0EE0 */   0x15, 0x10, 0xD3, 0xF4, 0xBC, 0x10, 0x90, 0x05,
                    /* 0EE8 */   0x82, 0x68, 0x40, 0x04, 0x88, 0xA6, 0x06, 0xA2,
                    /* 0EF0 */   0xA2, 0x6D, 0x01, 0xB1, 0x04, 0x20, 0x02, 0x72,
                    /* 0EF8 */   0x74, 0x20, 0xAA, 0xE3, 0xEB, 0x20, 0x20, 0x67,
                    /* 0F00 */   0x01, 0x11, 0x90, 0x83, 0x01, 0xD1, 0x1C, 0xBE,
                    /* 0F08 */   0x80, 0x58, 0x2A, 0x10, 0x0D, 0x88, 0x7C, 0x90,
                    /* 0F10 */   0x1E, 0x60, 0x88, 0xA2, 0x97, 0xC9, 0x81, 0x31,
                    /* 0F18 */   0x10, 0xAA, 0xC1, 0x1A, 0x28, 0x13, 0x04, 0xA2,
                    /* 0F20 */   0x93, 0x08, 0x79, 0x2A, 0x09, 0xC8, 0x72, 0x40,
                    /* 0F28 */   0x04, 0xE4, 0x48, 0x40, 0x34, 0x20, 0x10, 0x0D,
                    /* 0F30 */   0xFF, 0xAB, 0x12, 0x90, 0xA5, 0x98, 0x03, 0x62,
                    /* 0F38 */   0xA1, 0x40, 0x04, 0xE4, 0x88, 0x40, 0x54, 0x80,
                    /* 0F40 */   0x3C, 0x20, 0xA6, 0x06, 0x44, 0x40, 0x4E, 0x05,
                    /* 0F48 */   0x44, 0x23, 0x02, 0x51, 0xA1, 0xF6, 0x80, 0x98,
                    /* 0F50 */   0x6A, 0x10, 0x0D, 0x8B, 0x7C, 0x7D, 0x34, 0x6C,
                    /* 0F58 */   0x02, 0x22, 0x20, 0xFF, 0xFF, 0xB3, 0xBC, 0x5F,
                    /* 0F60 */   0x34, 0x44, 0x02, 0x22, 0x20, 0x8B, 0xFA, 0xB7,
                    /* 0F68 */   0x04, 0x22, 0x0A, 0x41, 0x04, 0x64, 0x45, 0x9F,
                    /* 0F70 */   0xDB, 0x47, 0x07, 0x06, 0x22, 0x20, 0xA7, 0x03,
                    /* 0F78 */   0xA2, 0x59, 0x81, 0xA8, 0x86, 0x47, 0x8D, 0x06,
                    /* 0F80 */   0x49, 0x40, 0x04, 0xE4, 0x30, 0x40, 0x34, 0x19,
                    /* 0F88 */   0x10, 0x4D, 0xA2, 0x11, 0x88, 0xE5, 0x02, 0x11,
                    /* 0F90 */   0x90, 0x55, 0xFD, 0xFF, 0x02, 0x11, 0x8D, 0x20,
                    /* 0F98 */   0x3A, 0x66, 0x90, 0xC7, 0x4B, 0x20, 0x92, 0x02,
                    /* 0FA0 */   0x44, 0x83, 0x20, 0x2A, 0x8F, 0x0F, 0x14, 0x44,
                    /* 0FA8 */   0x47, 0x03, 0xF2, 0xC1, 0x79, 0x34, 0x60, 0x20,
                    /* 0FB0 */   0x3A, 0x1A, 0x10, 0x20, 0x9A, 0x1A, 0x88, 0xCA,
                    /* 0FB8 */   0xFD, 0xD5, 0x04, 0x22, 0xDA, 0x41, 0x04, 0x64,
                    /* 0FC0 */   0xAD, 0x3A, 0x8F, 0x14, 0x14, 0x44, 0x40, 0xD6,
                    /* 0FC8 */   0xFF, 0xDA, 0x09, 0x44, 0xC2, 0x80, 0x68, 0xA0,
                    /* 0FD0 */   0xC4, 0xE8, 0x40, 0x29, 0x88, 0x80, 0x2C, 0xE8,
                    /* 0FD8 */   0xC5, 0x13, 0x88, 0xC8, 0x03, 0xD1, 0x11, 0x83,
                    /* 0FE0 */   0x3C, 0x7B, 0x0E, 0x80, 0x81, 0x08, 0xC8, 0x0A,
                    /* 0FE8 */   0xAC, 0x1E, 0x0C, 0x28, 0x88, 0x8E, 0x10, 0x04,
                    /* 0FF0 */   0x88, 0x6A, 0xD1, 0x0A, 0xC4, 0x04, 0x3E, 0xE8,
                    /* 0FF8 */   0x04, 0x64, 0xB5, 0x20, 0x02, 0xB2, 0xBA, 0x97,
                    /* 1000 */   0x51, 0x20, 0xA2, 0x15, 0x44, 0x40, 0xCE, 0x0A,
                    /* 1008 */   0x44, 0x93, 0x03, 0x51, 0x3D, 0x1F, 0x68, 0x01,
                    /* 1010 */   0x59, 0x1C, 0x88, 0x80, 0x1C, 0x12, 0x88, 0x26,
                    /* 1018 */   0x06, 0xA2, 0x52, 0xED, 0x02, 0x31, 0xDD, 0x20,
                    /* 1020 */   0x02, 0x72, 0x6A, 0x20, 0x2A, 0x41, 0xEF, 0x20,
                    /* 1028 */   0x29, 0x88, 0x06, 0x49, 0x80, 0xA8, 0xF8, 0x5F,
                    /* 1030 */   0xD2, 0xA3, 0x07, 0x03, 0x11, 0x90, 0xFF, 0xFF
                })
                Method (EVBC, 0, NotSerialized)
                {
                    Store (DerefOf (Index (FEBC, Zero)), Local0)
                    If (LOr (LEqual (Local0, Zero), LGreater (Local0, 0x04)))
                    {
                        Store (Zero, Index (FEBC, Zero))
                        Store (Zero, Index (FEBC, One))
                        Return (FEBC)
                    }

                    If (LEqual (Local0, One))
                    {
                        Store (DerefOf (Index (FEBC, One)), Local1)
                        Store (Zero, Local2)
                        Store (Zero, Local3)
                        If (LAnd (LGreater (Local1, Zero), LLess (Local1, 0x20)))
                        {
                            Store (GCMS (RefOf (Local2)), Local3)
                            If (LEqual (Local3, Zero))
                            {
                                And (Local2, CTHT, Local2)
                            }
                        }
                        Else
                        {
                            If (LAnd (LGreater (Local1, 0x80), LLess (Local1, 0xFF)))
                            {
                                Store (GOTS (RefOf (Local2)), Local3)
                            }
                        }

                        If (LNotEqual (Local3, Zero))
                        {
                            Store (Zero, Index (FEBC, Zero))
                            Store (Zero, Index (FEBC, One))
                            Return (FEBC)
                        }

                        Store (And (Local2, 0xFF), Index (FEBC, 0x02))
                        ShiftRight (Local2, 0x08, Local2)
                        Store (And (Local2, 0xFF), Index (FEBC, 0x03))
                    }
                    Else
                    {
                        If (LEqual (Local0, 0x04)) {}
                        Else
                        {
                            Store (Zero, Index (FEBC, 0x02))
                            Store (Zero, Index (FEBC, 0x03))
                        }
                    }

                    Store (Zero, Index (FEBC, 0x04))
                    Store (Zero, Index (FEBC, 0x05))
                    Store (Zero, Index (FEBC, 0x06))
                    Store (Zero, Index (FEBC, 0x07))
                    Return (FEBC)
                }

                Method (WMAA, 3, NotSerialized)
                {
                    Store ("AA", MTNM)
                    If (LEqual (Arg1, One))
                    {
                        Store (WMIS (Arg1, Arg2), AAST)
                        Return (AAST)
                    }
                    Else
                    {
                        Store (WMIS (Arg1, Arg2), AAGT)
                        Return (AAGT)
                    }
                }

                Method (WMBL, 3, NotSerialized)
                {
                    Store ("BL", MTNM)
                    If (LEqual (Arg1, One))
                    {
                        Store (WMIS (Arg1, Arg2), BLGT)
                        Return (BLGT)
                    }
                    Else
                    {
                        Store (WMIS (Arg1, Arg2), BLST)
                        Return (BLST)
                    }
                }

                Method (WMBE, 3, NotSerialized)
                {
                    Store ("BE", MTNM)
                    Store (WMIS (Arg1, Arg2), BEGT)
                    Return (BEGT)
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                {
                    If (LEqual (Arg0, 0xBC))
                    {
                        Return (EVBC ())
                    }

                    Store (Zero, Index (FEBC, Zero))
                    Store (Zero, Index (FEBC, One))
                    Store (Zero, Index (FEBC, 0x02))
                    Store (Zero, Index (FEBC, 0x03))
                    Store (Zero, Index (FEBC, 0x04))
                    Store (Zero, Index (FEBC, 0x05))
                    Store (Zero, Index (FEBC, 0x06))
                    Store (Zero, Index (FEBC, 0x07))
                    Return (FEBC)
                }
            }

            Device (CWMI)
            {
                Name (_HID, "PNP0C14")  // _HID: Hardware ID
                Name (_UID, "COMP")  // _UID: Unique ID
                Name (FEBC, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (AAST, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Name (AAGT, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (BLST, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Name (BLGT, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Name (BEGT, Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00
                })
                Name (_WDG, Buffer (0x14)
                {
                    /* 0000 */   0xFF, 0x5F, 0xEC, 0x37, 0x99, 0x1B, 0xBA, 0x4F,
                    /* 0008 */   0xAC, 0x3C, 0x0C, 0x82, 0x0B, 0xC3, 0xD5, 0xCC,
                    /* 0010 */   0x30, 0x30, 0x01, 0x02
                })
                Method (WM00, 3, NotSerialized)
                {
                    Store ("00", MTNM)
                    If (LEqual (Arg1, 0x06))
                    {
                        WMIS (Arg1, Arg2)
                        Return (DI00)
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
                ), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
                ), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
                ), P80D)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (Or (And (P80D, Zero), Arg1), P80D)
        }

        If (LEqual (Arg2, Zero)) {}
        If (LEqual (Arg2, One))
        {
            Store (P80D, P80H)
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0, Zero)
        If (LEqual (Arg0, 0x03))
        {
            CMSW (0x62, Zero)
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            \_SB.PCI0.GFX0.GLID (0x03)
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            OSMI (0x81)
            \_SB.PCI0.GFX0.GLID (0x03)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        Store (Zero, P80D)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LEqual (Arg0, 0x03))
        {
            CMSW (0x62, One)
            Notify (\_SB.PCI0.LPCB.PWRB, 0x02)
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
            If (LAnd (\_SB.PCI0.LPCB.EC0.BTEX, \_SB.PCI0.LPCB.EC0.BTAT))
            {
                Store (Zero, BTPD)
            }
            Else
            {
                Store (One, BTPD)
            }

            If (LAnd (\_SB.PCI0.LPCB.EC0.EX3G, \_SB.PCI0.LPCB.EC0.AT3G))
            {
                Store (One, WANE)
            }
            Else
            {
                Store (Zero, WANE)
            }

            If (LAnd (\_SB.PCI0.LPCB.EC0.WLEX, \_SB.PCI0.LPCB.EC0.WLAT))
            {
                Store (One, LANE)
            }
            Else
            {
                Store (Zero, LANE)
            }

            OSMI (0x82)
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LAnd (DTSE, LGreater (TCNT, One)))
            {
                TRAP (TRTD, 0x14)
            }

            If (LEqual (PMEE, One))
            {
                Store (One, PMEN)
            }

            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC)
                        PNOT ()
                    }
                }
            }

            If (LEqual (RP1D, Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If (LEqual (RP2D, Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If (LEqual (RP3D, Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If (LEqual (RP4D, Zero))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If (LEqual (RP5D, Zero))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If (LEqual (RP7D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If (LEqual (RP8D, Zero))
            {
                If (LEqual (DSTS, Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
            Notify (\_SB.PCI0.LPCB.LID0, 0x80)
            If (LAnd (\_SB.PCI0.LPCB.EC0.BTEX, \_SB.PCI0.LPCB.EC0.BTAT))
            {
                Store (Zero, BTPD)
            }
            Else
            {
                Store (One, BTPD)
            }

            If (LAnd (\_SB.PCI0.LPCB.EC0.EX3G, \_SB.PCI0.LPCB.EC0.AT3G))
            {
                Store (One, WANE)
            }
            Else
            {
                Store (Zero, WANE)
            }

            If (LAnd (\_SB.PCI0.LPCB.EC0.WLEX, \_SB.PCI0.LPCB.EC0.WLAT))
            {
                Store (One, LANE)
            }
            Else
            {
                Store (Zero, LANE)
            }

            OSMI (0x83)
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (PSTA, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, ^GFX0.CLID)
            CMSW (0x62, One)
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2001.1"))
                {
                    Store (0x07D3, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }

                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            Store (Zero, ^RP01.HPEX)
            Store (Zero, ^RP02.HPEX)
            Store (Zero, ^RP03.HPEX)
            Store (Zero, ^RP04.HPEX)
            Store (Zero, ^RP05.HPEX)
            Store (Zero, ^RP07.HPEX)
            Store (Zero, ^RP08.HPEX)
            Store (One, ^RP01.HPSX)
            Store (One, ^RP02.HPSX)
            Store (One, ^RP03.HPSX)
            Store (One, ^RP04.HPSX)
            Store (One, ^RP05.HPSX)
            Store (One, ^RP07.HPSX)
            Store (One, ^RP08.HPSX)
        }

        Method (NPME, 0, Serialized)
        {
            Store (Zero, ^RP01.PMEX)
            Store (Zero, ^RP02.PMEX)
            Store (Zero, ^RP03.PMEX)
            Store (Zero, ^RP04.PMEX)
            Store (Zero, ^RP05.PMEX)
            Store (Zero, ^RP07.PMEX)
            Store (Zero, ^RP08.PMEX)
            Store (One, ^RP01.PMSX)
            Store (One, ^RP02.PMSX)
            Store (One, ^RP03.PMSX)
            Store (One, ^RP04.PMSX)
            Store (One, ^RP05.PMSX)
            Store (One, ^RP07.PMSX)
            Store (One, ^RP08.PMSX)
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, MBR0)  // _BAS: Base Address
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, DBR0)  // _BAS: Base Address
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, EBR0)  // _BAS: Base Address
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, XBR0)  // _BAS: Base Address
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._LEN, XSZ0)  // _LEN: Length
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (LEqual (And (DID6, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD06, Arg0)
        }

        If (LEqual (And (DID7, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD07, Arg0)
        }

        If (LEqual (And (DID8, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD08, Arg0)
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
            Offset (0x3C), 
            PMEN,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
                ,   3, 
            GSO3,   1, 
            Offset (0x05), 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GP00,   1, 
            GP01,   1, 
            GP02,   1, 
            GP03,   1, 
            GP04,   1, 
            GP05,   1, 
            GP06,   1, 
            GP07,   1, 
            GL01,   8, 
            GL02,   8, 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
                ,   3, 
            GV03,   1, 
                ,   2, 
            HDME,   1, 
                ,   4, 
            LPDL,   1, 
            Offset (0x2E), 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
                ,   2, 
            BTPD,   1, 
                ,   2, 
            WANE,   1, 
            Offset (0x39), 
            GL05,   8, 
            GP48,   1, 
            LANE,   1, 
            GP50,   1, 
            GP51,   1, 
            GP52,   1, 
            GP53,   1, 
            GP54,   1, 
            GP55,   1, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
                ,   3, 
            GP67,   1, 
            GP68,   1, 
            Offset (0x49), 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x3000), 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }

        Method (GPI0, 4, NotSerialized)
        {
            If (LEqual (Or (Arg0, Arg1), Zero))
            {
                Return (Ones)
            }
            Else
            {
                If (And (LEqual (Arg0, Zero), LEqual (Arg1, One)))
                {
                    Return (0x0384)
                }
            }

            Return (Multiply (0x1E, Subtract (0x09, Add (Arg2, Arg3))
                ))
        }

        Method (GDMA, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                If (LEqual (Arg1, One))
                {
                    Return (0x0F)
                }
            }

            Return (Ones)
        }

        Method (SFLG, 5, NotSerialized)
        {
            Store (Zero, Local0)
            Or (Arg1, Local0, Local0)
            Or (ShiftLeft (Arg0, One), Local0, Local0)
            Or (ShiftLeft (Arg2, 0x03), Local0, Local0)
            Or (ShiftLeft (Arg3, 0x02), Local0, Local0)
            Or (ShiftLeft (Arg4, 0x04), Local0, Local0)
            Return (Local0)
        }

        Method (SPIO, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PBUF, Zero, RCT)
            CreateByteField (PBUF, One, ISP)
            CreateByteField (PBUF, 0x02, FAST)
            CreateByteField (PBUF, 0x03, DMAE)
            CreateByteField (PBUF, 0x04, PIOT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LGreater (Arg0, 0xF0))
            {
                Store (One, DMAE)
                Store (Zero, PIOT)
            }
            Else
            {
                Store (One, FAST)
                If (And (Arg1, 0x02))
                {
                    If (And (LEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Store (0x03, RCT)
                        Store (0x02, ISP)
                        Store (0x04, PIOT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0xB4), And (Arg2, One)
                        ))
                    {
                        Store (One, RCT)
                        Store (0x02, ISP)
                        Store (0x03, PIOT)
                        Return (PBUF)
                    }
                    Else
                    {
                        Store (Zero, RCT)
                        Store (One, ISP)
                        Store (0x02, PIOT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SDMA, 3, NotSerialized)
        {
            Name (PBUF, Buffer (0x05)
            {
                 0x00, 0x00, 0x00, 0x00
            })
            CreateByteField (PBUF, Zero, PCT)
            CreateByteField (PBUF, One, PCB)
            CreateByteField (PBUF, 0x02, UDMT)
            CreateByteField (PBUF, 0x03, UDME)
            CreateByteField (PBUF, 0x04, DMAT)
            If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, Ones)))
            {
                Return (PBUF)
            }

            If (LLessEqual (Arg0, 0x78))
            {
                If (And (Arg1, 0x04))
                {
                    Store (One, UDME)
                    If (And (LLessEqual (Arg0, 0x0F), And (Arg2, 0x40)
                        ))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x06, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x14), And (Arg2, 0x20)
                        ))
                    {
                        Store (One, UDMT)
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x05, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x1E), And (Arg2, 0x10)
                        ))
                    {
                        Store (One, PCB)
                        Store (0x02, PCT)
                        Store (0x04, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x2D), And (Arg2, 0x08)
                        ))
                    {
                        Store (One, PCB)
                        Store (One, PCT)
                        Store (0x03, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x3C), And (Arg2, 0x04)
                        ))
                    {
                        Store (0x02, PCT)
                        Store (0x02, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x5A), And (Arg2, 0x02)
                        ))
                    {
                        Store (One, PCT)
                        Store (One, DMAT)
                        Return (PBUF)
                    }

                    If (And (LLessEqual (Arg0, 0x78), And (Arg2, One)
                        ))
                    {
                        Store (Zero, DMAT)
                    }
                }
            }

            Return (PBUF)
        }

        Method (SETT, 3, Serialized)
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x0B)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x09)
                }
            }

            Return (0x04)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (WOLE)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        Zero
                    })
                }
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            /*           Revision : 01     */
                            /*        IgnoreColor : 01     */
                            /*              Color : 000000 */
                            /*              Width : 0000   */
                            /*             Height : 0000   */
                            /*        UserVisible : 00     */
                            /*               Dock : 00     */
                            /*                Lid : 00     */
                            /*              Panel : 06     */
                            /*   VerticalPosition : 00     */
                            /* HorizontalPosition : 00     */
                            /*              Shape : 07     */
                            /*   GroupOrientation : 00     */
                            /*         GroupToken : 00     */
                            /*      GroupPosition : 00     */
                            /*                Bay : 00     */
                            /*          Ejectable : 00     */
                            /*  OspmEjectRequired : 00     */
                            /*      CabinetNumber : 00     */
                            /*     CardCageNumber : 00     */
                            /*          Reference : 00     */
                            /*           Rotation : 00     */
                            /*              Order : 00     */
                            /*     VerticalOffset : 0000   */
                            /*   HorizontalOffset : 0000   */
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB1, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 01     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC)
                }
                Else
                {
                    Store (Zero, PWUC)
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            /* 0008 */   0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            /*           Revision : 01     */
                            /*        IgnoreColor : 01     */
                            /*              Color : 000000 */
                            /*              Width : 0000   */
                            /*             Height : 0000   */
                            /*        UserVisible : 00     */
                            /*               Dock : 00     */
                            /*                Lid : 00     */
                            /*              Panel : 06     */
                            /*   VerticalPosition : 00     */
                            /* HorizontalPosition : 00     */
                            /*              Shape : 07     */
                            /*   GroupOrientation : 00     */
                            /*         GroupToken : 00     */
                            /*      GroupPosition : 00     */
                            /*                Bay : 00     */
                            /*          Ejectable : 00     */
                            /*  OspmEjectRequired : 00     */
                            /*      CabinetNumber : 00     */
                            /*     CardCageNumber : 00     */
                            /*          Reference : 00     */
                            /*           Rotation : 00     */
                            /*              Order : 00     */
                            /*     VerticalOffset : 0000   */
                            /*   HorizontalOffset : 0000   */
                        }
                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */   0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B,
                                        /* 0008 */   0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                While (One)
                                {
                                    Store (ToInteger (Arg2), _T_0)
                                    If (LEqual (_T_0, Zero))
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00
                                            })
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, One))
                                        {
                                            If (LEqual (SDGV, 0xFF))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                Return (One)
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x02))
                                            {
                                                Return (SDGV)
                                            }
                                        }
                                    }

                                    Break
                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */   0xB0, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                /*           Revision : 01     */
                                /*        IgnoreColor : 01     */
                                /*              Color : 000000 */
                                /*              Width : 0000   */
                                /*             Height : 0000   */
                                /*        UserVisible : 00     */
                                /*               Dock : 00     */
                                /*                Lid : 00     */
                                /*              Panel : 06     */
                                /*   VerticalPosition : 02     */
                                /* HorizontalPosition : 01     */
                                /*              Shape : 06     */
                                /*   GroupOrientation : 00     */
                                /*         GroupToken : 00     */
                                /*      GroupPosition : 00     */
                                /*                Bay : 00     */
                                /*          Ejectable : 00     */
                                /*  OspmEjectRequired : 00     */
                                /*      CabinetNumber : 00     */
                                /*     CardCageNumber : 00     */
                                /*          Reference : 00     */
                                /*           Rotation : 00     */
                                /*              Order : 00     */
                                /*     VerticalOffset : 0000   */
                                /*   HorizontalOffset : 0000   */
                            }
                        })
                    }
                }
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                    ,   15, 
                PMES,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (WKMD)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        Zero
                    })
                }
            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR05, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05)
                }

                Return (PR05)
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06)
                }

                Return (PR06)
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR07, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x11
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07)
                }

                Return (PR07)
            }
        }

        Device (RP04)
        {
            Name (_ADR, 0x001C0003)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (PMEE)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        Zero
                    })
                }
            }

            Name (PR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR08, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR08)
                }

                Return (PR08)
            }
        }

        Device (RP05)
        {
            Name (_ADR, 0x001C0004)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR09, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR09)
                }

                Return (PR09)
            }
        }

        Device (RP06)
        {
            Name (_ADR, 0x001C0005)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR0C, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR0C, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0C)
                }

                Return (PR0C)
            }
        }

        Device (RP07)
        {
            Name (_ADR, 0x001C0006)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR0D, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKF, 
                    Zero
                }
            })
            Name (AR0D, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x15
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0D)
                }

                Return (PR0D)
            }
        }

        Device (RP08)
        {
            Name (_ADR, 0x001C0007)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                LSCX,   1, 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        Store (One, PMSX)
                        If (PMSX)
                        {
                            Decrement (Local0)
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Name (PR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR0E, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0E)
                }

                Return (PR0E)
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (SAT1)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.P0P1, 0x02)
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (RP1D, Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            Notify (\_SB.PCI0.RP02, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            If (LEqual (RP4D, Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            Notify (\_SB.PCI0.RP07, 0x02)
            Notify (\_SB.PCI0.RP08, 0x02)
            Notify (\_SB.PCI0.PEG0, 0x02)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
            Notify (\_SB.PCI0.PEG1, 0x02)
            Notify (\_SB.PCI0.PEG2, 0x02)
            Notify (\_SB.PCI0.PEG3, 0x02)
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
            Notify (\_SB.PCI0.GLAN, 0x02)
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    If (LNot (\_SB.PCI0.RP01.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP01.L0SE)
                    }

                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    If (LNot (\_SB.PCI0.RP02.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP02.L0SE)
                    }

                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    If (LNot (\_SB.PCI0.RP03.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP03.L0SE)
                    }

                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                P8XH (One, 0x04, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    If (LNot (\_SB.PCI0.RP04.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP04.L0SE)
                    }

                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }

            If (LAnd (LEqual (RP5D, Zero), \_SB.PCI0.RP05.HPSX))
            {
                P8XH (One, 0x05, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP05.PDCX)
                {
                    Store (One, \_SB.PCI0.RP05.PDCX)
                    Store (One, \_SB.PCI0.RP05.HPSX)
                    If (LNot (\_SB.PCI0.RP05.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP05.L0SE)
                    }

                    Notify (\_SB.PCI0.RP05, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP05.HPSX)
                }
            }

            If (LAnd (LEqual (RP7D, Zero), \_SB.PCI0.RP07.HPSX))
            {
                P8XH (One, 0x07, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP07.PDCX)
                {
                    Store (One, \_SB.PCI0.RP07.PDCX)
                    Store (One, \_SB.PCI0.RP07.HPSX)
                    If (LNot (\_SB.PCI0.RP07.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP07.L0SE)
                    }
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP07.HPSX)
                }
            }

            If (LAnd (LEqual (RP8D, Zero), \_SB.PCI0.RP08.HPSX))
            {
                P8XH (One, 0x08, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP08.PDCX)
                {
                    Store (One, \_SB.PCI0.RP08.PDCX)
                    Store (One, \_SB.PCI0.RP08.HPSX)
                    If (LNot (\_SB.PCI0.RP08.PDSX))
                    {
                        Store (Zero, \_SB.PCI0.RP08.L0SE)
                    }
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP08.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (Zero, GPEC)
            If (CondRefOf (\_SB.PCI0.IEIT.EITV))
            {
                \_SB.PCI0.IEIT.EITV ()
            }

            If (CondRefOf (\TNOT))
            {
                TNOT ()
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }

        Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x11, P80H)
            Not (LANE, LANE)
            Not (\_SB.PCI0.LPCB.EC0.WLAT, Local0)
            Store (Local0, \_SB.PCI0.LPCB.EC0.WLAT)
        }

        Method (_L15, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Not (LPDL, LPDL)
            Store (\_SB.PCI0.LPCB.EC0.LIDF, Local0)
            Not (Local0, Local0)
            If (LGreaterEqual (OSYS, 0x07D6))
            {
                Add (Local0, 0x02)
                \_SB.PCI0.GFX0.GLID (Local0)
            }

            Notify (\_SB.PCI0.LPCB.LID0, 0x80)
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000) {})
    OperationRegion (MDBG, SystemMemory, 0x96F6B018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
    }

    Method (DW2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x08, Local1)
        And (Local0, 0xFF, Local0)
        And (Local1, 0xFF, Local1)
        DB2H (Local1)
        Decrement (BUFN)
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Store (Arg0, Local0)
        ShiftRight (Arg0, 0x10, Local1)
        And (Local0, 0xFFFF, Local0)
        And (Local1, 0xFFFF, Local1)
        DW2H (Local1)
        Decrement (BUFN)
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (BUFS, Buffer (Local0) {})
        Store (Arg0, BUFS)
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (Index (BUFS, Subtract (SizeOf (Arg0), Local0))))
            Decrement (Local0)
        }
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC (ShiftRight (Arg0, 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Store (BUFN, Local0)
        And (Local0, 0x0F, Local0)
        While (Local0)
        {
            MDGC (Zero)
            Increment (Local0)
            And (Local0, 0x0F, Local0)
        }
    }

    Method (MDGC, 1, Serialized)
    {
        Store (Arg0, Index (MBUF, BUFN))
        Add (BUFN, One, BUFN)
        If (LGreater (BUFN, 0x0FFF))
        {
            And (BUFN, 0x0FFF, BUFN)
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Store (Arg0, Local2)
        ShiftLeft (Local2, 0x04, Local2)
        MOVE (Local2)
        Subtract (0x1000, Local2, Local3)
        While (Local2)
        {
            Store (Zero, Index (MBUF, Local3))
            Increment (Local3)
            Decrement (Local2)
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Store (Arg0, Local4)
        Store (Zero, BUFN)
        Subtract (0x1000, Local4, Local5)
        While (Local5)
        {
            Decrement (Local5)
            Store (DerefOf (Index (MBUF, Local4)), Index (MBUF, BUFN))
            Increment (BUFN)
            Increment (Local4)
        }
    }

    Method (NTOC, 1, Serialized)
    {
        And (Arg0, 0x0F, Local0)
        If (LLess (Local0, 0x0A))
        {
            Add (Local0, 0x30, Local0)
        }
        Else
        {
            Add (Local0, 0x37, Local0)
        }

        Return (Local0)
    }

    Scope (_SB.PCI0.SAT0)
    {
        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0x30, 0xEF, 0xFA, 0xBD, 0xBB, 0xAE, 0xDE, 0x11,
                            /* 0008 */   0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66
                        }))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    If (LEqual (PFLV, FDTP))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00
                                        })
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x0F
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00
                                    })
                                }

                                Break
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, One))
                            {
                                While (One)
                                {
                                    Store (PJID, _T_2)
                                    If (LEqual (_T_2, Zero))
                                    {
                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_2, One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_2, 0x02))
                                            {
                                                Return (Zero)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_2, 0x03))
                                                {
                                                    Return (Zero)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_2, 0x04))
                                                    {
                                                        Return (Zero)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_2, 0x05))
                                                        {
                                                            Return (Zero)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_2, 0x06))
                                                            {
                                                                Return (Zero)
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_2, 0x08))
                                                                {
                                                                    Return (Zero)
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_2, 0x09))
                                                                    {
                                                                        Return (Zero)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_2, 0x0A))
                                                                        {
                                                                            Return (Zero)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_2, 0x0B))
                                                                            {
                                                                                Return (Zero)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_2, 0x0C))
                                                                                {
                                                                                    Return (Zero)
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_2, 0x0D))
                                                                                    {
                                                                                        Return (Zero)
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_2, 0x0E))
                                                                                        {
                                                                                            Return (Zero)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If (LEqual (_T_2, 0x0F))
                                                                                            {
                                                                                                Return (Zero)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If (LEqual (_T_2, 0x10))
                                                                                                {
                                                                                                    Return (Zero)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If (LEqual (_T_2, 0x11))
                                                                                                    {
                                                                                                        Return (Zero)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        Store (0x14, P80H)
                                                                                                        Store (Zero, GPE3)
                                                                                                        Store (One, GPS3)
                                                                                                        Store (One, GV03)
                                                                                                        Store (One, GSO3)
                                                                                                        Store (One, GPE3)
                                                                                                        Return (One)
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    Store (0x15, P80H)
                                    Or (GP68, One, GP68)
                                    Sleep (0x01F4)
                                    Store (One, GPS3)
                                    Store (One, GPE3)
                                    OSMI (0x87)
                                    Return (One)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x03))
                                    {
                                        Store (0x16, P80H)
                                        Store (Zero, GPE3)
                                        OSMI (0x86)
                                        Sleep (0xC8)
                                        And (GP68, Zero, GP68)
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x13, P80H)
            Store (Zero, GPE3)
            OSMI (0x86)
            Sleep (0xC8)
            And (GP68, Zero, GP68)
            Notify (\_SB.PCI0.SAT0, 0x82)
            Return (Zero)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN)
                If (LEqual (And (Arg0, 0x03), Zero))
                {
                    If (CondRefOf (HDOS))
                    {
                        HDOS ()
                    }
                }
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                Store (0x04, NDID)
                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (DID1, Index (TMP4, Zero))
                    Store (DID2, Index (TMP4, One))
                    Store (DID3, Index (TMP4, 0x02))
                    Store (DID4, Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LEqual (NDID, 0x05))
                {
                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                If (LEqual (NDID, 0x06))
                {
                    Name (TMP6, Package (0x06)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP6, One))
                    Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                    Return (TMP6)
                }

                If (LEqual (NDID, 0x07))
                {
                    Name (TMP7, Package (0x07)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP7, One))
                    Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                    Return (TMP7)
                }

                If (LEqual (NDID, 0x08))
                {
                    Name (TMP8, Package (0x08)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP8, One))
                    Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                    Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                    Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                    Return (TMP8)
                }

                If (LEqual (NDID, 0x09))
                {
                    If (CondRefOf (HWID))
                    {
                        Return (HWID)
                    }
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD1)
                    }

                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (LIDS, Zero))
                    {
                        Return (Zero)
                    }

                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD2)
                    }

                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD3)
                    }

                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }

                Name (BRTS, Zero)
                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    Return (Package (0x0C)
                    {
                        0x46, 
                        0x28, 
                        0x0A, 
                        0x14, 
                        0x1E, 
                        0x28, 
                        0x32, 
                        0x3C, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    Divide (Arg0, 0x0A, Local0, Local1)
                    Decrement (Local1)
                    Store (Local1, ^^^LPCB.EC0.BRTS)
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Store (^^^LPCB.EC0.BRTS, Local0)
                    Add (Local0, One, Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Store (Local0, P80H)
                    Sleep (0x64)
                    Return (Local0)
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD4)
                    }

                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD5)
                    }

                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD6)
                    }

                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD7)
                    }

                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    If (LAnd (LEqual (And (SGMD, One), One), CondRefOf (SNXD
                        )))
                    {
                        Return (NXD8)
                    }

                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                And (Arg0, 0xFFFF, Local0)
                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                And (Arg0, 0xFFFF, Local0)
                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (CPDS, 1, NotSerialized)
            {
                And (Arg0, 0xFFFF, Local0)
                If (LEqual (CPDL, Local0))
                {
                    Return (One)
                }

                If (LEqual (CPL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (CPL3, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    TASM,   10, 
                    Offset (0x62)
                }
            }

            OperationRegion (IGDA, PCI_Config, Zero, 0x10)
            Field (IGDA, AnyAcc, NoLock, Preserve)
            {
                UVID,   16, 
                USID,   16
            }

            OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x12), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                Offset (0x14), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x18), 
                Offset (0xA4), 
                ASLE,   8, 
                Offset (0xA8), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xB0), 
                    ,   12, 
                CDVL,   1, 
                Offset (0xB2), 
                Offset (0xB5), 
                LBPC,   8, 
                Offset (0xBC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CADL,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x05)
            {
                Package (0x02)
                {
                    0xE4, 
                    0x0140
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }, 

                Package (0x02)
                {
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    0xDE, 
                    0x014D
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0679, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                            PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1800, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL
                            )), 0x15), PARM, PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        Store (KSV0, PARM)
                        Store (KSV1, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        Store (0x000F87FD, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        If (And (PARM, 0x0001E000))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                If (CondRefOf (HNOT))
                {
                    HNOT (Arg0)
                }
                Else
                {
                    Notify (GFX0, 0x80)
                }

                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                If (LEqual (Arg0, One))
                {
                    Store (0x03, CLID)
                }
                Else
                {
                    Store (Arg0, CLID)
                }

                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (^^MEM2)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (CRS, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x20000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x40000000,         // Address Base
                        0x00200000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If (IGDS)
                    {
                        Return (CRS)
                    }
                }
            }
        }

        Device (PEG0)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR0A, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0A)
                }

                Return (PR0A)
            }

            Device (PEGP)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
            }
        }

        Device (PEG1)
        {
            Name (_ADR, 0x00010001)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }
            })
            Name (AR02, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR02)
                }

                Return (PR02)
            }
        }

        Device (PEG2)
        {
            Name (_ADR, 0x00010002)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR03, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKB, 
                    Zero
                }
            })
            Name (AR03, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR03)
                }

                Return (PR03)
            }
        }

        Device (PEG3)
        {
            Name (_ADR, 0x00060000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Name (PR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR0B, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR0B)
                }

                Return (PR0B)
            }
        }

        Device (B0D4)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        If (S3DS)
        {
            Name (_S3, Package (0x04)  // _S3_: S3 System State
            {
                0x05, 
                Zero, 
                Zero, 
                Zero
            })
        }
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

