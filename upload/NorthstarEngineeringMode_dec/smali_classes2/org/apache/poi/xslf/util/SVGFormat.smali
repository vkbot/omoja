.class public Lorg/apache/poi/xslf/util/SVGFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/OutputFormat;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final svgNS:Ljava/lang/String; = "http://www.w3.org/2000/svg"


# instance fields
.field private svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

.field private final textAsShapes:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/xslf/util/SVGFormat;->textAsShapes:Z

    return-void
.end method


# virtual methods
.method public addSlide(DD)Ljava/awt/Graphics2D;
    .locals 4

    invoke-static {}, Lorg/apache/batik/dom/GenericDOMImplementation;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string v1, "svg"

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/2000/svg"

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;

    iget-boolean v2, p0, Lorg/apache/poi/xslf/util/SVGFormat;->textAsShapes:Z

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/draw/SVGPOIGraphics2D;-><init>(Lorg/w3c/dom/Document;Z)V

    iput-object v1, p0, Lorg/apache/poi/xslf/util/SVGFormat;->svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

    new-instance v0, Ljava/awt/Dimension;

    double-to-int p1, p1

    double-to-int p2, p3

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v0}, Lorg/apache/batik/svggen/SVGGraphics2D;->setSVGCanvasSize(Ljava/awt/Dimension;)V

    iget-object p1, p0, Lorg/apache/poi/xslf/util/SVGFormat;->svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

    sget-object p2, Lorg/apache/poi/sl/draw/Drawable;->CACHE_IMAGE_SOURCE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Lorg/apache/batik/svggen/SVGGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/SVGFormat;->svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/SVGFormat;->svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

    invoke-virtual {p0}, Lorg/apache/batik/svggen/SVGGraphics2D;->dispose()V

    return-void
.end method

.method public writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 1

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xslf/util/SVGFormat;->svgGenerator:Lorg/apache/batik/svggen/SVGGraphics2D;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/batik/svggen/SVGGraphics2D;->stream(Ljava/io/Writer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method
