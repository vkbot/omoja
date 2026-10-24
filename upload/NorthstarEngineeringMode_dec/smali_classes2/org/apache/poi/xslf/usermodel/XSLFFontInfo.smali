.class public Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;
    }
.end annotation


# instance fields
.field final fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

.field final ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

.field final typeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->typeface:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetEmbeddedFontLst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;->getEmbeddedFontArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 6
    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;->addNewEmbeddedFont()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    .line 8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->addNewFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    .line 10
    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->typeface:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->lambda$getFonts$0(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    move-result-object p0

    return-object p0
.end method

.method public static addFontToSlideShow(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/io/InputStream;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
    .locals 2

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-direct {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->bufferInit(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->addFacet(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/fonts/FontFacet;

    return-object v1
.end method

.method private getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    return-object p0
.end method

.method public static getFonts(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XMLSlideShow;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetEmbeddedFontLst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;->getEmbeddedFontArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/openxml4j/opc/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/openxml4j/opc/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$getFonts$0(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)V

    return-object v0
.end method


# virtual methods
.method public addFacet(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/fonts/FontFacet;
    .locals 5

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-direct {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->bufferInit(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->ppt:Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setEmbedTrueTypeFonts(Z)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSaveSubsetFonts(Z)V

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getWeight()I

    move-result v1

    const/16 v3, 0x190

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isItalic()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    or-int v0, v1, v4

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetBoldItalic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getBoldItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->addNewBoldItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetItalic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->addNewItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetBold()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getBold()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->addNewBold()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetRegular()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getRegular()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->addNewRegular()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;->setFontData(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getCharset()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p0

    return-object p0
.end method

.method public getFacets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/common/usermodel/fonts/FontFacet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetRegular()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getRegular()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetItalic()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetBold()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getBold()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->isSetBoldItalic()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->fontListEntry:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->getBoldItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$XSLFFontFacet;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;Lorg/apache/poi/xslf/usermodel/XSLFFontInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public getPanose()[B
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPanose()[B

    move-result-object p0

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result p1

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    return-void
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-static {v0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    return-void
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-static {p1, v0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method
