.class public final Lorg/apache/poi/hssf/record/NumberRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x203s


# instance fields
.field private field_4_value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/NumberRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 3
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/NumberRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->copy()Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CellRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->copy()Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/NumberRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/NumberRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->copy()Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->copy()Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object p0

    return-object p0
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

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v2, Lorg/apache/poi/hssf/record/q1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string/jumbo v1, "value"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->NUMBER:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "NUMBER"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x203

    return p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    return-wide v0
.end method

.method public getValueDataSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    return-void
.end method
