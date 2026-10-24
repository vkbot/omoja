.class public Lorg/apache/poi/ddf/EscherSpRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field public static final FLAG_BACKGROUND:I = 0x400

.field public static final FLAG_CHILD:I = 0x2

.field public static final FLAG_CONNECTOR:I = 0x100

.field public static final FLAG_DELETED:I = 0x8

.field public static final FLAG_FLIPHORIZ:I = 0x40

.field public static final FLAG_FLIPVERT:I = 0x80

.field public static final FLAG_GROUP:I = 0x1

.field public static final FLAG_HASSHAPETYPE:I = 0x800

.field public static final FLAG_HAVEANCHOR:I = 0x200

.field public static final FLAG_HAVEMASTER:I = 0x20

.field public static final FLAG_OLESHAPE:I = 0x10

.field public static final FLAG_PATRIARCH:I = 0x4

.field public static final RECORD_ID:S


# instance fields
.field private field_1_shapeId:I

.field private field_2_flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/ddf/EscherSpRecord;->FLAGS_MASKS:[I

    const-string v1, "GROUP"

    const-string v2, "CHILD"

    const-string v3, "PATRIARCH"

    const-string v4, "DELETED"

    const-string v5, "OLESHAPE"

    const-string v6, "HAVEMASTER"

    const-string v7, "FLIPHORIZ"

    const-string v8, "FLIPVERT"

    const-string v9, "CONNECTOR"

    const-string v10, "HAVEANCHOR"

    const-string v11, "BACKGROUND"

    const-string v12, "HASSHAPETYPE"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherSpRecord;->FLAGS_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherSpRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    .line 4
    iget p1, p1, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherSpRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private decodeFlags(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string/jumbo v0, "|GROUP"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "|CHILD"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    const-string/jumbo v0, "|PATRIARCH"

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    const-string/jumbo v0, "|DELETED"

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    const-string/jumbo v0, "|OLESHAPE"

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    const-string/jumbo v0, "|HAVEMASTER"

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    const-string/jumbo v0, "|FLIPHORIZ"

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_7

    const-string/jumbo v0, "|FLIPVERT"

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_8

    const-string/jumbo v0, "|CONNECTOR"

    goto :goto_8

    :cond_8
    move-object v0, v1

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_9

    const-string/jumbo v0, "|HAVEANCHOR"

    goto :goto_9

    :cond_9
    move-object v0, v1

    :goto_9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    const-string/jumbo v0, "|BACKGROUND"

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_b

    const-string/jumbo v1, "|HASSHAPETYPE"

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->copy()Lorg/apache/poi/ddf/EscherSpRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->copy()Lorg/apache/poi/ddf/EscherSpRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherSpRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>(Lorg/apache/poi/ddf/EscherSpRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    add-int/lit8 p3, p2, 0x8

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

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

    new-instance v1, Lorg/apache/poi/ddf/g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/g0;-><init>(Lorg/apache/poi/ddf/EscherSpRecord;I)V

    const-string/jumbo v2, "shapeType"

    new-instance v3, Lorg/apache/poi/ddf/c;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v5, "shapeId"

    new-instance v6, Lorg/apache/poi/ddf/d;

    invoke-direct {v6, p0, v4}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "flags"

    new-instance v4, Lorg/apache/poi/ddf/g0;

    const/4 v8, 0x1

    invoke-direct {v4, p0, v8}, Lorg/apache/poi/ddf/g0;-><init>(Lorg/apache/poi/ddf/EscherSpRecord;I)V

    sget-object p0, Lorg/apache/poi/ddf/EscherSpRecord;->FLAGS_MASKS:[I

    sget-object v8, Lorg/apache/poi/ddf/EscherSpRecord;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v4, p0, v8}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getShapeId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    return p0
.end method

.method public getShapeType()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result p0

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p2, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    const/16 p0, 0x10

    return p0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    return-void
.end method

.method public setShapeId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    return-void
.end method

.method public setShapeType(S)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    return-void
.end method
