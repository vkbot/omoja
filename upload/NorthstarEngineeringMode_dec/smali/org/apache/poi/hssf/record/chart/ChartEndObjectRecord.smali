.class public final Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x855s


# instance fields
.field private grbitFrt:S

.field private iObjectKind:S

.field private reserved:[B

.field private rt:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->rt:S

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->grbitFrt:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->iObjectKind:S

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    .line 11
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->rt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->rt:S

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->grbitFrt:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->iObjectKind:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->iObjectKind:S

    .line 5
    iget-object p1, p1, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->rt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->grbitFrt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->iObjectKind:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xc

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

    const-string/jumbo v0, "rt"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/v;-><init>(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;I)V

    const-string v2, "grbitFrt"

    new-instance v3, Lorg/apache/poi/hssf/record/chart/l0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v5, "iObjectKind"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/m0;

    invoke-direct {v6, p0, v4}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "reserved"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/v;

    const/4 v4, 0x1

    invoke-direct {v8, p0, v4}, Lorg/apache/poi/hssf/record/chart/v;-><init>(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;I)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_END_OBJECT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x855

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->reserved:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method
