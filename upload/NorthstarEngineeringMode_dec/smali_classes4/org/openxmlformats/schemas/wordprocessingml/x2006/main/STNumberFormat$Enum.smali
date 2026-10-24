.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_AIUEO:I = 0xd

.field static final INT_AIUEO_FULL_WIDTH:I = 0x15

.field static final INT_ARABIC_ABJAD:I = 0x35

.field static final INT_ARABIC_ALPHA:I = 0x34

.field static final INT_BAHT_TEXT:I = 0x3d

.field static final INT_BULLET:I = 0x18

.field static final INT_CARDINAL_TEXT:I = 0x7

.field static final INT_CHICAGO:I = 0xa

.field static final INT_CHINESE_COUNTING:I = 0x26

.field static final INT_CHINESE_COUNTING_THOUSAND:I = 0x28

.field static final INT_CHINESE_LEGAL_SIMPLIFIED:I = 0x27

.field static final INT_CHOSUNG:I = 0x1a

.field static final INT_CUSTOM:I = 0x3f

.field static final INT_DECIMAL:I = 0x1

.field static final INT_DECIMAL_ENCLOSED_CIRCLE:I = 0x13

.field static final INT_DECIMAL_ENCLOSED_CIRCLE_CHINESE:I = 0x1d

.field static final INT_DECIMAL_ENCLOSED_FULLSTOP:I = 0x1b

.field static final INT_DECIMAL_ENCLOSED_PAREN:I = 0x1c

.field static final INT_DECIMAL_FULL_WIDTH:I = 0xf

.field static final INT_DECIMAL_FULL_WIDTH_2:I = 0x14

.field static final INT_DECIMAL_HALF_WIDTH:I = 0x10

.field static final INT_DECIMAL_ZERO:I = 0x17

.field static final INT_DOLLAR_TEXT:I = 0x3e

.field static final INT_GANADA:I = 0x19

.field static final INT_HEBREW_1:I = 0x32

.field static final INT_HEBREW_2:I = 0x33

.field static final INT_HEX:I = 0x9

.field static final INT_HINDI_CONSONANTS:I = 0x37

.field static final INT_HINDI_COUNTING:I = 0x39

.field static final INT_HINDI_NUMBERS:I = 0x38

.field static final INT_HINDI_VOWELS:I = 0x36

.field static final INT_IDEOGRAPH_DIGITAL:I = 0xb

.field static final INT_IDEOGRAPH_ENCLOSED_CIRCLE:I = 0x1e

.field static final INT_IDEOGRAPH_LEGAL_TRADITIONAL:I = 0x23

.field static final INT_IDEOGRAPH_TRADITIONAL:I = 0x1f

.field static final INT_IDEOGRAPH_ZODIAC:I = 0x20

.field static final INT_IDEOGRAPH_ZODIAC_TRADITIONAL:I = 0x21

.field static final INT_IROHA:I = 0xe

.field static final INT_IROHA_FULL_WIDTH:I = 0x16

.field static final INT_JAPANESE_COUNTING:I = 0xc

.field static final INT_JAPANESE_DIGITAL_TEN_THOUSAND:I = 0x12

.field static final INT_JAPANESE_LEGAL:I = 0x11

.field static final INT_KOREAN_COUNTING:I = 0x2a

.field static final INT_KOREAN_DIGITAL:I = 0x29

.field static final INT_KOREAN_DIGITAL_2:I = 0x2c

.field static final INT_KOREAN_LEGAL:I = 0x2b

.field static final INT_LOWER_LETTER:I = 0x5

.field static final INT_LOWER_ROMAN:I = 0x3

.field static final INT_NONE:I = 0x30

.field static final INT_NUMBER_IN_DASH:I = 0x31

.field static final INT_ORDINAL:I = 0x6

.field static final INT_ORDINAL_TEXT:I = 0x8

.field static final INT_RUSSIAN_LOWER:I = 0x2e

.field static final INT_RUSSIAN_UPPER:I = 0x2f

.field static final INT_TAIWANESE_COUNTING:I = 0x22

.field static final INT_TAIWANESE_COUNTING_THOUSAND:I = 0x24

.field static final INT_TAIWANESE_DIGITAL:I = 0x25

.field static final INT_THAI_COUNTING:I = 0x3c

.field static final INT_THAI_LETTERS:I = 0x3a

.field static final INT_THAI_NUMBERS:I = 0x3b

.field static final INT_UPPER_LETTER:I = 0x4

.field static final INT_UPPER_ROMAN:I = 0x2

.field static final INT_VIETNAMESE_COUNTING:I = 0x2d

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 67

    new-instance v0, Li5/h0$a;

    new-instance v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v1, v2

    const-string v3, "decimal"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v2, v3

    const-string v4, "upperRoman"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v3, v4

    const-string v5, "lowerRoman"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v4, v5

    const-string v6, "upperLetter"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v5, v6

    const-string v7, "lowerLetter"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v6, v7

    const-string v8, "ordinal"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v7, v8

    const-string v9, "cardinalText"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v8, v9

    const-string v10, "ordinalText"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v9, v10

    const-string v11, "hex"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v10, v11

    const-string v12, "chicago"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v11, v12

    const-string v13, "ideographDigital"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v12, v13

    const-string v14, "japaneseCounting"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v13, v14

    const-string v15, "aiueo"

    move-object/from16 v64, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v14, v0

    const-string v15, "iroha"

    move-object/from16 v65, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object v15, v0

    const-string v1, "decimalFullWidth"

    move-object/from16 v66, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v16, v0

    const-string v1, "decimalHalfWidth"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v17, v0

    const-string v1, "japaneseLegal"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v18, v0

    const-string v1, "japaneseDigitalTenThousand"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v19, v0

    const-string v1, "decimalEnclosedCircle"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v20, v0

    const-string v1, "decimalFullWidth2"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v21, v0

    const-string v1, "aiueoFullWidth"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v22, v0

    const-string v1, "irohaFullWidth"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v23, v0

    const-string v1, "decimalZero"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v24, v0

    const-string v1, "bullet"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v25, v0

    const-string v1, "ganada"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v26, v0

    const-string v1, "chosung"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v27, v0

    const-string v1, "decimalEnclosedFullstop"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v28, v0

    const-string v1, "decimalEnclosedParen"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v29, v0

    const-string v1, "decimalEnclosedCircleChinese"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v30, v0

    const-string v1, "ideographEnclosedCircle"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v31, v0

    const-string v1, "ideographTraditional"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v32, v0

    const-string v1, "ideographZodiac"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v33, v0

    const-string v1, "ideographZodiacTraditional"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v34, v0

    const-string v1, "taiwaneseCounting"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v35, v0

    const-string v1, "ideographLegalTraditional"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v36, v0

    const-string v1, "taiwaneseCountingThousand"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v37, v0

    const-string v1, "taiwaneseDigital"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v38, v0

    const-string v1, "chineseCounting"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v39, v0

    const-string v1, "chineseLegalSimplified"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v40, v0

    const-string v1, "chineseCountingThousand"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v41, v0

    const-string v1, "koreanDigital"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v42, v0

    const-string v1, "koreanCounting"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v43, v0

    const-string v1, "koreanLegal"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v44, v0

    const-string v1, "koreanDigital2"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v45, v0

    const-string v1, "vietnameseCounting"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v46, v0

    const-string v1, "russianLower"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v47, v0

    const-string v1, "russianUpper"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v48, v0

    const-string v1, "none"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v49, v0

    const-string v1, "numberInDash"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v50, v0

    const-string v1, "hebrew1"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v51, v0

    const-string v1, "hebrew2"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v52, v0

    const-string v1, "arabicAlpha"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v53, v0

    const-string v1, "arabicAbjad"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v54, v0

    const-string v1, "hindiVowels"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v55, v0

    const-string v1, "hindiConsonants"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v56, v0

    const-string v1, "hindiNumbers"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v57, v0

    const-string v1, "hindiCounting"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v58, v0

    const-string v1, "thaiLetters"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v59, v0

    const-string v1, "thaiNumbers"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v60, v0

    const-string v1, "thaiCounting"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v61, v0

    const-string v1, "bahtText"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v62, v0

    const-string v1, "dollarText"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-object/from16 v63, v0

    const-string v1, "custom"

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    filled-new-array/range {v1 .. v63}, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v0

    move-object/from16 v1, v64

    invoke-direct {v1, v0}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object p0

    return-object p0
.end method
