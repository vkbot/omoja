.class public Lorg/apache/poi/xslf/draw/SVGImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;


# instance fields
.field private alpha:D

.field private final builder:Lorg/apache/batik/bridge/GVTBuilder;

.field private final context:Lorg/apache/batik/bridge/BridgeContext;

.field private final svgFact:Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/batik/bridge/GVTBuilder;

    invoke-direct {v0}, Lorg/apache/batik/bridge/GVTBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->builder:Lorg/apache/batik/bridge/GVTBuilder;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->alpha:D

    invoke-static {}, Lorg/apache/batik/util/XMLResourceDescriptor;->getXMLParserClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;

    invoke-direct {v1, v0}, Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->svgFact:Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;

    new-instance v0, Lorg/apache/poi/xslf/draw/SVGUserAgent;

    invoke-direct {v0}, Lorg/apache/poi/xslf/draw/SVGUserAgent;-><init>()V

    new-instance v1, Lorg/apache/batik/bridge/DocumentLoader;

    invoke-direct {v1, v0}, Lorg/apache/batik/bridge/DocumentLoader;-><init>(Lorg/apache/batik/bridge/UserAgent;)V

    new-instance v2, Lorg/apache/batik/bridge/BridgeContext;

    invoke-direct {v2, v0, v1}, Lorg/apache/batik/bridge/BridgeContext;-><init>(Lorg/apache/batik/bridge/UserAgent;Lorg/apache/batik/bridge/DocumentLoader;)V

    iput-object v2, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->context:Lorg/apache/batik/bridge/BridgeContext;

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lorg/apache/batik/bridge/BridgeContext;->setDynamic(Z)V

    return-void
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 11

    .line 2
    sget-object v0, Lorg/apache/batik/ext/awt/RenderingHintsKeyExt;->KEY_BUFFERED_IMAGE:Ljava/awt/RenderingHints$Key;

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->BUFFERED_IMAGE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->getSVGRoot()Lorg/apache/batik/gvt/GraphicsNode;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 7
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 8
    invoke-interface {v0, v1}, Lorg/apache/batik/gvt/GraphicsNode;->setTransform(Ljava/awt/geom/AffineTransform;)V

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 9
    invoke-interface {v0, p0}, Lorg/apache/batik/gvt/GraphicsNode;->setClip(Lorg/apache/batik/ext/awt/image/renderable/ClipRable;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    .line 11
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    iget v3, p3, Ljava/awt/Insets;->left:I

    int-to-double v3, v3

    add-double v2, v1, v3

    .line 12
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    iget v1, p3, Ljava/awt/Insets;->top:I

    int-to-double v6, v1

    add-double/2addr v4, v6

    .line 13
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    iget v1, p3, Ljava/awt/Insets;->left:I

    iget v8, p3, Ljava/awt/Insets;->right:I

    add-int/2addr v1, v8

    int-to-double v8, v1

    sub-double/2addr v6, v8

    .line 14
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    iget p2, p3, Ljava/awt/Insets;->top:I

    iget p3, p3, Ljava/awt/Insets;->bottom:I

    add-int/2addr p2, p3

    int-to-double p2, p2

    sub-double/2addr v8, p2

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 15
    new-instance p2, Lorg/apache/batik/ext/awt/image/renderable/ClipRable8Bit;

    invoke-direct {p2, p0, v10}, Lorg/apache/batik/ext/awt/image/renderable/ClipRable8Bit;-><init>(Lorg/apache/batik/ext/awt/image/renderable/Filter;Ljava/awt/Shape;)V

    invoke-interface {v0, p2}, Lorg/apache/batik/gvt/GraphicsNode;->setClip(Lorg/apache/batik/ext/awt/image/renderable/ClipRable;)V

    .line 16
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/batik/gvt/GraphicsNode;->paint(Ljava/awt/Graphics2D;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->context:Lorg/apache/batik/bridge/BridgeContext;

    invoke-virtual {p0}, Lorg/apache/batik/bridge/BridgeContext;->getUserAgent()Lorg/apache/batik/bridge/UserAgent;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/draw/SVGUserAgent;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGUserAgent;->getViewbox()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 9

    .line 2
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 3
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v1

    check-cast v1, Ljava/awt/Graphics2D;

    .line 4
    sget-object v2, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 6
    sget-object v2, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v2, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v2, Ljava/awt/RenderingHints;->KEY_STROKE_CONTROL:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_STROKE_PURE:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 9
    sget-object v2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 10
    sget-object v2, Lorg/apache/batik/ext/awt/RenderingHintsKeyExt;->KEY_BUFFERED_IMAGE:Ljava/awt/RenderingHints$Key;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 11
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 13
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    div-double/2addr v5, v7

    .line 14
    invoke-virtual {v1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 15
    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->getSVGRoot()Lorg/apache/batik/gvt/GraphicsNode;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/apache/batik/gvt/GraphicsNode;->paint(Ljava/awt/Graphics2D;)V

    .line 16
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->getSVGRoot()Lorg/apache/batik/gvt/GraphicsNode;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/batik/gvt/GraphicsNode;->getPrimitiveBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getSVGRoot()Lorg/apache/batik/gvt/GraphicsNode;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->context:Lorg/apache/batik/bridge/BridgeContext;

    invoke-virtual {p0}, Lorg/apache/batik/bridge/BridgeContext;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/batik/bridge/BridgeContext;->getGraphicsNode(Lorg/w3c/dom/Node;)Lorg/apache/batik/gvt/GraphicsNode;

    move-result-object p0

    return-object p0
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->svgFact:Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;

    const-string v0, ""

    .line 1
    invoke-virtual {p2, v0, p1}, Lorg/apache/batik/anim/dom/SAXSVGDocumentFactory;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/svg/SVGDocument;

    iget-object p2, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->context:Lorg/apache/batik/bridge/BridgeContext;

    .line 2
    invoke-virtual {p2}, Lorg/apache/batik/bridge/BridgeContext;->getUserAgent()Lorg/apache/batik/bridge/UserAgent;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xslf/draw/SVGUserAgent;

    invoke-virtual {p2, p1}, Lorg/apache/poi/xslf/draw/SVGUserAgent;->initViewbox(Lorg/w3c/dom/svg/SVGDocument;)V

    iget-object p2, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->builder:Lorg/apache/batik/bridge/GVTBuilder;

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->context:Lorg/apache/batik/bridge/BridgeContext;

    .line 3
    invoke-virtual {p2, p0, p1}, Lorg/apache/batik/bridge/GVTBuilder;->build(Lorg/apache/batik/bridge/BridgeContext;Lorg/w3c/dom/Document;)Lorg/apache/batik/gvt/GraphicsNode;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1

    .line 4
    sget v0, Ln4/f;->Z:I

    .line 5
    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAlpha(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->alpha:D

    return-void
.end method
