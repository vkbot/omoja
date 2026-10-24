.class public Lorg/apache/poi/sl/draw/DrawTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;,
        Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field public static final HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field private static final LOG:La5/d;


# instance fields
.field protected autoNbrIdx:I

.field protected bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

.field protected firstParagraph:Z

.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;"
        }
    .end annotation
.end field

.field protected rawText:Ljava/lang/String;

.field x:D

.field y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:La5/d;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "href"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "label"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->firstParagraph:Z

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lambda$getAttributedString$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lambda$getAttributedString$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method

.method private getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAttributedString$0(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    invoke-direct {v0, p3, p4, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getAttributedString$1(Ljava/util/List;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/awt/Font;->canDisplay(I)Z

    move-result v1

    if-eq v1, p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method private processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/draw/DrawFontManager;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;I",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupRanges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;

    invoke-virtual {v15}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-interface {v10, v0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    :cond_0
    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v16

    if-nez v1, :cond_1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawFontInfo;

    move-object/from16 v6, p0

    iget-object v1, v6, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    :goto_1
    if-nez v1, :cond_2

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v5

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v6, v17

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v5

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v17

    move-object/from16 v2, v16

    move-object v13, v6

    move/from16 v6, v17

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {v15}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getLength()I

    move-result v1

    move v2, v14

    :goto_3
    add-int v3, v14, v1

    if-ge v2, v3, :cond_5

    const/4 v4, 0x1

    invoke-static {v13, v11, v2, v3, v4}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v4

    if-ge v2, v4, :cond_3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v5}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    add-int v6, p4, v2

    add-int v15, p4, v4

    move/from16 v23, v1

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v7, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-direct {v1, v7, v5, v6, v15}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v17

    const-string v18, "mapped: {} {} {} - {}"

    invoke-static {v6}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v15}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v5

    invoke-interface/range {v17 .. v22}, La5/b;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    move/from16 v23, v1

    goto :goto_4

    :goto_5
    invoke-static {v13, v11, v4, v3, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v2

    if-ge v4, v2, :cond_4

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    add-int v5, p4, v4

    add-int v6, p4, v2

    new-instance v7, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v15, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-direct {v7, v15, v3, v5, v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:La5/d;

    invoke-interface {v7}, La5/d;->e()La5/b;

    move-result-object v15

    const-string v16, "fallback: {} {} {} - {}"

    invoke-static {v5}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v3

    invoke-interface/range {v15 .. v20}, La5/b;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V

    :cond_4
    move-object/from16 v7, p1

    move/from16 v1, v23

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    move v14, v3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/AttributedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Lucida Sans"

    :cond_0
    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v2, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_1

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_1
    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    new-instance p1, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    new-instance v1, Ljava/awt/font/FontRenderContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    invoke-direct {p1, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p1

    float-to-double v0, p1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultTabSize()Ljava/lang/Double;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    const-wide/high16 p0, 0x4010000000000000L    # 4.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-int p0, p0

    :goto_0
    new-array p0, p0, [C

    const/16 p1, 0x20

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public breakText(Ljava/awt/Graphics2D;)V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/AttributedString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[\\r\\n]"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    iget-object v6, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v7, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v8, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v9, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v3, v6, v7, v8, v9}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    iget-object v6, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v7, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v8, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v5, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v4, v6, v7, v8, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    new-instance v4, Ljava/awt/font/LineBreakMeasurer;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    :cond_1
    invoke-virtual {v4}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-virtual {p0, v6, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getWrappingWidth(ZLjava/awt/Graphics2D;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    move-wide v8, v6

    :goto_1
    const/4 v6, 0x0

    const-string v7, "\n"

    const/4 v10, 0x1

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    double-to-float v7, v8

    invoke-virtual {v4, v7, v10, v6}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v6

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v1, v7, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v11, -0x1

    if-ne v7, v11, :cond_4

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v7

    :cond_4
    double-to-float v8, v8

    invoke-virtual {v4, v8, v7, v10}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v4, v8, v7, v6}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v9

    :goto_2
    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v10

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v7

    if-ge v10, v7, :cond_7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_7

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v4, v7}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    :cond_7
    iget-object v7, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v7

    sget-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-eq v7, v9, :cond_8

    sget-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-ne v7, v9, :cond_9

    :cond_8
    invoke-virtual {v6, v8}, Ljava/awt/font/TextLayout;->getJustifiedLayout(F)Ljava/awt/font/TextLayout;

    move-result-object v6

    :cond_9
    :goto_3
    new-instance v7, Ljava/text/AttributedString;

    invoke-direct {v7, v3, v5, v10}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    invoke-virtual {v0, v6, v7}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v5

    if-ne v10, v5, :cond_1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v2

    iget-wide v3, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v5

    iget-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v6

    const-wide/32 v7, 0x54e0f

    if-nez v6, :cond_1

    int-to-long v9, v5

    mul-long/2addr v9, v7

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_1
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_2

    int-to-long v9, v5

    mul-long/2addr v9, v7

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_2
    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_3

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_3
    iget-object v7, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isFirstParagraph()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v8, :cond_7

    :cond_4
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v11

    if-nez v8, :cond_5

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v12

    invoke-virtual {v12}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v12

    :goto_1
    add-float/2addr v11, v12

    float-to-double v11, v11

    sub-double/2addr v3, v11

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v11, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    neg-double v11, v11

    add-double/2addr v11, v3

    :goto_2
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v3

    float-to-double v3, v3

    sub-double v3, v11, v3

    :cond_7
    iget-wide v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-double/2addr v13, v11

    if-nez v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isEmptyParagraph()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v8

    iput-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    :cond_8
    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v8, :cond_b

    iget-wide v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    if-eqz v2, :cond_9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-double/2addr v13, v11

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-double/2addr v13, v11

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v13, v11

    :goto_3
    invoke-virtual {v8, v13, v14, v3, v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v8, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v8}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v8

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    float-to-double v11, v8

    iget-wide v13, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object v15, v7

    goto :goto_4

    :cond_a
    move-object v15, v7

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    add-double v18, v18, v16

    add-double v11, v18, v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    :goto_4
    add-double/2addr v13, v11

    goto :goto_5

    :cond_b
    move-object v15, v7

    :goto_5
    iget-object v7, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v8

    iget-wide v11, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    move-object/from16 v16, v9

    iget-wide v8, v8, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    move/from16 v17, v2

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v2

    if-nez v2, :cond_c

    sget-object v2, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    :cond_c
    sget-object v18, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v18, v2

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_e

    const/4 v5, 0x2

    if-eq v2, v5, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v19

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v2

    float-to-double v0, v2

    sub-double v19, v19, v0

    sub-double v19, v19, v11

    sub-double v19, v19, v8

    add-double v13, v19, v13

    goto :goto_6

    :cond_e
    invoke-virtual {v7}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v2

    move-wide/from16 v19, v3

    float-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v0, v11

    sub-double/2addr v0, v8

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    add-double/2addr v13, v0

    move-wide/from16 v3, v19

    :goto_6
    invoke-virtual {v10, v13, v14, v3, v4}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v1

    float-to-double v1, v1

    add-double/2addr v3, v1

    move-object v1, v0

    move-object v8, v10

    move-object v7, v15

    move-object/from16 v9, v16

    move/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    iget-wide v5, v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    sub-double/2addr v3, v5

    iput-wide v3, v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-virtual {p0, p1, v7}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v3

    invoke-interface {v1, p1, v3, v2}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v4

    sget-object v5, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v4, v7, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;

    if-eqz v4, :cond_2

    move-object v4, v7

    check-cast v4, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/HighlightColorSupport;->getHighlightColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p1, v4}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v4

    sget-object v5, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v4

    :cond_3
    sget-object v5, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isUnderlined()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isStrikethrough()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isSubscript()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->isSuperscript()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextRun;->getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v5, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v4}, Lorg/apache/poi/common/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v4}, Lorg/apache/poi/common/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v3, :cond_b

    sget-object v4, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v3}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    sget-object v3, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    iget-object v4, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v3, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance v4, Ljava/awt/Font;

    invoke-direct {v4, v9}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/poi/sl/draw/n;

    invoke-direct {v3, v10, v6, v2}, Lorg/apache/poi/sl/draw/n;-><init>(Ljava/util/ArrayList;II)V

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_d

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object p1

    sget-object p2, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v9, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance p1, Ljava/awt/Font;

    invoke-direct {p1, v9}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/apache/poi/sl/draw/o;

    invoke-direct {p0, v10}, Lorg/apache/poi/sl/draw/o;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_d
    return-object v10
.end method

.method public getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->format(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletCharacter()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Paint;

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v4, v1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v4, p1, v3}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v1

    :goto_1
    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    double-to-float v4, v4

    mul-float/2addr p2, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float p2, v4

    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance p0, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {p0, v0}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance v1, Ljava/awt/Font;

    invoke-direct {v1, v4}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/text/AttributedString;

    invoke-interface {v0, p1, p0, v2}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p0, Ljava/awt/font/TextLayout;

    invoke-virtual {p2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object p0

    return-object p0
.end method

.method public getFirstLineHeight()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getFirstLineLeading()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getLastLineHeight()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getRenderableText(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_5

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 4
    sget-object p2, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getPlaceholderDetails()Lorg/apache/poi/sl/usermodel/PlaceholderDetails;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    .line 7
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getUserDate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails;->getDateFormat()Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    .line 11
    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/Slide;

    if-nez p0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_0
    return-object v2
.end method

.method public getRenderableText(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "\t"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 p0, 0xb

    const/16 v1, 0xa

    .line 16
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    .line 18
    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    return-object p0

    .line 19
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWrappingWidth(ZLjava/awt/Graphics2D;)D
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v1

    iget-wide v2, v1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v4, v1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v6, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_1

    const-wide/32 v6, 0x54e0f

    int-to-long v8, v1

    mul-long/2addr v8, v6

    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v7, 0x0

    if-nez v1, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_2
    iget-object v9, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getRightMargin()Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_3
    invoke-static {p2, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextShape;->getWordWrap()Z

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v8, :cond_6

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v11, :cond_5

    if-eq p1, v10, :cond_4

    invoke-virtual {p0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    :goto_0
    sub-double/2addr p0, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide p0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v11, :cond_7

    if-eq v0, v10, :cond_7

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    sub-double/2addr v7, v2

    sub-double/2addr v7, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v7, v2

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    sub-double/2addr v7, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    sub-double/2addr v7, v2

    sub-double/2addr v7, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v7, v2

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double/2addr p0, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    neg-double p0, p0

    :goto_3
    add-double/2addr p0, v7

    goto :goto_4

    :cond_9
    move-wide p0, v7

    :goto_4
    return-wide p0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-wide v0
.end method

.method public isEmptyParagraph()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFirstParagraph()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->firstParagraph:Z

    return p0
.end method

.method public isHSLF()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAutoNumberingIdx(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    return-void
.end method

.method public setFirstParagraph(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->firstParagraph:Z

    return-void
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-void
.end method
