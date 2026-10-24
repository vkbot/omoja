.class public final Lorg/apache/poi/hssf/record/DrawingGroupRecord;
.super Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_SIZE:I = 0x2024

.field private static MAX_RECORD_SIZE:I = 0x2024

.field public static final sid:S = 0xebs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DrawingGroupRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method private static getMaxDataSize()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->MAX_RECORD_SIZE:I

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public static getMaxRecordSize()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->MAX_RECORD_SIZE:I

    return v0
.end method

.method private getRawDataSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static grossSizeFromDataSize(I)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    invoke-static {}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getMaxDataSize()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method public static setMaxRecordSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->MAX_RECORD_SIZE:I

    return-void
.end method

.method private writeContinueHeader([BII)V
    .locals 0

    const/16 p0, 0x3c

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 p2, p2, 0x2

    int-to-short p0, p3

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method private writeData(I[B[B)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    invoke-static {}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getMaxDataSize()I

    move-result v2

    array-length v3, p3

    sub-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int v2, v0, v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    invoke-direct {p0, p2, p1, v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeContinueHeader([BII)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p1, v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeHeader([BII)V

    :goto_1
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 p1, p1, 0x4

    invoke-static {p3, v0, p2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v3

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method private writeHeader([BII)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getSid()S

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 p2, p2, 0x2

    int-to-short p0, p3

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->copy()Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->copy()Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>(Lorg/apache/poi/hssf/record/DrawingGroupRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->copy()Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DRAWING_GROUP:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "MSODRAWINGGROUP"

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawDataSize()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->grossSizeFromDataSize(I)I

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xeb

    return p0
.end method

.method public processChildRecords()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    return-void
.end method

.method public serialize(I[B)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getRawData()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeData(I[B[B)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getRawDataSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    new-instance v4, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v4}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v3, v2, v0, v4}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->writeData(I[B[B)I

    move-result p0

    return p0
.end method
