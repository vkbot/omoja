.class public final Lorg/apache/poi/hssf/record/chart/TickRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final autoTextBackground:Lorg/apache/poi/util/BitField;

.field private static final autoTextColor:Lorg/apache/poi/util/BitField;

.field private static final autorotate:Lorg/apache/poi/util/BitField;

.field private static final rotation:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101es


# instance fields
.field private field_10_options:S

.field private field_11_tickColor:S

.field private field_12_zero5:S

.field private field_1_majorTickType:B

.field private field_2_minorTickType:B

.field private field_3_labelPosition:B

.field private field_4_background:B

.field private field_5_labelColorRgb:I

.field private field_6_zero1:I

.field private field_7_zero2:I

.field private field_8_zero3:I

.field private field_9_zero4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

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

    .line 15
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    .line 27
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/TickRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    .line 4
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    .line 11
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    .line 12
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 13
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    .line 14
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->copy()Lorg/apache/poi/hssf/record/chart/TickRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->copy()Lorg/apache/poi/hssf/record/chart/TickRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->copy()Lorg/apache/poi/hssf/record/chart/TickRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/TickRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;)V

    return-object v0
.end method

.method public getBackground()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/chart/j1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/j1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string v3, "majorTickType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l1;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/l1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string v3, "minorTickType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/j1;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/chart/j1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string v4, "labelPosition"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/k1;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/chart/k1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string v4, "background"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l1;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/chart/l1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string v4, "labelColorRgb"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/j1;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/chart/j1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string/jumbo v5, "zero1"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/k1;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/chart/k1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string/jumbo v5, "zero2"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l1;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/chart/l1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const/4 v5, 0x3

    new-array v6, v5, [Lorg/apache/poi/util/BitField;

    sget-object v7, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    aput-object v7, v6, v2

    sget-object v7, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    aput-object v7, v6, v3

    sget-object v3, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    aput-object v3, v6, v4

    const-string v3, "AUTO_TEXT_BACKGROUND"

    const-string v4, "AUTO_ROTATE"

    const-string v7, "AUTO_TEXT_COLOR"

    filled-new-array {v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v6, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string/jumbo v3, "options"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/j1;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/chart/j1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string/jumbo v3, "rotation"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/k1;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/chart/k1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string/jumbo v3, "tickColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/k1;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/k1;-><init>(Lorg/apache/poi/hssf/record/chart/TickRecord;I)V

    const-string/jumbo p0, "zero3"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->TICK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLabelColorRgb()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    return p0
.end method

.method public getLabelPosition()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    return p0
.end method

.method public getMajorTickType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    return p0
.end method

.method public getMinorTickType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return p0
.end method

.method public getRotation()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x101e

    return p0
.end method

.method public getTickColor()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    return p0
.end method

.method public getZero1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    return p0
.end method

.method public getZero2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    return p0
.end method

.method public getZero3()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    return p0
.end method

.method public isAutoTextBackground()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutoTextColor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutorotate()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutoTextBackground(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return-void
.end method

.method public setAutoTextColor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return-void
.end method

.method public setAutorotate(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return-void
.end method

.method public setBackground(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    return-void
.end method

.method public setLabelColorRgb(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    return-void
.end method

.method public setLabelPosition(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    return-void
.end method

.method public setMajorTickType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    return-void
.end method

.method public setMinorTickType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return-void
.end method

.method public setRotation(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return-void
.end method

.method public setTickColor(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    return-void
.end method

.method public setZero1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    return-void
.end method

.method public setZero2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    return-void
.end method

.method public setZero3(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    return-void
.end method
