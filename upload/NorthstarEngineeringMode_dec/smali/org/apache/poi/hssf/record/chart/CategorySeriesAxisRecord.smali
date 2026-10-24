.class public final Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final crossesFarRight:Lorg/apache/poi/util/BitField;

.field private static final reversed:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1020s

.field private static final valueAxisCrossing:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_crossingPoint:S

.field private field_2_labelFrequency:S

.field private field_3_tickMarkFrequency:S

.field private field_4_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    .line 6
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->copy()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;)V

    return-object v0
.end method

.method public getCrossingPoint()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "crossingPoint"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/r;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string v3, "labelFrequency"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/s;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/s;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string/jumbo v5, "tickMarkFrequency"

    new-instance v6, Lorg/apache/poi/hssf/record/chart/t;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/chart/t;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string/jumbo v7, "options"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/r;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/chart/r;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string/jumbo v9, "valueAxisCrossing"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/s;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/chart/s;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string v11, "crossesFarRight"

    new-instance v12, Lorg/apache/poi/hssf/record/chart/t;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/chart/t;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

    const-string/jumbo v13, "reversed"

    new-instance v14, Lorg/apache/poi/hssf/record/chart/r;

    const/4 v2, 0x2

    invoke-direct {v14, p0, v2}, Lorg/apache/poi/hssf/record/chart/r;-><init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V

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

    move-object v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CATEGORY_SERIES_AXIS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLabelFrequency()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1020

    return p0
.end method

.method public getTickMarkFrequency()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    return p0
.end method

.method public isCrossesFarRight()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isValueAxisCrossing()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCrossesFarRight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    return-void
.end method

.method public setLabelFrequency(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setReversed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setTickMarkFrequency(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    return-void
.end method

.method public setValueAxisCrossing(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method
