.class public Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;
.super Lorg/apache/batik/svggen/SVGGraphics2D;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final hints:Ljava/awt/RenderingHints;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;Z)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->getCtx(Lorg/w3c/dom/Document;)Lorg/apache/batik/svggen/SVGGeneratorContext;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/batik/svggen/SVGGraphics2D;-><init>(Lorg/apache/batik/svggen/SVGGeneratorContext;Z)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->getGeneratorContext()Lorg/apache/batik/svggen/SVGGeneratorContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getGraphicContextDefaults()Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->getGeneratorContext()Lorg/apache/batik/svggen/SVGGeneratorContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getExtensionHandler()Lorg/apache/batik/svggen/ExtensionHandler;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/draw/SVGRenderExtension;

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setSvgGraphics2D(Lorg/apache/batik/svggen/SVGGraphics2D;)V

    return-void
.end method

.method private static getCtx(Lorg/w3c/dom/Document;)Lorg/apache/batik/svggen/SVGGeneratorContext;
    .locals 3

    invoke-static {p0}, Lorg/apache/batik/svggen/SVGGeneratorContext;->createDefault(Lorg/w3c/dom/Document;)Lorg/apache/batik/svggen/SVGGeneratorContext;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;

    invoke-direct {v0}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/batik/svggen/SVGGeneratorContext;->setExtensionHandler(Lorg/apache/batik/svggen/ExtensionHandler;)V

    new-instance v0, Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;

    invoke-direct {v0}, Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;-><init>()V

    new-instance v1, Ljava/awt/RenderingHints;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;->setRenderingHints(Ljava/awt/RenderingHints;)V

    invoke-virtual {p0, v0}, Lorg/apache/batik/svggen/SVGGeneratorContext;->setGraphicContextDefaults(Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;)V

    return-object p0
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    invoke-super {p0, p1}, Lorg/apache/batik/svggen/SVGGraphics2D;->addRenderingHints(Ljava/util/Map;)V

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/apache/batik/svggen/SVGGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0}, Ljava/awt/RenderingHints;->clear()V

    iget-object v0, p0, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    invoke-super {p0, p1}, Lorg/apache/batik/svggen/SVGGraphics2D;->setRenderingHints(Ljava/util/Map;)V

    return-void
.end method
