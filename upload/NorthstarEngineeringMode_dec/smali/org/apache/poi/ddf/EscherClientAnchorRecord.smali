.class public Lorg/apache/poi/ddf/EscherClientAnchorRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field public static final RECORD_ID:S


# instance fields
.field private field_1_flag:S

.field private field_2_col1:S

.field private field_3_dx1:S

.field private field_4_row1:S

.field private field_5_dy1:S

.field private field_6_col2:S

.field private field_7_dx2:S

.field private field_8_row2:S

.field private field_9_dy2:S

.field private remainingData:[B

.field private shortRecord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    .line 3
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    .line 8
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    .line 9
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    .line 10
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    .line 11
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    .line 12
    iget-object v0, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    .line 13
    iget-boolean p1, p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->copy()Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherClientAnchorRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->copy()Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p3, v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    add-int/lit8 v1, p2, 0xa

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    add-int/lit8 v1, p2, 0xe

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    const/16 v1, 0x12

    if-lt p3, v1, :cond_0

    add-int/lit8 v4, p2, 0x10

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    add-int/lit8 v4, p2, 0x12

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    add-int/lit8 v4, p2, 0x14

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    add-int/lit8 v4, p2, 0x16

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    add-int/lit8 p2, p2, 0x18

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    iput-boolean v3, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    move v3, v2

    :cond_1
    :goto_0
    sub-int/2addr p3, v3

    add-int/2addr v0, v3

    sget p2, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    add-int/2addr v3, v2

    add-int/2addr v3, p3

    return v3
.end method

.method public getCol1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    return p0
.end method

.method public getCol2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    return p0
.end method

.method public getDx1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    return p0
.end method

.method public getDx2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    return p0
.end method

.method public getDy1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    return p0
.end method

.method public getDy2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    return p0
.end method

.method public getFlag()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lorg/apache/poi/ddf/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/m;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v3, "flag"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/n;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/n;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v3, "col1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/o;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/o;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v2, "dx1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/m;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string/jumbo v3, "row1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/n;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/n;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v3, "dy1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/o;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/o;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v2, "col2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/m;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/m;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v3, "dx2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/n;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/n;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string/jumbo v3, "row2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/o;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/o;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string v2, "dy2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/m;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/m;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;I)V

    const-string/jumbo p0, "remainingData"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    array-length p0, p0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public getRemainingData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    return-object p0
.end method

.method public getRow1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    return p0
.end method

.method public getRow2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length v0, v0

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v3, 0x12

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p2, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-short v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xa

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xc

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xe

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-nez v2, :cond_2

    add-int/lit8 v2, p1, 0x10

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x12

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x14

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x16

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x18

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    iget-boolean v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x10

    goto :goto_1

    :cond_3
    const/16 v5, 0x1a

    :goto_1
    add-int/2addr v5, p1

    array-length v6, v2

    invoke-static {v2, v1, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz p2, :cond_4

    move v3, v4

    :cond_4
    add-int/2addr v0, v3

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result p2

    sub-int p1, v0, p1

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setCol1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    return-void
.end method

.method public setCol2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    return-void
.end method

.method public setDx1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    return-void
.end method

.method public setDx2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    return-void
.end method

.method public setDy1(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    return-void
.end method

.method public setDy2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    return-void
.end method

.method public setFlag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    return-void
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    :goto_0
    return-void
.end method

.method public setRow1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    return-void
.end method

.method public setRow2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    return-void
.end method
