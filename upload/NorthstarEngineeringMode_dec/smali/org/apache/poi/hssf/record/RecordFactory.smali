.class public final Lorg/apache/poi/hssf/record/RecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_NUMBER_OF_RECORDS:I = 0x4c4b40

.field private static MAX_NUMBER_OF_RECORDS:I = 0x4c4b40

.field private static final NUM_RECORDS:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBlankRecords(Lorg/apache/poi/hssf/record/MulBlankRecord;)[Lorg/apache/poi/hssf/record/BlankRecord;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/BlankRecord;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int/2addr v3, v1

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getXFAt(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getNumColumns()I

    move-result v0

    if-ltz v0, :cond_1

    new-array v1, v0, [Lorg/apache/poi/hssf/record/NumberRecord;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getFirstColumn()S

    move-result v4

    add-int/2addr v4, v2

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getRow()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/MulRKRecord;->getXFAt(I)S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/MulRKRecord;->getRKNumberAt(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Cannot create RKRecords with negative number of columns: "

    invoke-static {v1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    return-object v0
.end method

.method public static createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p0, v2, [Lorg/apache/poi/hssf/record/Record;

    const/4 v0, 0x0

    aput-object v0, p0, v1

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/hssf/record/RKRecord;

    if-eqz v0, :cond_1

    new-array v0, v2, [Lorg/apache/poi/hssf/record/Record;

    check-cast p0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/hssf/record/MulRKRecord;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0

    :cond_2
    new-array v0, v2, [Lorg/apache/poi/hssf/record/Record;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static createRecords(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;-><init>(Ljava/io/InputStream;Z)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->nextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v2, p0

    sget p0, Lorg/apache/poi/hssf/record/RecordFactory;->MAX_NUMBER_OF_RECORDS:I

    invoke-static {v2, v3, p0}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->forSID(I)Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->isParseable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->UNKNOWN:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->recordConstructor:Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;

    invoke-interface {v0, p0}, Lorg/apache/poi/hssf/record/HSSFRecordTypes$RecordConstructor;->apply(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object p0

    return-object p0
.end method

.method public static getAllKnownRecordSIDs()[S
    .locals 4

    invoke-static {}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->values()[Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ddf/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [S

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getMaxNumberOfRecords()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/record/RecordFactory;->MAX_NUMBER_OF_RECORDS:I

    return v0
.end method

.method public static getRecordClass(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->forSID(I)Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method public static setMaxNumberOfRecords(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hssf/record/RecordFactory;->MAX_NUMBER_OF_RECORDS:I

    return-void
.end method
