.class public Lorg/apache/poi/xslf/util/PDFFontMapper;
.super Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TTF_PATTERN:Ljava/lang/String; = ".*\\.tt[fc]"

.field private static final FONTDIRS_MAC:Ljava/lang/String; = "$HOME/Library/Fonts;/Library/Fonts;/Network/Library/Fonts;/System/Library/Fonts;/System Folder/Fonts"

.field private static final FONTDIRS_UNX:Ljava/lang/String; = "/usr/share/fonts;/usr/local/share/fonts;$HOME/.fonts"

.field private static final FONTDIRS_WIN:Ljava/lang/String; = "C:\\Windows\\Fonts"


# instance fields
.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final registered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->fonts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->registered:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/util/PDFFontMapper;->registerFonts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/LinkedList;Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/xslf/util/PDFFontMapper;->lambda$registerFonts$0(Ljava/util/LinkedList;Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$registerFonts$0(Ljava/util/LinkedList;Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private registerFonts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_3

    const-string p1, "os.name"

    const-string v0, "generic"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "darwin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "win"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "C:\\Windows\\Fonts"

    goto :goto_1

    :cond_1
    const-string p1, "/usr/share/fonts;/usr/local/share/fonts;$HOME/.fonts"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "$HOME/Library/Fonts;/Library/Fonts;/Network/Library/Fonts;/System/Library/Fonts;/System Folder/Fonts"

    :cond_3
    :goto_1
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$HOME"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/xslf/util/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/xslf/util/h;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lh4/g;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lh4/g;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/xslf/util/b;

    invoke-direct {v1, v0}, Lorg/apache/poi/xslf/util/b;-><init>(Ljava/util/LinkedList;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-nez p2, :cond_4

    const-string p2, ".*\\.tt[fc]"

    :cond_4
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    new-instance v1, Lorg/apache/poi/xslf/util/c;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/xslf/util/c;-><init>(Ljava/util/LinkedList;Ljava/util/regex/Pattern;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_5

    aget-object v4, p2, v3

    :try_start_0
    invoke-static {v2, v4}, Ljava/awt/Font;->createFont(ILjava/io/File;)Ljava/awt/Font;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->fonts:Ljava/util/Map;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public mapFont(Ljava/awt/Font;Lde/rototor/pdfbox/graphics2d/IPdfBoxGraphics2DFontTextDrawer$IFontTextDrawerEnv;)Lorg/apache/pdfbox/pdmodel/font/PDFont;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->registered:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->registered:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xslf/util/PDFFontMapper;->fonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-super {p0, v0, v1}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;->registerFont(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;->mapFont(Ljava/awt/Font;Lde/rototor/pdfbox/graphics2d/IPdfBoxGraphics2DFontTextDrawer$IFontTextDrawerEnv;)Lorg/apache/pdfbox/pdmodel/font/PDFont;

    move-result-object p0

    return-object p0
.end method
