.class public final Lorg/apache/poi/hssf/record/FtCfSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# static fields
.field public static final BITMAP_BIT:S = 0x9s

.field public static final METAFILE_BIT:S = 0x2s

.field public static final UNSPECIFIED_BIT:S = -0x1s

.field public static final length:S = 0x2s

.field public static final sid:S = 0x7s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FtCfSubRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SubRecord;-><init>(Lorg/apache/poi/hssf/record/SubRecord;)V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

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

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->copy()Lorg/apache/poi/hssf/record/FtCfSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FtCfSubRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/hssf/record/FtCfSubRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->copy()Lorg/apache/poi/hssf/record/FtCfSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/o0;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/16 p0, 0x9

    const/4 v1, -0x1

    const/4 v2, 0x2

    filled-new-array {v2, p0, v1}, [I

    move-result-object p0

    const-string v1, "BITMAP"

    const-string v2, "UNSPECIFIED"

    const-string v3, "METAFILE"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "flags"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->FT_CF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    return-void
.end method
