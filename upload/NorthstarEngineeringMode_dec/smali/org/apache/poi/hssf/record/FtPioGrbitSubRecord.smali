.class public final Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# static fields
.field public static final AUTO_LOAD_BIT:I = 0x200

.field public static final AUTO_PICT_BIT:I = 0x1

.field public static final CAMERA_BIT:I = 0x80

.field public static final CTL_BIT:I = 0x10

.field public static final DDE_BIT:I = 0x2

.field public static final DEFAULT_SIZE_BIT:I = 0x100

.field public static final ICON_BIT:I = 0x8

.field public static final PRINT_CALC_BIT:I = 0x4

.field public static final PRSTM_BIT:I = 0x20

.field public static final length:S = 0x2s

.field public static final sid:S = 0x8s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SubRecord;-><init>(Lorg/apache/poi/hssf/record/SubRecord;)V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Unexpected size ("

    const-string p3, ")"

    .line 8
    invoke-static {p1, p2, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->copy()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->copy()Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFlagByBit(I)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/p0;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/16 p0, 0x9

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const-string v1, "AUTO_PICT"

    const-string v2, "DDE"

    const-string v3, "PRINT_CALC"

    const-string v4, "ICON"

    const-string v5, "CTL"

    const-string v6, "PRSTM"

    const-string v7, "CAMERA"

    const-string v8, "DEFAULT_SIZE"

    const-string v9, "AUTO_LOAD"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "flags"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x80
        0x100
        0x200
    .end array-data
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->FT_PIO_GRBIT:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFlagByBit(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-short p2, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    or-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    goto :goto_0

    :cond_0
    iget-short p2, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    const v0, 0xffff

    xor-int/2addr p1, v0

    and-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    :goto_0
    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;->flags:S

    return-void
.end method
