.class public Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->o0()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-direct {v1, p2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    invoke-interface {p1}, Li5/p0;->k0()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    :cond_4
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
.end method

.method public static synthetic A(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setLineSpacing$12(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchTabStops(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getIndent$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getFontAlign$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getDefaultTabSize$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceAfter$18(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method private static doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceBefore$14(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getTextAlign$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static fetchAutoNumberingScheme(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->forOoxmlID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private fetchBulletFontColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/awt/Color;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Ljava/awt/Color;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static fetchBulletFontSize(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletSizePercent;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextBulletSizePercent;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->getVal()I

    move-result p0

    neg-int p0, p0

    int-to-double v0, p0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static fetchIsBullet(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchProperty(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static fetchSpacing(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Supplier<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;",
            ">;>;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->getVal()I

    move-result p0

    neg-int p0, p0

    int-to-double p0, p0

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static fetchTabStop(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->sizeOfTabArray()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static fetchTabStops(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTabStop;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;

    invoke-direct {v4, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic g(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getSpaceBefore$17(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method private getSpacing(Ljava/util/function/Function;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Supplier<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;",
            ">;>;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xslf/usermodel/l;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/l;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic h(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setLineSpacing$11(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceBefore$15(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchIsBullet(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic k(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchBulletFontSize(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic l(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchAutoNumberingScheme(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getAutoNumberingStartAt$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->isSetStartAt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->getStartAt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getBulletCharacter$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->getChar()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getBulletFont$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getDefaultTabSize$8(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefTabSz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->xgetDefTabSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getFontAlign$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->values()[Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getFontAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getIndent$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getIndent()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getLeftMargin$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getMarL()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getLineSpacing$13(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$getRightMargin$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getMarR()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSpaceAfter$21(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$getSpaceBefore$17(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$getSpacing$22(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchSpacing(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getTabStop$9(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchTabStop(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getTextAlign$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->values()[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setLineSpacing$10(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/h;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setLineSpacing$11(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setLineSpacing$12(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/f;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceAfter$18(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/o;-><init>(ILorg/apache/xmlbeans/XmlObject;)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceAfter$19(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceAfter$20(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/g;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/g;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceBefore$14(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/h;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceBefore$15(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/e;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/e;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method private static synthetic lambda$setSpaceBefore$16(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/f;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V

    return-object v0
.end method

.method public static synthetic m(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getTabStop$9(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getSpacing$22(Ljava/util/function/Function;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic o(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getAutoNumberingStartAt$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic p(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceAfter$19(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceAfter$20(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getSpaceAfter$21(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchBulletFontColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setSpacing(Ljava/lang/Double;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Supplier<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Supplier<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;",
            ">;>;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {p4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;->accept()V

    :cond_3
    return-void

    :cond_4
    if-nez p2, :cond_5

    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-ltz p0, :cond_8

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPts()V

    :cond_6
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide p3, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPct()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->unsetSpcPct()V

    :cond_9
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->isSetSpcPts()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->getSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object p0

    goto :goto_3

    :cond_a
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object p0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    neg-double p1, p1

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_4
    return-void
.end method

.method public static synthetic t(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setLineSpacing$10(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getLineSpacing$13(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getRightMargin$7(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic w(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getBulletFont$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic x(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getLeftMargin$6(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic y(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$setSpaceBefore$16(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->lambda$getBulletCharacter$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 5

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHlinkClick()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetHlinkClick()V

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHlinkMouseOver()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetHlinkMouseOver()V

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTabStop(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(Ljava/lang/Object;)V

    return-void
.end method

.method public addTabStops(DLorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    :goto_1
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->setPositionInPoints(D)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTabStop;->setType(Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V

    return-void
.end method

.method public clearButKeepProperties()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v1

    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public clearTabStops()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetTabLst()V

    :cond_1
    return-void
.end method

.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 5

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetPPr()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetEndParaRPr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->unsetEndParaRPr()V

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v1

    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v1

    :goto_1
    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v1

    :goto_2
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->copy(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    :cond_a
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    :cond_b
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLeftMargin(Ljava/lang/Double;)V

    :cond_c
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setIndent(Ljava/lang/Double;)V

    :cond_d
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceAfter()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceAfter(Ljava/lang/Double;)V

    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpaceBefore()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpaceBefore(Ljava/lang/Double;)V

    :cond_f
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->doubleNotEquals(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setLineSpacing(Ljava/lang/Double;)V

    :cond_10
    return-void
.end method

.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object p0
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Color;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBulletFontSize()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/xslf/usermodel/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontFamily()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "Arial"

    :cond_1
    return-object p0
.end method

.method public getDefaultFontSize()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSz()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSz()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 7
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Li5/h0;->intValue()I

    move-result v1

    :goto_0
    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const-string v1, "bodyStyle"

    goto :goto_1

    :cond_1
    const-string v1, "titleStyle"

    goto :goto_1

    :cond_2
    const-string v1, "otherStyle"

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    invoke-interface {v3}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Li5/p0;->A1()V

    const-string v4, "txStyles"

    invoke-interface {v3, v0, v4}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v0, v1}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    invoke-interface {v3}, Li5/p0;->e0()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "notesStyle"

    invoke-interface {v3, v0, v4}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    :goto_4
    if-ltz v2, :cond_6

    invoke-interface {v3}, Li5/p0;->A1()V

    const-string v4, "http://schemas.openxmlformats.org/drawingml/2006/main"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lvl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "pPr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Li5/p0;->close()V

    return-object p0

    :cond_5
    :try_start_1
    invoke-interface {v3}, Li5/p0;->e0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Li5/p0;->close()V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    goto :goto_2

    :goto_5
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface {v3}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultTabSize()Ljava/lang/Double;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0
.end method

.method public getIndent()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getIndentLevel()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getLeftMargin()Ljava/lang/Double;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getLineSpacing()Ljava/lang/Double;
    .locals 5

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpacing(Ljava/util/function/Function;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->xgetLnSpcReduction()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)I

    move-result p0

    int-to-double v1, p0

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    return-object p0
.end method

.method public getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object p0
.end method

.method public getRightMargin()Ljava/lang/Double;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public getSpaceAfter()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpacing(Ljava/util/function/Function;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceBefore()Ljava/lang/Double;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getSpacing(Ljava/util/function/Function;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getTabStop(I)D
    .locals 1

    new-instance v0, Lmega/widget/recyclerview/b;

    invoke-direct {v0, p1}, Lmega/widget/recyclerview/b;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTabStop;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/core/state/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/d;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object p0
.end method

.method public isBullet()Z
    .locals 2

    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isHeaderOrFooter()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_shape:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    :goto_0
    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public newTextRun(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public newTextRun(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-object v0
.end method

.method public removeTextRun(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfRArray()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getRArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeR(I)V

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfFldArray()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getFldArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeFld(I)V

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->sizeOfBrArray()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getBrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->removeBr(I)V

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method public setBullet(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v0, "Arial"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    const-string p1, "\u2022"

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    :cond_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_b
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    :cond_c
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    :cond_d
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    :goto_1
    return-void
.end method

.method public setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object p0

    :goto_1
    iget p1, p1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start Number must be greater or equal that 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    return-void
.end method

.method public setBulletFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V
    .locals 3

    .line 2
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    .line 7
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Currently XSLF only supports SolidPaint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBulletFontSize(D)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v0

    :goto_1
    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v0

    :goto_2
    neg-double p1, p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_4
    :goto_3
    return-void
.end method

.method public varargs setBulletStyle([Ljava/lang/Object;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontSize(D)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/awt/Color;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/awt/Color;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFontColor(Ljava/awt/Color;)V

    goto :goto_1

    :cond_2
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public setFontAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIndent(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setIndentLevel(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    return-void
.end method

.method public setLeftMargin(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineSpacing(Ljava/lang/Double;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpacing(Ljava/lang/Double;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method

.method public setRightMargin(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSpaceAfter(Ljava/lang/Double;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpacing(Ljava/lang/Double;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method

.method public setSpaceBefore(Ljava/lang/Double;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setSpacing(Ljava/lang/Double;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
