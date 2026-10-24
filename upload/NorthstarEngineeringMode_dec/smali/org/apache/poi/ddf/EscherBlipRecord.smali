.class public Lorg/apache/poi/ddf/EscherBlipRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x6400000

.field private static final HEADER_SIZE:I = 0x8

.field private static MAX_RECORD_LENGTH:I = 0x6400000

.field public static final RECORD_ID_END:S

.field public static final RECORD_ID_START:S


# instance fields
.field private field_pictureData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBlipRecord;->RECORD_ID_START:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_END:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBlipRecord;->RECORD_ID_END:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget-object p1, p1, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherBlipRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherBlipRecord;->MAX_RECORD_LENGTH:I

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

    sput p0, Lorg/apache/poi/ddf/EscherBlipRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->copy()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->copy()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    sget v0, Lorg/apache/poi/ddf/EscherBlipRecord;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

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

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/ddf/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string/jumbo v2, "pictureData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    :goto_0
    return-object p0
.end method

.method public getPicturedata()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    add-int/lit8 p1, p1, 0x4

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length p2, p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public setPictureData([B)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([BII)V

    return-void
.end method

.method public setPictureData([BII)V
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 2
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    sget v0, Lorg/apache/poi/ddf/EscherBlipRecord;->MAX_RECORD_LENGTH:I

    .line 3
    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "picture data can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
