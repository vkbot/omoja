.class public Lorg/apache/poi/xslf/draw/SVGUserAgent;
.super Lorg/apache/batik/bridge/UserAgentAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private viewbox:Ljava/awt/geom/Rectangle2D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/draw/SVGUserAgent;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/batik/bridge/UserAgentAdapter;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGUserAgent;->addStdFeatures()V

    return-void
.end method

.method private static parseLength(Lorg/w3c/dom/svg/SVGSVGElement;Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/svg/SVGSVGElement;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    new-instance p1, Lorg/apache/batik/parser/LengthParser;

    invoke-direct {p1}, Lorg/apache/batik/parser/LengthParser;-><init>()V

    new-instance v2, Lorg/apache/poi/xslf/draw/SVGUserAgent$1;

    invoke-direct {v2, v0}, Lorg/apache/poi/xslf/draw/SVGUserAgent$1;-><init>([F)V

    invoke-virtual {p1, v2}, Lorg/apache/batik/parser/LengthParser;->setLengthHandler(Lorg/apache/batik/parser/LengthHandler;)V

    invoke-virtual {p1, p0}, Lorg/apache/batik/parser/LengthParser;->parse(Ljava/lang/String;)V

    aget p0, v0, v1

    return p0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public displayError(Ljava/lang/Exception;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->LOG:La5/d;

    .line 2
    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    invoke-interface {p0, p1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public displayError(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->LOG:La5/d;

    .line 1
    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public displayMessage(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->f()La5/b;

    move-result-object p0

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public getViewbox()Ljava/awt/geom/Rectangle2D;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getViewportSize()Ljava/awt/geom/Dimension2D;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    iget-object v1, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/batik/bridge/UserAgentAdapter;->getViewportSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initViewbox(Lorg/w3c/dom/svg/SVGDocument;)V
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    invoke-interface {p1}, Lorg/w3c/dom/svg/SVGDocument;->getRootElement()Lorg/w3c/dom/svg/SVGSVGElement;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "viewBox"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/svg/SVGSVGElement;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v1, v0}, Lorg/apache/batik/bridge/ViewBox;->parseViewBoxAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/batik/bridge/BridgeContext;)[F

    move-result-object p1

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    return-void

    :cond_1
    const-string v0, "width"

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/draw/SVGUserAgent;->parseLength(Lorg/w3c/dom/svg/SVGSVGElement;Ljava/lang/String;)F

    move-result v0

    const-string v1, "height"

    invoke-static {p1, v1}, Lorg/apache/poi/xslf/draw/SVGUserAgent;->parseLength(Lorg/w3c/dom/svg/SVGSVGElement;Ljava/lang/String;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    float-to-double v7, v0

    float-to-double v9, p1

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v1, p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->viewbox:Ljava/awt/geom/Rectangle2D;

    :cond_2
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method
