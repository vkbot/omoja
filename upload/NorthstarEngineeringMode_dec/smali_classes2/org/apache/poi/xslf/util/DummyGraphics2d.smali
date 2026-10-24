.class public Lorg/apache/poi/xslf/util/DummyGraphics2d;
.super Ljava/awt/Graphics2D;
.source "SourceFile"


# static fields
.field private static final ATTRS:[Ljava/lang/Object;

.field private static final COMPOSITE_RULES:[Ljava/lang/String;

.field private static final HINTS:[Ljava/lang/Object;


# instance fields
.field private bufimg:Ljava/awt/image/BufferedImage;

.field private final g2D:Ljava/awt/Graphics2D;

.field private final log:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 119

    const-string v0, "CLEAR"

    const-string v1, "SRC"

    const-string v2, "SRC_OVER"

    const-string v3, "DST_OVER"

    const-string v4, "SRC_IN"

    const-string v5, "DST_IN"

    const-string v6, "SRC_OUT"

    const-string v7, "DST_OUT"

    const-string v8, "DST"

    const-string v9, "SRC_ATOP"

    const-string v10, "DST_ATOP"

    const-string v11, "XOR"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->COMPOSITE_RULES:[Ljava/lang/String;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    const-string v2, "RenderingHints.KEY_ANTIALIASING"

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    const-string v4, "RenderingHints.VALUE_ANTIALIAS_ON"

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

    const-string v6, "RenderingHints.VALUE_ANTIALIAS_OFF"

    sget-object v7, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    const-string v8, "RenderingHints.VALUE_ANTIALIAS_DEFAULT"

    sget-object v9, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    const-string v10, "RenderingHints.KEY_RENDERING"

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    const-string v12, "RenderingHints.VALUE_RENDER_SPEED"

    sget-object v13, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    const-string v14, "RenderingHints.VALUE_RENDER_QUALITY"

    sget-object v15, Ljava/awt/RenderingHints;->VALUE_RENDER_DEFAULT:Ljava/lang/Object;

    const-string v16, "RenderingHints.VALUE_RENDER_DEFAULT"

    sget-object v17, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    const-string v18, "RenderingHints.KEY_DITHERING"

    sget-object v19, Ljava/awt/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    const-string v20, "RenderingHints.VALUE_DITHER_DISABLE"

    sget-object v21, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    const-string v22, "RenderingHints.VALUE_DITHER_ENABLE"

    sget-object v23, Ljava/awt/RenderingHints;->VALUE_DITHER_DEFAULT:Ljava/lang/Object;

    const-string v24, "RenderingHints.VALUE_DITHER_DEFAULT"

    sget-object v25, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    const-string v26, "RenderingHints.KEY_TEXT_ANTIALIASING"

    sget-object v27, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    const-string v28, "RenderingHints.VALUE_TEXT_ANTIALIAS_ON"

    sget-object v29, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    const-string v30, "RenderingHints.VALUE_TEXT_ANTIALIAS_OFF"

    sget-object v31, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    const-string v32, "RenderingHints.VALUE_TEXT_ANTIALIAS_DEFAULT"

    sget-object v33, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_GASP:Ljava/lang/Object;

    const-string v34, "RenderingHints.VALUE_TEXT_ANTIALIAS_GASP"

    sget-object v35, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HRGB:Ljava/lang/Object;

    const-string v36, "RenderingHints.VALUE_TEXT_ANTIALIAS_LCD_HRGB"

    sget-object v37, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_HBGR:Ljava/lang/Object;

    const-string v38, "RenderingHints.VALUE_TEXT_ANTIALIAS_LCD_HBGR"

    sget-object v39, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VRGB:Ljava/lang/Object;

    const-string v40, "RenderingHints.VALUE_TEXT_ANTIALIAS_LCD_VRGB"

    sget-object v41, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_LCD_VBGR:Ljava/lang/Object;

    const-string v42, "RenderingHints.VALUE_TEXT_ANTIALIAS_LCD_VBGR"

    sget-object v43, Ljava/awt/RenderingHints;->KEY_TEXT_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    const-string v44, "RenderingHints.KEY_TEXT_LCD_CONTRAST"

    sget-object v45, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    const-string v46, "RenderingHints.KEY_FRACTIONALMETRICS"

    sget-object v47, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    const-string v48, "RenderingHints.VALUE_FRACTIONALMETRICS_OFF"

    sget-object v49, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    const-string v50, "RenderingHints.VALUE_FRACTIONALMETRICS_ON"

    sget-object v51, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    const-string v52, "RenderingHints.VALUE_FRACTIONALMETRICS_DEFAULT"

    sget-object v53, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    const-string v54, "RenderingHints.KEY_INTERPOLATION"

    sget-object v55, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    const-string v56, "RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR"

    sget-object v57, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    const-string v58, "RenderingHints.VALUE_INTERPOLATION_BILINEAR"

    sget-object v59, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    const-string v60, "RenderingHints.VALUE_INTERPOLATION_BICUBIC"

    sget-object v61, Ljava/awt/RenderingHints;->KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    const-string v62, "RenderingHints.KEY_ALPHA_INTERPOLATION"

    sget-object v63, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

    const-string v64, "RenderingHints.VALUE_ALPHA_INTERPOLATION_SPEED"

    sget-object v65, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    const-string v66, "RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY"

    sget-object v67, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

    const-string v68, "RenderingHints.VALUE_ALPHA_INTERPOLATION_DEFAULT"

    sget-object v69, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    const-string v70, "RenderingHints.KEY_COLOR_RENDERING"

    sget-object v71, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    const-string v72, "RenderingHints.VALUE_COLOR_RENDER_SPEED"

    sget-object v73, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    const-string v74, "RenderingHints.VALUE_COLOR_RENDER_QUALITY"

    sget-object v75, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

    const-string v76, "RenderingHints.VALUE_COLOR_RENDER_DEFAULT"

    sget-object v77, Ljava/awt/RenderingHints;->KEY_STROKE_CONTROL:Ljava/awt/RenderingHints$Key;

    const-string v78, "RenderingHints.KEY_STROKE_CONTROL"

    sget-object v79, Ljava/awt/RenderingHints;->VALUE_STROKE_DEFAULT:Ljava/lang/Object;

    const-string v80, "RenderingHints.VALUE_STROKE_DEFAULT"

    sget-object v81, Ljava/awt/RenderingHints;->VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

    const-string v82, "RenderingHints.VALUE_STROKE_NORMALIZE"

    sget-object v83, Ljava/awt/RenderingHints;->VALUE_STROKE_PURE:Ljava/lang/Object;

    const-string v84, "RenderingHints.VALUE_STROKE_PURE"

    filled-new-array/range {v1 .. v84}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->HINTS:[Ljava/lang/Object;

    sget-object v1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    const-string v2, "TextAttribute.FAMILY"

    sget-object v3, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    const-string v4, "TextAttribute.WEIGHT"

    sget-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    const-string v6, "TextAttribute.WEIGHT_EXTRA_LIGHT"

    sget-object v7, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    const-string v8, "TextAttribute.WEIGHT_LIGHT"

    sget-object v9, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    const-string v10, "TextAttribute.WEIGHT_DEMILIGHT"

    sget-object v11, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    const-string v12, "TextAttribute.WEIGHT_REGULAR"

    sget-object v13, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    const-string v14, "TextAttribute.WEIGHT_SEMIBOLD"

    sget-object v15, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    const-string v16, "TextAttribute.WEIGHT_MEDIUM"

    sget-object v17, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    const-string v18, "TextAttribute.WEIGHT_DEMIBOLD"

    sget-object v19, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    const-string v20, "TextAttribute.WEIGHT_BOLD"

    sget-object v21, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    const-string v22, "TextAttribute.WEIGHT_HEAVY"

    sget-object v23, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    const-string v24, "TextAttribute.WEIGHT_EXTRABOLD"

    sget-object v25, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    const-string v26, "TextAttribute.WEIGHT_ULTRABOLD"

    sget-object v27, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    const-string v28, "TextAttribute.WIDTH"

    sget-object v29, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    const-string v30, "TextAttribute.WIDTH_CONDENSED"

    sget-object v31, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    const-string v32, "TextAttribute.WIDTH_SEMI_CONDENSED"

    sget-object v33, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    const-string v34, "TextAttribute.WIDTH_REGULAR"

    sget-object v35, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    const-string v36, "TextAttribute.WIDTH_SEMI_EXTENDED"

    sget-object v37, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    const-string v38, "TextAttribute.WIDTH_EXTENDED"

    sget-object v39, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    const-string v40, "TextAttribute.POSTURE"

    sget-object v41, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    const-string v42, "TextAttribute.POSTURE_REGULAR"

    sget-object v43, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    const-string v44, "TextAttribute.POSTURE_OBLIQUE"

    sget-object v45, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    const-string v46, "TextAttribute.SIZE"

    sget-object v47, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    const-string v48, "TextAttribute.TRANSFORM"

    sget-object v49, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    const-string v50, "TextAttribute.SUPERSCRIPT"

    sget-object v51, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    const-string v52, "TextAttribute.SUPERSCRIPT_SUPER"

    sget-object v53, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    const-string v54, "TextAttribute.SUPERSCRIPT_SUB"

    sget-object v55, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    const-string v56, "TextAttribute.FONT"

    sget-object v57, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    const-string v58, "TextAttribute.CHAR_REPLACEMENT"

    sget-object v59, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    const-string v60, "TextAttribute.FOREGROUND"

    sget-object v61, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    const-string v62, "TextAttribute.BACKGROUND"

    sget-object v63, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    const-string v64, "TextAttribute.UNDERLINE"

    sget-object v65, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    const-string v66, "TextAttribute.UNDERLINE_ON"

    sget-object v67, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    const-string v68, "TextAttribute.STRIKETHROUGH"

    sget-object v69, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    const-string v70, "TextAttribute.STRIKETHROUGH_ON"

    sget-object v71, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    const-string v72, "TextAttribute.RUN_DIRECTION"

    sget-object v73, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    const-string v74, "TextAttribute.RUN_DIRECTION_LTR"

    sget-object v75, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    const-string v76, "TextAttribute.RUN_DIRECTION_RTL"

    sget-object v77, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    const-string v78, "TextAttribute.BIDI_EMBEDDING"

    sget-object v79, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    const-string v80, "TextAttribute.JUSTIFICATION"

    sget-object v81, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    const-string v82, "TextAttribute.JUSTIFICATION_FULL"

    sget-object v83, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    const-string v84, "TextAttribute.JUSTIFICATION_NONE"

    sget-object v85, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    const-string v86, "TextAttribute.INPUT_METHOD_HIGHLIGHT"

    sget-object v87, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    const-string v88, "TextAttribute.INPUT_METHOD_UNDERLINE"

    sget-object v89, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    const-string v90, "TextAttribute.UNDERLINE_LOW_ONE_PIXEL"

    sget-object v91, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    const-string v92, "TextAttribute.UNDERLINE_LOW_TWO_PIXEL"

    sget-object v93, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    const-string v94, "TextAttribute.UNDERLINE_LOW_DOTTED"

    sget-object v95, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    const-string v96, "TextAttribute.UNDERLINE_LOW_GRAY"

    sget-object v97, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    const-string v98, "TextAttribute.UNDERLINE_LOW_DASHED"

    sget-object v99, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    const-string v100, "TextAttribute.SWAP_COLORS"

    sget-object v101, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    const-string v102, "TextAttribute.SWAP_COLORS_ON"

    sget-object v103, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    const-string v104, "TextAttribute.NUMERIC_SHAPING"

    sget-object v105, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    const-string v106, "TextAttribute.KERNING"

    sget-object v107, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    const-string v108, "TextAttribute.KERNING_ON"

    sget-object v109, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    const-string v110, "TextAttribute.LIGATURES"

    sget-object v111, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    const-string v112, "TextAttribute.LIGATURES_ON"

    sget-object v113, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    const-string v114, "TextAttribute.TRACKING"

    sget-object v115, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    const-string v116, "TextAttribute.TRACKING_TIGHT"

    sget-object v117, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    const-string v118, "TextAttribute.TRACKING_LOOSE"

    filled-new-array/range {v1 .. v118}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->ATTRS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/util/DummyGraphics2d;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    .line 3
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->bufimg:Ljava/awt/image/BufferedImage;

    .line 4
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    check-cast v0, Ljava/awt/Graphics2D;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    iput-object p1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Ljava/awt/Graphics2D;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    iput-object p1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->lambda$drawString$1(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->lambda$null$0(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$drawString$1(Ljava/util/Map;Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$null$0(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private static mapAttribute(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/awt/Font;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/awt/Font;

    const-string v0, "Font.ITALIC"

    const-string v1, "Font.BOLD | Font.ITALIC"

    const-string v2, "Font.PLAIN"

    const-string v3, "Font.BOLD"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new Font(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/awt/Font;->getFamily(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Font;->getStyle()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Font;->getSize()I

    move-result p0

    const-string v0, ")"

    invoke-static {v1, p0, v0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    check-cast p0, Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "new Color(0x%08X)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/xslf/util/DummyGraphics2d;->ATTRS:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    if-ne p0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mapHint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/awt/geom/AffineTransform;

    invoke-static {p0}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapTransform(Ljava/awt/geom/AffineTransform;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/xslf/util/DummyGraphics2d;->HINTS:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    if-ne p0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mapTransform(Ljava/awt/geom/AffineTransform;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "new AffineTransform()"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new AffineTransform("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "f,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "f)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private pathToString(Ljava/lang/StringBuilder;Ljava/awt/geom/Path2D;)V
    .locals 8

    const-string p0, "Path2D p = new Path2D.Double("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/geom/Path2D;->getWindingRule()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ");\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/awt/geom/Path2D;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p2, v0}, Ljava/awt/geom/PathIterator;->currentSegment([D)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ","

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/4 v7, 0x4

    if-eq v1, v5, :cond_1

    if-eq v1, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "p.closePath();\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    const-string v1, "p.curveTo("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v6

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v5

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v7

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "p.quadTo("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v6

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v5

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "p.lineTo("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "p.moveTo("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v0, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p2}, Ljava/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addRenderingHinds(Map):\n  hints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->addRenderingHints(Ljava/util/Map;)V

    return-void
.end method

.method public clearRect(IIII)V
    .locals 3

    const-string v0, "clearRect(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clip(Shape):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    return-void
.end method

.method public clipRect(IIII)V
    .locals 3

    const-string v0, "clipRect(int, int, int, int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 9

    const-string v0, "copyArea(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->copyArea(IIIIII)V

    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "create():"

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 24
    invoke-virtual {p0}, Ljava/awt/Graphics2D;->create()Ljava/awt/Graphics;

    move-result-object p0

    return-object p0
.end method

.method public create(IIII)Ljava/awt/Graphics;
    .locals 3

    const-string v0, "create(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    .line 2
    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->create(IIII)Ljava/awt/Graphics;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "dispose():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 3

    instance-of v0, p1, Ljava/awt/geom/Path2D;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/awt/geom/Path2D;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->pathToString(Ljava/lang/StringBuilder;Ljava/awt/geom/Path2D;)V

    const-string v1, "g.draw(p);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.draw("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public draw3DRect(IIIIZ)V
    .locals 8

    const-string v0, "draw3DRect(int,int,int,int,boolean):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    const-string v2, "\n  raised = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->draw3DRect(IIIIZ)V

    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 9

    const-string v0, "drawArc(int,int,int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    const-string v2, "\n  startAngle = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n  arcAngle = "

    invoke-static {v0, p5, v1, p6}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawArc(IIIIII)V

    return-void
.end method

.method public drawBytes([BIIII)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawBytes(byte[],int,int,int,int):\n  data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    const-string v2, "\n  y = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawBytes([BIIII)V

    return-void
.end method

.method public drawChars([CIIII)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawChars(data,int,int,int,int):\n  data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    const-string v2, "\n  y = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawChars([CIIII)V

    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawGlyphVector(GlyphVector, float, float):\n  g = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V

    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  op = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    .line 2
    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 15

    move-object v0, p0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  dy1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx2 = "

    const-string v4, "\n  dy2 = "

    move/from16 v6, p3

    move/from16 v7, p4

    .line 42
    invoke-static {v1, v6, v3, v7, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "\n  sx1 = "

    const-string v4, "\n  sy1 = "

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static {v1, v8, v3, v9, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "\n  sx2 = "

    const-string v4, "\n  sy2 = "

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static {v1, v10, v3, v11, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v12, p9

    .line 43
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  bgcolor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p11

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 44
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object/from16 v4, p1

    .line 45
    invoke-virtual/range {v3 .. v14}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 14

    move-object v0, p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  dy1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx2 = "

    const-string v4, "\n  dy2 = "

    move/from16 v6, p3

    move/from16 v7, p4

    .line 21
    invoke-static {v1, v6, v3, v7, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "\n  sx1 = "

    const-string v4, "\n  sy1 = "

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static {v1, v8, v3, v9, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "\n  sx2 = "

    const-string v4, "\n  sy2 = "

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static {v1, v10, v3, v11, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v12, p9

    .line 22
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 23
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v4, p1

    .line 24
    invoke-virtual/range {v3 .. v13}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 11

    move-object v0, p0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  x = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  width = "

    const-string v4, "\n  height = "

    move v6, p3

    move v7, p4

    .line 69
    invoke-static {v1, p3, v3, p4, v4}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v8, p5

    .line 70
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  bgcolor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 71
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v4, p1

    .line 72
    invoke-virtual/range {v3 .. v10}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 9

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,width,height,observer):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  width = "

    const-string v2, "\n  height = "

    .line 90
    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 92
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 93
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  bgcolor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 63
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 64
    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,observer):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 66
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,AfflineTransform,ImageObserver):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  obs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawLine(IIII)V
    .locals 3

    const-string v0, "drawLine(int,int,int,int):\n  x1 = "

    const-string v1, "\n  y1 = "

    const-string v2, "\n  x2 = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  y2 = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawLine(IIII)V

    return-void
.end method

.method public drawOval(IIII)V
    .locals 3

    const-string v0, "drawOval(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawOval(IIII)V

    return-void
.end method

.method public drawPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolygon(Polygon):\n  p = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 2
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->drawPolygon(Ljava/awt/Polygon;)V

    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolygon(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawPolygon([I[II)V

    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolyline(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawPolyline([I[II)V

    return-void
.end method

.method public drawRect(IIII)V
    .locals 3

    const-string v0, "drawRect(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawRect(IIII)V

    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawRenderableImage(RenderableImage, AfflineTransform):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics2D;->drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawRenderedImage(RenderedImage, AffineTransform):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 9

    const-string v0, "drawRoundRect(int,int,int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    const-string v2, "\n  arcWidth = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n  arcHeight = "

    invoke-static {v0, p5, v1, p6}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawRoundRect(IIIIII)V

    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(s,x,y):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 2
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;FF)V

    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(str,int,int):\n  str = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 27
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    :goto_0
    const v8, 0xffff

    const/4 v9, 0x0

    if-eq v7, v8, :cond_0

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lorg/apache/poi/xslf/util/a;

    invoke-direct {v8, v9, v5, v1}, Lorg/apache/poi/xslf/util/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    move-result v7

    goto :goto_0

    .line 11
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AttributedString as = new AttributedString(\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\");\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 16
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, -0x2

    const/4 v10, 0x0

    move-object v11, v10

    move v10, v9

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, ");\n"

    const-string v14, "as.addAttribute("

    const-string v15, ","

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 18
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, -0x1

    if-lt v9, v5, :cond_1

    if-eq v12, v11, :cond_3

    :cond_1
    if-ltz v10, :cond_2

    .line 19
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapAttribute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapAttribute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move/from16 v10, v16

    :cond_3
    move-object v11, v12

    move/from16 v9, v16

    move-object/from16 v5, v17

    goto :goto_2

    :cond_4
    move-object/from16 v17, v5

    if-eqz v11, :cond_5

    .line 20
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapAttribute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapAttribute(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object/from16 v5, v17

    goto/16 :goto_1

    :cond_6
    const-string v5, "g.drawString(as.getIterator(),"

    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "f,"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "f);"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 22
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 23
    invoke-interface {v1, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v0, v0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 3

    instance-of v0, p1, Ljava/awt/geom/Path2D;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/awt/geom/Path2D;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->pathToString(Ljava/lang/StringBuilder;Ljava/awt/geom/Path2D;)V

    const-string v1, "g.fill(p);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.fill("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fill3DRect(IIIIZ)V
    .locals 8

    const-string v0, "fill3DRect(int,int,int,int,boolean):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    const-string v2, "\n  raised = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->fill3DRect(IIIIZ)V

    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 9

    const-string v0, "fillArc(int,int,int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    const-string v2, "\n  startAngle = "

    invoke-static {v0, p3, v1, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n  arcAngle = "

    invoke-static {v0, p5, v1, p6}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->fillArc(IIIIII)V

    return-void
.end method

.method public fillOval(IIII)V
    .locals 3

    const-string v0, "fillOval(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->fillOval(IIII)V

    return-void
.end method

.method public fillPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillPolygon(Polygon):\n  p = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 2
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->fillPolygon(Ljava/awt/Polygon;)V

    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillPolygon(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->fillPolygon([I[II)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "g.fillRect("

    const-string v2, ","

    invoke-static {v1, p1, v2, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "fillRoundRect("

    const-string v2, ","

    invoke-static {v1, p1, v2, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p3, v2, p4, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->fillRoundRect(IIIIII)V

    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getBackground():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getBackground()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getClip():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getClipBounds():"

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 2
    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClipBounds(Rectangle):\n  r = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 4
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 5
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getColor():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getComposite():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getDeviceConfiguration():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFont():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public getFontMetrics()Ljava/awt/FontMetrics;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontMetrics():"

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 2
    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontMetrics():"

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 4
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontRenderContext():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p0

    return-object p0
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getPaint():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRenderingHint(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getRenderingHints():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object p0

    return-object p0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getStroke():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object p0

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getTransform():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit(Rectangle, Shape, onStroke):\n  rect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  onStroke = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/Graphics2D;->hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z

    move-result p0

    return p0
.end method

.method public hitClip(IIII)Z
    .locals 3

    const-string v0, "hitClip(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->hitClip(IIII)Z

    move-result p0

    return p0
.end method

.method public rotate(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotate(theta):\n  theta = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 2
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics2D;->rotate(D)V

    return-void
.end method

.method public rotate(DDD)V
    .locals 9

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotate(double,double,double):\n  theta = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 5
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    .line 6
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->rotate(DDD)V

    return-void
.end method

.method public scale(DD)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.scale("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->scale(DD)V

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setBackground(new Color(0x%08X))%n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    return-void
.end method

.method public setClip(IIII)V
    .locals 3

    const-string v0, "setClip(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  height = "

    .line 2
    invoke-static {v0, p3, v1, p4}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->setClip(IIII)V

    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setClip(Shape):\n  clip = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 24
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 25
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "g.setColor(new Color(0x%08X));%n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 5

    instance-of v0, p1, Ljava/awt/AlphaComposite;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/awt/AlphaComposite;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.setComposite(AlphaComposite.getInstance(AlphaComposite."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/poi/xslf/util/DummyGraphics2d;->COMPOSITE_RULES:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "f));"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "g.setComposite("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFont(Font):\n  font = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 4

    instance-of v0, p1, Ljava/awt/Color;

    const-string v1, "g.setPaint("

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object v2, p1

    check-cast v2, Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "new Color(0x%08X));"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public setPaintMode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "setPaintMode():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->setPaintMode()V

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.setRenderingHint("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapHint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapHint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRenderingHints(Map):\n  hints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 5

    instance-of v0, p1, Ljava/awt/BasicStroke;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/awt/BasicStroke;

    const-string v1, "BUTT"

    const-string v2, "SQUARE"

    const-string v3, "ROUND"

    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "MITER"

    const-string v4, "BEVEL"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "g.setStroke(new BasicStroke("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "f, BasicStroke.CAP_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BasicStroke.JOIN_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "f, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "f));"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "g.setStroke("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "g.setTransform("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/xslf/util/DummyGraphics2d;->mapTransform(Ljava/awt/geom/AffineTransform;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setXORMode(Color):\n  c1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->setXORMode(Ljava/awt/Color;)V

    return-void
.end method

.method public shear(DD)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shear(shx, dhy):\n  shx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  shy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->shear(DD)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "toString():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transform(AffineTransform):\n  Tx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public translate(DD)V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translate(double, double):\n  tx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  ty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 23
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->translate(DD)V

    return-void
.end method

.method public translate(II)V
    .locals 2

    const-string v0, "translate(int,int):\n  x = "

    const-string v1, "\n  y = "

    .line 1
    invoke-static {v0, p1, v1, p2}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 2
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/awt/Graphics2D;->translate(II)V

    return-void
.end method
