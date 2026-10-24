.class public final Lorg/apache/poi/hssf/record/chart/AxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final AXIS_TYPE_CATEGORY_OR_X_AXIS:S = 0x0s

.field public static final AXIS_TYPE_SERIES_AXIS:S = 0x2s

.field public static final AXIS_TYPE_VALUE_AXIS:S = 0x1s

.field public static final sid:S = 0x101ds


# instance fields
.field private field_1_axisType:S

.field private field_2_reserved1:I

.field private field_3_reserved2:I

.field private field_4_reserved3:I

.field private field_5_reserved4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    .line 7
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/AxisRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;)V

    return-object v0
.end method

.method public getAxisType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

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

    const-string v0, "axisType"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/j;-><init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;I)V

    const-string/jumbo v3, "reserved1"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/k;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/k;-><init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;I)V

    const-string/jumbo v5, "reserved2"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/m0;

    const/4 v2, 0x1

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "reserved3"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/j;

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/j;-><init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;I)V

    const-string/jumbo v9, "reserved4"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/k;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/k;-><init>(Lorg/apache/poi/hssf/record/chart/AxisRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->AXIS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getReserved1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    return p0
.end method

.method public getReserved2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    return p0
.end method

.method public getReserved3()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    return p0
.end method

.method public getReserved4()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x101d

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setAxisType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    return-void
.end method

.method public setReserved1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    return-void
.end method

.method public setReserved2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    return-void
.end method

.method public setReserved3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    return-void
.end method

.method public setReserved4(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-void
.end method
