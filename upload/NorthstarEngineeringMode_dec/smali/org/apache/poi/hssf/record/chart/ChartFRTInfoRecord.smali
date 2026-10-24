.class public final Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;
    }
.end annotation


# static fields
.field public static final sid:S = 0x850s


# instance fields
.field private final grbitFrt:S

.field private rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

.field private final rt:S

.field private final verOriginator:B

.field private final verWriter:B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    if-ltz v0, :cond_1

    .line 16
    new-array v1, v0, [Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    .line 17
    new-instance v3, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Had negative CFRTID: "

    .line 19
    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    .line 4
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/chart/y;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lh5/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh5/e;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x8

    return p0
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

    const-string/jumbo v0, "rt"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/w;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;I)V

    const-string v3, "grbitFrt"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/x;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/x;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;I)V

    const-string/jumbo v5, "verOriginator"

    new-instance v6, Lorg/apache/poi/ddf/d;

    const/16 v2, 0x16

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "verWriter"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/w;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/w;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;I)V

    const-string/jumbo v9, "rgCFRTIDs"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/x;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/x;-><init>(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;I)V

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

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_FRT_INFO:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x850

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
