.class public Lorg/apache/poi/xwpf/usermodel/TOC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/TOC;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->addNewId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    const-wide/32 v1, 0x49ed91

    .line 5
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    .line 6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->addNewDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;->addNewDocPartGallery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    const-string v0, "Table of contents"

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtEndPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    .line 10
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    .line 11
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    .line 12
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    .line 13
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    .line 14
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    .line 15
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v0

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->setVal(Ljava/lang/Object;)V

    .line 17
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    const-wide/16 v1, 0x18

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    .line 19
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object p0

    .line 20
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    .line 21
    sget-object p1, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v0, "00EF7E24"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidR([B)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    .line 23
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p1

    const-string v0, "TOCHeading"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    const-string p1, "Table of Contents"

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRow(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v1, "00EF7E24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidR([B)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TOC"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewTabs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc;->RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;)V

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc;->DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;)V

    const-wide/16 v1, 0x2062

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setPos(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewInstrText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    sget-object p2, Lp5/a;->B0:Lp5/a$a;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setSpace(Lp5/a$a;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " PAGEREF _Toc"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \\h "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->SEPARATE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    return-void
.end method

.method public getBlock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    return-object p0
.end method
