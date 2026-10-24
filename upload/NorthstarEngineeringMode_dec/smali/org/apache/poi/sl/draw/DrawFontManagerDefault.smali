.class public Lorg/apache/poi/sl/draw/DrawFontManagerDefault;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/DrawFontManager;


# instance fields
.field protected final knownSymbolFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->knownSymbolFonts:Ljava/util/Set;

    const-string p0, "Wingdings"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "Symbol"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->mapSymbolChar(I)I

    move-result p0

    return p0
.end method

.method private getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p2, "*"

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    new-instance p3, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {p3, p1}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    :cond_4
    return-object p3
.end method

.method private static mapSymbolChar(I)I
    .locals 1

    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xa0

    if-gt v0, p0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    const v0, 0xf000

    or-int/2addr p0, v0

    :cond_2
    return p0
.end method


# virtual methods
.method public createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;
    .locals 0

    if-eqz p6, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, p5

    new-instance p1, Ljava/awt/Font;

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p2

    const/16 p5, 0xc

    invoke-direct {p1, p2, p0, p5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    const-string p2, "Dialog"

    invoke-virtual {p1}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Ljava/awt/Font;

    const-string p2, "SansSerif"

    invoke-direct {p1, p2, p0, p5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    :cond_1
    double-to-float p0, p3

    invoke-virtual {p1, p0}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_FALLBACK:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/poi/sl/draw/DrawFontInfo;

    const-string p1, "SansSerif"

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p0

    return-object p0
.end method

.method public mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-eq p2, v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->knownSymbolFonts:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p2, Lorg/apache/poi/sl/draw/f;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    array-length p3, p0

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p3}, Ljava/lang/String;-><init>([III)V

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/GraphicsEnvironment;->getAvailableFontFamilyNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/apache/poi/util/StringUtil;->mapMsCodepointString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_4
    :goto_2
    return-object p3
.end method
