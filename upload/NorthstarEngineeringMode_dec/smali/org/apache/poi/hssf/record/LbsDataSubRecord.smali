.class public Lorg/apache/poi/hssf/record/LbsDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    }
.end annotation


# static fields
.field public static final sid:I = 0x13


# instance fields
.field private _bsels:[Z

.field private _cLines:I

.field private _cbFContinued:I

.field private _dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

.field private _flags:I

.field private _iSel:I

.field private _idEdit:I

.field private _linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private _rgLines:[Ljava/lang/String;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SubRecord;-><init>(Lorg/apache/poi/hssf/record/SubRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->copy()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    .line 11
    iget-object v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 12
    iget-object v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Z

    :goto_3
    iput-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 5

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_3

    .line 16
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    .line 17
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    .line 18
    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 19
    array-length v4, v3

    if-ne v4, v1, :cond_2

    .line 20
    aget-object v3, v3, v0

    iput-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x6

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    .line 21
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Unexpected leftover bytes"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    .line 23
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Read "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v3

    const-string p3, " tokens but expected exactly 1"

    .line 24
    invoke-static {p1, p2, p3}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 27
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 28
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 29
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    const/16 p2, 0x14

    if-ne p3, p2, :cond_4

    .line 30
    new-instance p2, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    :cond_4
    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 31
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    move p2, v0

    :goto_1
    iget p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    shr-int/lit8 p3, p2, 0x4

    and-int/2addr p3, v1

    shr-int/lit8 p2, p2, 0x5

    and-int/2addr p2, v1

    add-int/2addr p3, p2

    if-eqz p3, :cond_7

    iget p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 33
    new-array p2, p2, [Z

    iput-object p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    move p2, v0

    :goto_2
    iget p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    .line 34
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    aput-boolean v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    return-object p0
.end method

.method public static newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>()V

    const/16 v1, 0x1fee

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    const/16 v1, 0x301

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    new-instance v1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$002(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    iget-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$102(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    add-int/2addr v2, v1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->getDataSize()I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz p0, :cond_4

    array-length p0, p0

    add-int/2addr v2, p0

    :cond_4
    return v2
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/y1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/y1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v3, "unknownShort1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a2;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/a2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v3, "unknownPreFormulaInt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/y1;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/y1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string v4, "formula"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z1;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/z1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v4, "unknownPostFormulaByte"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a2;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/a2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string v3, "numberOfItems"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/y1;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/y1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v4, "selEntryIx"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z1;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/z1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v4, "style"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a2;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/a2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v3, "unknownShort10"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/y1;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/y1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string v4, "dropData"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z1;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/z1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string/jumbo v3, "rgLines"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z1;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/z1;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V

    const-string p0, "bsels"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->LBS_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getNumberOfItems()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    return p0
.end method

.method public isTerminating()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    add-int/lit8 v2, v0, 0x6

    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x7

    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-static {p1, v4}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz p0, :cond_5

    array-length v0, p0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-boolean v2, p0, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
