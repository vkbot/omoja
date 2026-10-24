.class public Lorg/apache/poi/ddf/EscherClientDataRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static final EMPTY:[B

.field private static MAX_RECORD_LENGTH:I

.field public static final RECORD_ID:S


# instance fields
.field private remainingData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    const v0, 0x186a0

    sput v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->MAX_RECORD_LENGTH:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherClientDataRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget-object p1, p1, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherClientDataRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->copy()Lorg/apache/poi/ddf/EscherClientDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherClientDataRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherClientDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>(Lorg/apache/poi/ddf/EscherClientDataRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->copy()Lorg/apache/poi/ddf/EscherClientDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    if-nez p3, :cond_0

    sget-object p1, Lorg/apache/poi/ddf/EscherClientDataRecord;->EMPTY:[B

    goto :goto_0

    :cond_0
    sget v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/ddf/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string p0, "base"

    const-string/jumbo v2, "remainingData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getRemainingData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-object p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->EMPTY:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v1, v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length p2, p2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result p2

    sub-int p1, v1, p1

    invoke-interface {p3, v1, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-void
.end method
