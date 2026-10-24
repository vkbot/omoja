.class public final Lorg/apache/poi/hssf/record/MergeCellsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xe5s


# instance fields
.field private final _numberOfRegions:I

.field private final _regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final _startIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/record/w0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/w0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/record/s2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/s2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    .line 5
    iget p1, p1, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    iput p1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 9
    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    iput v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iput-object v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iput p2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iput p3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/MergeCellsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->lambda$new$0(I)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iget p0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    add-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->copy()Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->copy()Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->copy()Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object p0

    return-object p0
.end method

.method public getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget p0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result p0

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

    new-instance v0, Lorg/apache/poi/hssf/record/u1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v2, Lorg/apache/poi/hssf/record/q1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "numRegions"

    const-string/jumbo v1, "regions"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->MERGE_CELLS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumAreas()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    int-to-short p0, p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xe5

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
