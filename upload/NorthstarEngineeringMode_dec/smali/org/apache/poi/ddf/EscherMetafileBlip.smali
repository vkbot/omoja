.class public final Lorg/apache/poi/ddf/EscherMetafileBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final HEADER_SIZE:I = 0x8

.field private static final LOGGER:La5/d;

.field private static MAX_RECORD_LENGTH:I

.field public static final RECORD_ID_EMF:S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation
.end field

.field public static final RECORD_ID_PICT:S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation
.end field

.field public static final RECORD_ID_WMF:S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation
.end field


# instance fields
.field private final field_1_UID:[B

.field private final field_2_UID:[B

.field private field_2_cb:I

.field private field_3_rcBounds_x1:I

.field private field_3_rcBounds_x2:I

.field private field_3_rcBounds_y1:I

.field private field_3_rcBounds_y2:I

.field private field_4_ptSize_h:I

.field private field_4_ptSize_w:I

.field private field_5_cbSave:I

.field private field_6_fCompression:B

.field private field_7_fFilter:B

.field private raw_pictureData:[B

.field private remainingData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->LOGGER:La5/d;

    const v0, 0x5f5e100

    sput v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->MAX_RECORD_LENGTH:I

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_EMF:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->RECORD_ID_EMF:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_WMF:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->RECORD_ID_WMF:S

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_PICT:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->RECORD_ID_PICT:S

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherMetafileBlip;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    .line 3
    iget-object v2, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    .line 6
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    .line 7
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    .line 8
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    .line 9
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    .line 10
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    .line 11
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    .line 12
    iget v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    .line 13
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    .line 14
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    .line 15
    iget-object v0, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    .line 16
    iget-object p1, p1, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static inflatePictureData([B)[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    sget v1, Ln4/f;->Z:I

    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    invoke-virtual {v1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget v1, Lorg/apache/commons/io/output/j;->c:I

    new-instance v1, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v1}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_3
    sget-object v1, Lorg/apache/poi/ddf/EscherMetafileBlip;->LOGGER:La5/d;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "Possibly corrupt compression or non-compressed data"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->copy()Lorg/apache/poi/ddf/EscherMetafileBlip;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->copy()Lorg/apache/poi/ddf/EscherMetafileBlip;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherMetafileBlip;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->copy()Lorg/apache/poi/ddf/EscherMetafileBlip;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x18

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v4

    xor-int/2addr v1, v4

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x28

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    add-int/lit8 v1, v0, 0x8

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    add-int/lit8 v1, v0, 0xc

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    add-int/lit8 v1, v0, 0x10

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    add-int/lit8 v1, v0, 0x14

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    add-int/lit8 v1, v0, 0x18

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    add-int/lit8 v1, v0, 0x1c

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    add-int/lit8 v2, v0, 0x21

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    add-int/lit8 v0, v0, 0x22

    sget v2, Lorg/apache/poi/ddf/EscherMetafileBlip;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    add-int/2addr v0, v2

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->inflatePictureData([B)[B

    move-result-object v1

    invoke-super {p0, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    goto :goto_0

    :cond_1
    invoke-super {p0, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    :goto_0
    sub-int v1, p3, v0

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_2

    sget p2, Lorg/apache/poi/ddf/EscherMetafileBlip;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, v1, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    :cond_2
    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 4

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    sub-int/2addr v3, v1

    iget p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCompressedSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    return p0
.end method

.method public getFilter()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

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

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lorg/apache/poi/ddf/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/v;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string/jumbo v3, "uid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/w;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/w;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string/jumbo v3, "uncompressedSize"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/x;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/x;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string v2, "bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/v;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string/jumbo v3, "sizeInEMU"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/w;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/w;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string v3, "compressedSize"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/x;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/x;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string v2, "isCompressed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/ddf/v;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/v;-><init>(Lorg/apache/poi/ddf/EscherMetafileBlip;I)V

    const-string p0, "filter"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryUID()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    return-object p0
.end method

.method public getRecordSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3a

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length p0, p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getRemainingData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    return-object p0
.end method

.method public getSignature()S
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lg5/b0;->b(S)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "Unknown metafile: {}"

    invoke-interface {v0, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x5420

    return p0

    :cond_1
    const/16 p0, 0x2160

    return p0

    :cond_2
    const/16 p0, 0x3d40

    return p0
.end method

.method public getSizeEMU()Ljava/awt/Dimension;
    .locals 2

    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    iget p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getUID()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    return-object p0
.end method

.method public getUncompressedSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    return p0
.end method

.method public isCompressed()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v2, v1

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0xc

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x10

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x14

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x18

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x1c

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, v0, 0x20

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x21

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x22

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v2, v1

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-eqz v1, :cond_1

    array-length v2, v1

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p2, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 2

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    return-void
.end method

.method public setCompressedSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    return-void
.end method

.method public setFilter(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    return-void
.end method

.method public setPictureData([B)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUncompressedSize(I)V

    :try_start_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    iget-object p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setCompressedSize(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setCompressed(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t compress metafile picture data"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPrimaryUID([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "primaryUID must be byte[16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSizeEMU(Ljava/awt/Dimension;)V
    .locals 1

    iget v0, p1, Ljava/awt/Dimension;->width:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    return-void
.end method

.method public setUID([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uid must be byte[16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUncompressedSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    return-void
.end method
