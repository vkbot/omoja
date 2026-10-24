.class public final Lorg/apache/poi/hssf/record/TableStylesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x88es


# instance fields
.field private cts:I

.field private grbitFrt:I

.field private rgchDefListStyle:Ljava/lang/String;

.field private rgchDefPivotStyle:Ljava/lang/String;

.field private rt:I

.field private final unused:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->unused:[B

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rt:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->grbitFrt:I

    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->cts:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 15
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/TableStylesRecord;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->unused:[B

    .line 2
    iget v1, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->rt:I

    iput v1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rt:I

    .line 3
    iget v1, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->grbitFrt:I

    iput v1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->grbitFrt:I

    .line 4
    iget-object v1, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->unused:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->cts:I

    iput v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->cts:I

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/TableStylesRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->grbitFrt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->unused:[B

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->cts:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->copy()Lorg/apache/poi/hssf/record/TableStylesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->copy()Lorg/apache/poi/hssf/record/TableStylesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->copy()Lorg/apache/poi/hssf/record/TableStylesRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/TableStylesRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "rt"

    new-instance v1, Lorg/apache/poi/hssf/record/p3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    const-string v3, "grbitFrt"

    new-instance v4, Lorg/apache/poi/hssf/record/q3;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/q3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    const-string/jumbo v5, "unused"

    new-instance v6, Lorg/apache/poi/hssf/record/r3;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/r3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    const-string v7, "cts"

    new-instance v8, Lorg/apache/poi/hssf/record/p3;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/p3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    const-string/jumbo v9, "rgchDefListStyle"

    new-instance v10, Lorg/apache/poi/hssf/record/q3;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/q3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    const-string/jumbo v11, "rgchDefPivotStyle"

    new-instance v12, Lorg/apache/poi/hssf/record/r3;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/r3;-><init>(Lorg/apache/poi/hssf/record/TableStylesRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->TABLE_STYLES:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x88e

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->grbitFrt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->cts:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefListStyle:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TableStylesRecord;->rgchDefPivotStyle:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
