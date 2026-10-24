.class public Lorg/apache/poi/ddf/EscherBitmapBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "SourceFile"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_DIB:S

.field public static final RECORD_ID_JPEG:S

.field public static final RECORD_ID_PNG:S


# instance fields
.field private final field_1_UID:[B

.field private field_2_marker:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_JPEG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBitmapBlip;->RECORD_ID_JPEG:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_PNG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBitmapBlip;->RECORD_ID_PNG:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_DIB:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBitmapBlip;->RECORD_ID_DIB:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherBitmapBlip;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    .line 3
    iget-object v1, p1, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-byte p1, p1, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/ddf/EscherBitmapBlip;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->copy()Lorg/apache/poi/ddf/EscherBitmapBlip;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherBitmapBlip;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>(Lorg/apache/poi/ddf/EscherBitmapBlip;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->copy()Lorg/apache/poi/ddf/EscherBitmapBlip;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->copy()Lorg/apache/poi/ddf/EscherBitmapBlip;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x18

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    add-int/lit8 p2, p2, 0x19

    add-int/lit8 v0, p3, -0x11

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([BII)V

    add-int/lit8 p3, p3, 0x8

    return p3
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

    new-instance v1, Lorg/apache/poi/ddf/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v2, "uid"

    new-instance v3, Lorg/apache/poi/ddf/d;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v5, "marker"

    new-instance v6, Lorg/apache/poi/ddf/b;

    invoke-direct {v6, v4, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMarker()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return p0
.end method

.method public getRecordSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    add-int/lit8 p0, p0, 0x19

    return p0
.end method

.method public getUID()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    return-object p0
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

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x18

    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    aput-byte v1, p2, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x19

    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    invoke-interface {p3, p2, p1, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    array-length p0, v0

    add-int/lit8 p0, p0, 0x19

    return p0
.end method

.method public setMarker(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method

.method public setUID([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "field_1_UID must be byte[16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
