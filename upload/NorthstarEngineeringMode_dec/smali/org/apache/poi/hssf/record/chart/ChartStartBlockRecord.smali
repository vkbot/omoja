.class public final Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x852s


# instance fields
.field private grbitFrt:S

.field private iObjectContext:S

.field private iObjectInstance1:S

.field private iObjectInstance2:S

.field private iObjectKind:S

.field private rt:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    .line 8
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
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

    new-instance v1, Lorg/apache/poi/hssf/record/chart/d0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/d0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    const-string v3, "grbitFrt"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/e0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/e0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    const-string v5, "iObjectKind"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/f0;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/f0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    const-string v7, "iObjectContext"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/d0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/d0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    const-string v9, "iObjectInstance1"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/e0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/e0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    const-string v11, "iObjectInstance2"

    new-instance v12, Lorg/apache/poi/hssf/record/chart/f0;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/chart/f0;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_START_BLOCK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x852

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
