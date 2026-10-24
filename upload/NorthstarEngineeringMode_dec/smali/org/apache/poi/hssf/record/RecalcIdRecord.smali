.class public final Lorg/apache/poi/hssf/record/RecalcIdRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1c1s


# instance fields
.field private _engineId:I

.field private final _reserved0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecalcIdRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    iput p1, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/RecalcIdRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->copy()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/RecalcIdRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecalcIdRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->copy()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->copy()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getEngineId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

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

    new-instance v0, Lorg/apache/poi/hssf/record/m2;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "reserved0"

    const-string v2, "engineId"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->RECALC_ID:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1c1

    return p0
.end method

.method public isNeeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0x1c1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setEngineId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    return-void
.end method
