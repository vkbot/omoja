.class public final Lorg/apache/poi/hssf/record/chart/CatLabRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x856s


# instance fields
.field private at:S

.field private grbit:S

.field private grbitFrt:S

.field private rt:S

.field private unused:Ljava/lang/Short;

.field private wOffset:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    .line 7
    iget-object p1, p1, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->copy()Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->copy()Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->copy()Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/CatLabRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    add-int/lit8 p0, p0, 0xa

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

    new-instance v1, Lorg/apache/poi/hssf/record/chart/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/o;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

    const-string v3, "grbitFrt"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/p;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/p;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

    const-string/jumbo v5, "wOffset"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/q;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/q;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

    const-string v7, "at"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/o;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/o;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

    const-string v9, "grbit"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/p;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/p;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

    const-string/jumbo v11, "unused"

    new-instance v12, Lorg/apache/poi/hssf/record/chart/q;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/chart/q;-><init>(Lorg/apache/poi/hssf/record/chart/CatLabRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CAT_LAB:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x856

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :cond_0
    return-void
.end method
