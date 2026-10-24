.class public Lorg/apache/poi/ddf/EscherDgRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID:S


# instance fields
.field private field_1_numShapes:I

.field private field_2_lastMSOSPID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherDgRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherDgRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    .line 4
    iget p1, p1, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherDgRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->copy()Lorg/apache/poi/ddf/EscherDgRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>(Lorg/apache/poi/ddf/EscherDgRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->copy()Lorg/apache/poi/ddf/EscherDgRecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    add-int/lit8 p3, p2, 0x8

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public getDrawingGroupId()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
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

    new-instance v1, Lorg/apache/poi/ddf/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/r;-><init>(Lorg/apache/poi/ddf/EscherDgRecord;I)V

    const-string v2, "numShapes"

    new-instance v3, Lorg/apache/poi/ddf/c;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string v5, "lastMSOSPID"

    new-instance v6, Lorg/apache/poi/ddf/d;

    invoke-direct {v6, p0, v4}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "drawingGroupId"

    new-instance v8, Lorg/apache/poi/ddf/r;

    const/4 v4, 0x1

    invoke-direct {v8, p0, v4}, Lorg/apache/poi/ddf/r;-><init>(Lorg/apache/poi/ddf/EscherDgRecord;I)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getLastMSOSPID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return p0
.end method

.method public getNumShapes()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherDgRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public incrementShapeCount()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public setLastMSOSPID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return-void
.end method

.method public setNumShapes(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return-void
.end method
