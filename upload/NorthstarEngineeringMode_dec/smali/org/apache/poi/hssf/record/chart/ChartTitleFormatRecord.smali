.class public Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    }
.end annotation


# static fields
.field public static final sid:S = 0x1050s


# instance fields
.field private final _formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 9
    new-array v1, v0, [Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    .line 10
    new-instance v3, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/chart/j0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/chart/k0;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getFormatCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length p0, p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/chart/l0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "formats"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_TITLE_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1050

    return p0
.end method

.method public modifyFormatRun(SS)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->setOffset(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v3

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p2, v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
