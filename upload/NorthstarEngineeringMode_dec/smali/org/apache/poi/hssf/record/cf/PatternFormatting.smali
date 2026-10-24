.class public final Lorg/apache/poi/hssf/record/cf/PatternFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final ALT_BARS:S = 0x3s

.field public static final BIG_SPOTS:S = 0x9s

.field public static final BRICKS:S = 0xas

.field public static final DIAMONDS:S = 0x10s

.field public static final FINE_DOTS:S = 0x2s

.field public static final LEAST_DOTS:S = 0x12s

.field public static final LESS_DOTS:S = 0x11s

.field public static final NO_FILL:S = 0x0s

.field public static final SOLID_FOREGROUND:S = 0x1s

.field public static final SPARSE_DOTS:S = 0x4s

.field public static final SQUARES:S = 0xfs

.field public static final THICK_BACKWARD_DIAG:S = 0x7s

.field public static final THICK_FORWARD_DIAG:S = 0x8s

.field public static final THICK_HORZ_BANDS:S = 0x5s

.field public static final THICK_VERT_BANDS:S = 0x6s

.field public static final THIN_BACKWARD_DIAG:S = 0xds

.field public static final THIN_FORWARD_DIAG:S = 0xes

.field public static final THIN_HORZ_BANDS:S = 0xbs

.field public static final THIN_VERT_BANDS:S = 0xcs

.field private static final fillPatternStyle:Lorg/apache/poi/util/BitField;

.field private static final patternBackgroundColorIndex:Lorg/apache/poi/util/BitField;

.field private static final patternColorIndex:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_15_pattern_style:I

.field private field_16_pattern_color_indexes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xfc00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->fillPatternStyle:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternColorIndex:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x3f80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternBackgroundColorIndex:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->copy()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V

    return-object v0
.end method

.method public getDataLength()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getFillBackgroundColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternBackgroundColorIndex:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getFillForegroundColor()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternColorIndex:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getFillPattern()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->fillPatternStyle:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 23
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

    const-string v1, "fillPattern"

    new-instance v2, Lorg/apache/poi/ddf/d;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/16 v3, 0x13

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "NO_FILL"

    const-string v5, "SOLID_FOREGROUND"

    const-string v6, "FINE_DOTS"

    const-string v7, "ALT_BARS"

    const-string v8, "SPARSE_DOTS"

    const-string v9, "THICK_HORZ_BANDS"

    const-string v10, "THICK_VERT_BANDS"

    const-string v11, "THICK_BACKWARD_DIAG"

    const-string v12, "THICK_FORWARD_DIAG"

    const-string v13, "BIG_SPOTS"

    const-string v14, "BRICKS"

    const-string v15, "THIN_HORZ_BANDS"

    const-string v16, "THIN_VERT_BANDS"

    const-string v17, "THIN_BACKWARD_DIAG"

    const-string v18, "THIN_FORWARD_DIAG"

    const-string v19, "SQUARES"

    const-string v20, "DIAMONDS"

    const-string v21, "LESS_DOTS"

    const-string v22, "LEAST_DOTS"

    filled-new-array/range {v4 .. v22}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v3, "fillForegroundColor"

    new-instance v4, Lorg/apache/poi/ddf/b;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string v5, "fillBackgroundColor"

    new-instance v6, Lorg/apache/poi/ddf/c;

    const/16 v7, 0x11

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0

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
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
    .end array-data
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFillBackgroundColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternBackgroundColorIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    return-void
.end method

.method public setFillForegroundColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->patternColorIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_16_pattern_color_indexes:I

    return-void
.end method

.method public setFillPattern(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->fillPatternStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->field_15_pattern_style:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
