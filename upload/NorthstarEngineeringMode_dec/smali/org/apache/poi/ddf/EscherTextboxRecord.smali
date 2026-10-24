.class public final Lorg/apache/poi/ddf/EscherTextboxRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field private static final NO_BYTES:[B

.field public static final RECORD_ID:S


# instance fields
.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherTextboxRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    sget-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    .line 3
    iget-object p1, p1, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherTextboxRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->MAX_RECORD_LENGTH:I

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

    sput p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->copy()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->copy()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherTextboxRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>(Lorg/apache/poi/ddf/EscherTextboxRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    sget v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ddf/d;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v2, "isContainer"

    new-instance v3, Lorg/apache/poi/ddf/b;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string v4, "extraData"

    new-instance v5, Lorg/apache/poi/ddf/c;

    const/16 v6, 0xa

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

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

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length p2, p2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v1, p1

    invoke-interface {p3, v1, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result p2

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes written but getRecordSize() reports "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setData([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setData([BII)V

    return-void
.end method

.method public setData([BII)V
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->MAX_RECORD_LENGTH:I

    .line 1
    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-void
.end method
