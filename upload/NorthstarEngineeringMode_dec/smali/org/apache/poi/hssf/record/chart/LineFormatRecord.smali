.class public final Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final LINE_PATTERN_DARK_GRAY_PATTERN:S = 0x6s

.field public static final LINE_PATTERN_DASH:S = 0x1s

.field public static final LINE_PATTERN_DASH_DOT:S = 0x3s

.field public static final LINE_PATTERN_DASH_DOT_DOT:S = 0x4s

.field public static final LINE_PATTERN_DOT:S = 0x2s

.field public static final LINE_PATTERN_LIGHT_GRAY_PATTERN:S = 0x8s

.field public static final LINE_PATTERN_MEDIUM_GRAY_PATTERN:S = 0x7s

.field public static final LINE_PATTERN_NONE:S = 0x5s

.field public static final LINE_PATTERN_SOLID:S = 0x0s

.field public static final WEIGHT_HAIRLINE:S = -0x1s

.field public static final WEIGHT_MEDIUM:S = 0x1s

.field public static final WEIGHT_NARROW:S = 0x0s

.field public static final WEIGHT_WIDE:S = 0x2s

.field private static final auto:Lorg/apache/poi/util/BitField;

.field private static final drawTicks:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1007s

.field private static final unknown:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_lineColor:I

.field private field_2_linePattern:S

.field private field_3_weight:S

.field private field_4_format:S

.field private field_5_colourPaletteIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

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

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;)V

    return-object v0
.end method

.method public getColourPaletteIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getFormat()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

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

    const-string v0, "lineColor"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/x0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/x0;-><init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;I)V

    const-string v3, "linePattern"

    new-instance v4, Lorg/apache/poi/hssf/record/chart/y0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/chart/y0;-><init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const-string v6, "SOLID"

    const-string v7, "DASH"

    const-string v8, "DOT"

    const-string v9, "DASH_DOT"

    const-string v10, "DASH_DOT_DOT"

    const-string v11, "NONE"

    const-string v12, "DARK_GRAY_PATTERN"

    const-string v13, "MEDIUM_GRAY_PATTERN"

    const-string v14, "LIGHT_GRAY_PATTERN"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v4

    const-string/jumbo v5, "weight"

    new-instance v6, Lorg/apache/poi/ddf/d;

    const/16 v7, 0x19

    invoke-direct {v6, p0, v7}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    filled-new-array {v7, v2, v8, v9}, [I

    move-result-object v7

    const-string v10, "MEDIUM"

    const-string v11, "WIDE"

    const-string v12, "HAIRLINE"

    const-string v13, "NARROW"

    filled-new-array {v12, v13, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v10}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v6

    const-string v7, "format"

    new-instance v10, Lorg/apache/poi/hssf/record/chart/x0;

    invoke-direct {v10, p0, v8}, Lorg/apache/poi/hssf/record/chart/x0;-><init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;I)V

    const/4 v11, 0x3

    new-array v11, v11, [Lorg/apache/poi/util/BitField;

    sget-object v12, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    aput-object v12, v11, v2

    sget-object v2, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    aput-object v2, v11, v8

    sget-object v2, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    aput-object v2, v11, v9

    const-string v2, "DRAWTICKS"

    const-string v9, "UNKNOWN"

    const-string v12, "AUTO"

    filled-new-array {v12, v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v11, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v9

    const-string v10, "colourPaletteIndex"

    new-instance v11, Lorg/apache/poi/hssf/record/chart/y0;

    invoke-direct {v11, p0, v8}, Lorg/apache/poi/hssf/record/chart/y0;-><init>(Lorg/apache/poi/hssf/record/chart/LineFormatRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->LINE_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLineColor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    return p0
.end method

.method public getLinePattern()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1007

    return p0
.end method

.method public getWeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    return p0
.end method

.method public isAuto()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDrawTicks()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isUnknown()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAuto(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setColourPaletteIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-void
.end method

.method public setDrawTicks(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setFormat(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    return-void
.end method

.method public setLinePattern(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    return-void
.end method

.method public setUnknown(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setWeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    return-void
.end method
