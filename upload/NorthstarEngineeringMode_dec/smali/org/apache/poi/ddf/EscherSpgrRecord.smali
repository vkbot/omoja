.class public Lorg/apache/poi/ddf/EscherSpgrRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID:S


# instance fields
.field private field_1_rectX1:I

.field private field_2_rectY1:I

.field private field_3_rectX2:I

.field private field_4_rectY2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherSpgrRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherSpgrRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    .line 4
    iget v0, p1, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    .line 5
    iget v0, p1, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    .line 6
    iget p1, p1, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherSpgrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->copy()Lorg/apache/poi/ddf/EscherSpgrRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->copy()Lorg/apache/poi/ddf/EscherSpgrRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherSpgrRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>(Lorg/apache/poi/ddf/EscherSpgrRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    add-int/lit8 v0, p2, 0x10

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    add-int/lit8 p2, p2, 0x14

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    add-int/lit8 p0, p3, -0x10

    if-nez p0, :cond_0

    add-int/lit8 p3, p3, 0x8

    return p3

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Expected no remaining bytes but got "

    invoke-static {p2, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
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

    new-instance v1, Lorg/apache/poi/ddf/h0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/h0;-><init>(Lorg/apache/poi/ddf/EscherSpgrRecord;I)V

    const-string/jumbo v3, "rectX1"

    new-instance v4, Lorg/apache/poi/ddf/i0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ddf/i0;-><init>(Lorg/apache/poi/ddf/EscherSpgrRecord;I)V

    const-string/jumbo v5, "rectY1"

    new-instance v6, Lorg/apache/poi/ddf/b;

    const/4 v2, 0x6

    invoke-direct {v6, v2, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v7, "rectX2"

    new-instance v8, Lorg/apache/poi/ddf/h0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/ddf/h0;-><init>(Lorg/apache/poi/ddf/EscherSpgrRecord;I)V

    const-string/jumbo v9, "rectY2"

    new-instance v10, Lorg/apache/poi/ddf/i0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/ddf/i0;-><init>(Lorg/apache/poi/ddf/EscherSpgrRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public getRectX1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    return p0
.end method

.method public getRectX2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    return p0
.end method

.method public getRectY1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    return p0
.end method

.method public getRectY2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x10

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordId()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpgrRecord;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p3, p2, v0, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    const/16 p0, 0x18

    return p0
.end method

.method public setRectX1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_1_rectX1:I

    return-void
.end method

.method public setRectX2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_3_rectX2:I

    return-void
.end method

.method public setRectY1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_2_rectY1:I

    return-void
.end method

.method public setRectY2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpgrRecord;->field_4_rectY2:I

    return-void
.end method
