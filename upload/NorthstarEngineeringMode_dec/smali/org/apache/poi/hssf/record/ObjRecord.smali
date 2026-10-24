.class public final Lorg/apache/poi/hssf/record/ObjRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"


# static fields
.field private static MAX_PAD_ALIGNMENT:I = 0x4

.field private static final NORMAL_PAD_ALIGNMENT:I = 0x2

.field public static final sid:S = 0x5ds


# instance fields
.field private _isPaddedToQuadByteMultiple:Z

.field private final _uninterpretedData:[B

.field private final subrecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ObjRecord;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 5
    iget-object v1, p1, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ddf/f0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/hssf/record/n2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/hssf/record/n2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 7
    iget-boolean p1, p1, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    return-void

    .line 12
    :cond_0
    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v2, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    .line 13
    invoke-static {v2, v1}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v0

    invoke-static {v2, v0}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 16
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SubRecord;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    array-length v0, p1

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_5

    .line 19
    array-length v2, p1

    sget v3, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    :goto_1
    if-lt v0, v3, :cond_6

    .line 20
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/ObjRecord;->canPaddingBeDiscarded([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    goto :goto_2

    :cond_4
    const-string p0, "Leftover "

    const-string v1, " bytes in subrecord data "

    .line 21
    invoke-static {p0, v0, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 22
    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/ObjRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/ObjRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static canPaddingBeDiscarded([BI)Z
    .locals 1

    array-length v0, p0

    sub-int/2addr v0, p1

    :goto_0
    array-length p1, p0

    if-ge v0, p1, :cond_1

    aget-byte p1, p0, v0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSubRecord(ILorg/apache/poi/hssf/record/SubRecord;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 1
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public clearSubRecords()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->copy()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>(Lorg/apache/poi/hssf/record/ObjRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->copy()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p0

    return-object p0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lorg/apache/poi/hssf/record/m2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "uninterpretedData"

    const-string/jumbo v2, "paddedToQuadByteMultiple"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->OBJ:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-eqz v0, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, 0x4

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/SubRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    if-eqz p0, :cond_2

    :goto_1
    sget p0, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int p0, v1, p0

    if-eqz p0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    rem-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x5d

    return p0
.end method

.method public getSubRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    return-object p0
.end method

.method public serialize(I[B)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getRecordSize()I

    move-result v0

    add-int/lit8 v1, v0, -0x4

    :try_start_0
    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v2, p2, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x5d

    :try_start_1
    invoke-virtual {v2, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget-object p2, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/hssf/record/SubRecord;

    invoke-virtual {p2, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/2addr p1, v1

    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    if-ge p0, p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeByte(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
