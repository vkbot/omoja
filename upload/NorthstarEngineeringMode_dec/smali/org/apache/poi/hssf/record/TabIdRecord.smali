.class public final Lorg/apache/poi/hssf/record/TabIdRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final EMPTY_SHORT_ARRAY:[S

.field public static final sid:S = 0x13ds


# instance fields
.field private _tabids:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lorg/apache/poi/hssf/record/TabIdRecord;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/hssf/record/TabIdRecord;->EMPTY_SHORT_ARRAY:[S

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 6
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    .line 7
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/TabIdRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-object p1, p1, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/TabIdRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->copy()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->copy()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->copy()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/TabIdRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>(Lorg/apache/poi/hssf/record/TabIdRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

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

    new-instance v0, Lorg/apache/poi/hssf/record/q1;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "elements"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->TAB_ID:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x13d

    return p0
.end method

.method public getTabIdAt(I)S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    aget-short p0, p0, p1

    return p0
.end method

.method public getTabIdSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length p0, p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p0, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabIdArray([S)V
    .locals 0

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    return-void
.end method
