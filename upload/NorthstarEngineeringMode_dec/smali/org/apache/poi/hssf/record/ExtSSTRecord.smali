.class public final Lorg/apache/poi/hssf/record/ExtSSTRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUCKET_SIZE:I = 0x8

.field public static final MAX_BUCKETS:I = 0x80

.field public static final sid:S = 0xffs


# instance fields
.field private _sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

.field private _stringsPerBucket:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExtSSTRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/w0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/w0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/s2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/s2;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfInfoRecsForStrings(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x8

    rem-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/16 p0, 0x80

    if-le v0, p0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public static getRecordSizeForStrings(I)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getNumberOfInfoRecsForStrings(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->copy()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>(Lorg/apache/poi/hssf/record/ExtSSTRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->copy()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x2

    return p0
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

    new-instance v0, Lorg/apache/poi/hssf/record/p0;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string p0, "dataSize"

    const-string v2, "infoSubRecords"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->EXT_SST:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getInfoSubRecords()[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 3

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBucketOffsets([I[I)V
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    new-instance v2, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget v3, p1, v0

    aget v4, p2, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNumStringsPerBucket(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    return-void
.end method
