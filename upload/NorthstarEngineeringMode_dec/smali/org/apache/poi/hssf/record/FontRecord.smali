.class public final Lorg/apache/poi/hssf/record/FontRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final SS_NONE:S = 0x0s

.field public static final SS_SUB:S = 0x2s

.field public static final SS_SUPER:S = 0x1s

.field public static final U_DOUBLE:B = 0x2t

.field public static final U_DOUBLE_ACCOUNTING:B = 0x22t

.field public static final U_NONE:B = 0x0t

.field public static final U_SINGLE:B = 0x1t

.field public static final U_SINGLE_ACCOUNTING:B = 0x21t

.field private static final italic:Lorg/apache/poi/util/BitField;

.field private static final macoutline:Lorg/apache/poi/util/BitField;

.field private static final macshadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x31s

.field private static final strikeout:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_11_font_name:Ljava/lang/String;

.field private field_1_font_height:S

.field private field_2_attributes:S

.field private field_3_color_palette_index:S

.field private field_4_bold_weight:S

.field private field_5_super_sub_script:S

.field private field_6_underline:B

.field private field_7_family:B

.field private field_8_charset:B

.field private field_9_zero:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    .line 8
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    .line 9
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    .line 10
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    .line 11
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 12
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    if-lez v0, :cond_1

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1

    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iget-byte v0, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iget-object p1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->copy()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>(Lorg/apache/poi/hssf/record/FontRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->copy()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->copy()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hssf/record/FontRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAttributes()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return p0
.end method

.method public getBoldWeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    return p0
.end method

.method public getCharset()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    return p0
.end method

.method public getColorPaletteIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    return p0
.end method

.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x2

    :cond_1
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getFamily()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    return p0
.end method

.method public getFontHeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    return p0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    return-object p0
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

    const-string v1, "fontHeight"

    new-instance v3, Lorg/apache/poi/hssf/record/f1;

    move-object v2, v3

    const/4 v7, 0x0

    invoke-direct {v3, v7, v0}, Lorg/apache/poi/hssf/record/f1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string v3, "attributes"

    new-instance v4, Lorg/apache/poi/hssf/record/g1;

    invoke-direct {v4, v7, v0}, Lorg/apache/poi/hssf/record/g1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/poi/util/BitField;

    sget-object v6, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v7

    sget-object v6, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    const/4 v13, 0x1

    aput-object v6, v5, v13

    sget-object v6, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    const/4 v15, 0x2

    aput-object v6, v5, v15

    const/4 v6, 0x3

    sget-object v8, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    aput-object v8, v5, v6

    const-string v6, "MACOUTLINE"

    const-string v8, "MACSHADOW"

    const-string v9, "ITALIC"

    const-string v10, "STRIKEOUT"

    filled-new-array {v9, v10, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v4

    const-string v5, "colorPalette"

    new-instance v8, Lorg/apache/poi/hssf/record/h1;

    move-object v6, v8

    invoke-direct {v8, v7, v0}, Lorg/apache/poi/hssf/record/h1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string v7, "boldWeight"

    new-instance v9, Lorg/apache/poi/hssf/record/f1;

    move-object v8, v9

    invoke-direct {v9, v13, v0}, Lorg/apache/poi/hssf/record/f1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string/jumbo v9, "superSubScript"

    new-instance v11, Lorg/apache/poi/hssf/record/g1;

    move-object v10, v11

    invoke-direct {v11, v13, v0}, Lorg/apache/poi/hssf/record/g1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string/jumbo v11, "underline"

    new-instance v14, Lorg/apache/poi/hssf/record/h1;

    move-object v12, v14

    invoke-direct {v14, v13, v0}, Lorg/apache/poi/hssf/record/h1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string v13, "family"

    new-instance v14, Lorg/apache/poi/hssf/record/f1;

    move-object/from16 v16, v14

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    invoke-direct {v1, v15, v0}, Lorg/apache/poi/hssf/record/f1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string v1, "charset"

    move-object/from16 v20, v2

    move v2, v15

    move-object v15, v1

    new-instance v1, Lorg/apache/poi/hssf/record/g1;

    move-object/from16 v16, v1

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/record/g1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    const-string v17, "fontName"

    new-instance v1, Lorg/apache/poi/hssf/record/h1;

    move-object/from16 v18, v1

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/record/h1;-><init>(ILorg/apache/poi/hssf/record/FontRecord;)V

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v18}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FONT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method public getSuperSubScript()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    return p0
.end method

.method public getUnderline()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    return p0
.end method

.method public hashCode()I
    .locals 11

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isItalic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isMacoutlined()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isMacshadowed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isStruckout()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    iget-byte v1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getAttributes()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getColorPaletteIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getBoldWeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getSuperSubScript()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getUnderline()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getFamily()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FontRecord;->getCharset()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_9_zero:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-lez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttributes(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return-void
.end method

.method public setBoldWeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_4_bold_weight:S

    return-void
.end method

.method public setCharset(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_8_charset:B

    return-void
.end method

.method public setColorPaletteIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_3_color_palette_index:S

    return-void
.end method

.method public setFamily(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_7_family:B

    return-void
.end method

.method public setFontHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_1_font_height:S

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_11_font_name:Ljava/lang/String;

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->italic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return-void
.end method

.method public setMacoutline(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macoutline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return-void
.end method

.method public setMacshadow(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->macshadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/FontRecord;->strikeout:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_2_attributes:S

    return-void
.end method

.method public setSuperSubScript(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_5_super_sub_script:S

    return-void
.end method

.method public setUnderline(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/FontRecord;->field_6_underline:B

    return-void
.end method
