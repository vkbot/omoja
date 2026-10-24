.class public final Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final FLAG_MASKS:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field private static final defaultBase:Lorg/apache/poi/util/BitField;

.field private static final defaultCross:Lorg/apache/poi/util/BitField;

.field private static final defaultDateSettings:Lorg/apache/poi/util/BitField;

.field private static final defaultMajor:Lorg/apache/poi/util/BitField;

.field private static final defaultMaximum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinimum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinorUnit:Lorg/apache/poi/util/BitField;

.field private static final isDate:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1062s


# instance fields
.field private field_1_minimumCategory:S

.field private field_2_maximumCategory:S

.field private field_3_majorUnitValue:S

.field private field_4_majorUnit:S

.field private field_5_minorUnitValue:S

.field private field_6_minorUnit:S

.field private field_7_baseUnit:S

.field private field_8_crossingPoint:S

.field private field_9_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->FLAG_MASKS:[I

    const-string v1, "DEFAULT_MINIMUM"

    const-string v2, "DEFAULT_MAXIMUM"

    const-string v3, "DEFAULT_MAJOR"

    const-string v4, "DEFAULT_MINOR_UNIT"

    const-string v5, "IS_DATE"

    const-string v6, "DEFAULT_BASE"

    const-string v7, "DEFAULT_CROSS"

    const-string v8, "DEFAULT_DATE_SETTINGS"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->FLAG_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    .line 8
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    .line 9
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    .line 10
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    .line 11
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;)V

    return-object v0
.end method

.method public getBaseUnit()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    return p0
.end method

.method public getCrossingPoint()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "minimumCategory"

    new-instance v3, Lorg/apache/poi/hssf/record/chart/e;

    move-object v2, v3

    const/4 v7, 0x0

    invoke-direct {v3, v0, v7}, Lorg/apache/poi/hssf/record/chart/e;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v3, "maximumCategory"

    new-instance v5, Lorg/apache/poi/hssf/record/chart/f;

    move-object v4, v5

    invoke-direct {v5, v0, v7}, Lorg/apache/poi/hssf/record/chart/f;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v5, "majorUnitValue"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/g;

    move-object v6, v8

    invoke-direct {v8, v0, v7}, Lorg/apache/poi/hssf/record/chart/g;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v7, "majorUnit"

    new-instance v9, Lorg/apache/poi/hssf/record/chart/e;

    move-object v8, v9

    const/4 v13, 0x1

    invoke-direct {v9, v0, v13}, Lorg/apache/poi/hssf/record/chart/e;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v9, "minorUnitValue"

    new-instance v11, Lorg/apache/poi/hssf/record/chart/f;

    move-object v10, v11

    invoke-direct {v11, v0, v13}, Lorg/apache/poi/hssf/record/chart/f;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v11, "minorUnit"

    new-instance v14, Lorg/apache/poi/hssf/record/chart/g;

    move-object v12, v14

    invoke-direct {v14, v0, v13}, Lorg/apache/poi/hssf/record/chart/g;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v13, "baseUnit"

    new-instance v15, Lorg/apache/poi/hssf/record/chart/e;

    move-object v14, v15

    move-object/from16 v19, v1

    const/4 v1, 0x2

    invoke-direct {v15, v0, v1}, Lorg/apache/poi/hssf/record/chart/e;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string v15, "crossingPoint"

    move-object/from16 v20, v2

    new-instance v2, Lorg/apache/poi/hssf/record/chart/f;

    move-object/from16 v16, v2

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/record/chart/f;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    const-string/jumbo v17, "options"

    new-instance v2, Lorg/apache/poi/hssf/record/chart/g;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/record/chart/g;-><init>(Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;I)V

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->FLAG_MASKS:[I

    sget-object v1, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v18}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->AXIS_OPTIONS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getMajorUnit()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    return p0
.end method

.method public getMajorUnitValue()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    return p0
.end method

.method public getMaximumCategory()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    return p0
.end method

.method public getMinimumCategory()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    return p0
.end method

.method public getMinorUnit()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    return p0
.end method

.method public getMinorUnitValue()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1062

    return p0
.end method

.method public isDefaultBase()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultCross()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultDateSettings()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultMajor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultMaximum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultMinimum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultMinorUnit()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIsDate()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBaseUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    return-void
.end method

.method public setDefaultBase(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultCross(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultDateSettings(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMajor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMaximum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMinimum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMinorUnit(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setIsDate(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setMajorUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    return-void
.end method

.method public setMajorUnitValue(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    return-void
.end method

.method public setMaximumCategory(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    return-void
.end method

.method public setMinimumCategory(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    return-void
.end method

.method public setMinorUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    return-void
.end method

.method public setMinorUnitValue(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method
