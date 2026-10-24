.class public final Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

.field private static final automaticMajor:Lorg/apache/poi/util/BitField;

.field private static final automaticMaximum:Lorg/apache/poi/util/BitField;

.field private static final automaticMinimum:Lorg/apache/poi/util/BitField;

.field private static final automaticMinor:Lorg/apache/poi/util/BitField;

.field private static final crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

.field private static final logarithmicScale:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101fs

.field private static final valuesInReverse:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_minimumAxisValue:D

.field private field_2_maximumAxisValue:D

.field private field_3_majorIncrement:D

.field private field_4_minorIncrement:D

.field private field_5_categoryAxisCross:D

.field private field_6_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    .line 4
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    .line 5
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    .line 6
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    .line 7
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    .line 8
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->copy()Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->copy()Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->copy()Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;)V

    return-object v0
.end method

.method public getCategoryAxisCross()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    return-wide v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 24
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

    const-string v1, "minimumAxisValue"

    new-instance v2, Lorg/apache/poi/hssf/record/chart/m1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/chart/m1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const-string v4, "maximumAxisValue"

    new-instance v5, Lorg/apache/poi/hssf/record/chart/n1;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/chart/n1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const-string v6, "majorIncrement"

    new-instance v7, Lorg/apache/poi/hssf/record/chart/o1;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/chart/o1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const-string v8, "minorIncrement"

    new-instance v9, Lorg/apache/poi/hssf/record/chart/m1;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, Lorg/apache/poi/hssf/record/chart/m1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const-string v11, "categoryAxisCross"

    new-instance v12, Lorg/apache/poi/hssf/record/chart/n1;

    invoke-direct {v12, v0, v10}, Lorg/apache/poi/hssf/record/chart/n1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const-string/jumbo v13, "options"

    new-instance v14, Lorg/apache/poi/hssf/record/chart/o1;

    invoke-direct {v14, v0, v10}, Lorg/apache/poi/hssf/record/chart/o1;-><init>(Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;I)V

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/poi/util/BitField;

    sget-object v15, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    aput-object v15, v0, v3

    sget-object v3, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    aput-object v3, v0, v10

    const/4 v3, 0x2

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/4 v3, 0x3

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/4 v3, 0x4

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/4 v3, 0x5

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/4 v3, 0x6

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/4 v3, 0x7

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const/16 v3, 0x8

    sget-object v10, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    aput-object v10, v0, v3

    const-string v15, "AUTOMATIC_MINIMUM"

    const-string v16, "AUTOMATIC_MAXIMUM"

    const-string v17, "AUTOMATIC_MAJOR"

    const-string v18, "AUTOMATIC_MINOR"

    const-string v19, "AUTOMATIC_CATEGORY_CROSSING"

    const-string v20, "LOGARITHMIC_SCALE"

    const-string v21, "VALUES_IN_REVERSE"

    const-string v22, "CROSS_CATEGORY_AXIS_AT_MAXIMUM"

    const-string v23, "RESERVED"

    filled-new-array/range {v15 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v0, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v14

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->VALUE_RANGE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getMajorIncrement()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    return-wide v0
.end method

.method public getMaximumAxisValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    return-wide v0
.end method

.method public getMinimumAxisValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    return-wide v0
.end method

.method public getMinorIncrement()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    return-wide v0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x101f

    return p0
.end method

.method public isAutomaticCategoryCrossing()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutomaticMajor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutomaticMaximum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutomaticMinimum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutomaticMinor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isCrossCategoryAxisAtMaximum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isLogarithmicScale()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isReserved()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isValuesInReverse()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutomaticCategoryCrossing(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setAutomaticMajor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setAutomaticMaximum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setAutomaticMinimum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setAutomaticMinor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setCategoryAxisCross(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    return-void
.end method

.method public setCrossCategoryAxisAtMaximum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setLogarithmicScale(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setMajorIncrement(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    return-void
.end method

.method public setMaximumAxisValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    return-void
.end method

.method public setMinimumAxisValue(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    return-void
.end method

.method public setMinorIncrement(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setReserved(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method

.method public setValuesInReverse(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return-void
.end method
