.class public Lorg/apache/poi/xdgf/util/VsdxToPng;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage: [--debug] in.vsdx outdir"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    const/4 v3, 0x0

    aget-object v4, p0, v3

    aget-object v5, p0, v1

    const-string v6, "--debug"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v4, p0, v1

    aget-object v5, p0, v2

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;-><init>()V

    :cond_1
    new-array p0, v3, [Ljava/lang/String;

    invoke-static {v4, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-direct {v1, p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;)V

    const-wide v2, 0x4066ba2e8ba2e8baL    # 181.8181818181818

    invoke-static {v1, v5, v2, v3, v0}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/util/Dimension2DDouble;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/util/Dimension2DDouble;->getWidth()D

    move-result-wide v1

    mul-double/2addr v1, p2

    double-to-int v1, v1

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/util/Dimension2DDouble;->getHeight()D

    move-result-wide v2

    mul-double/2addr v2, p2

    double-to-int v0, v2

    .line 5
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 6
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    .line 7
    sget-object v4, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 9
    sget-object v4, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 10
    sget-object v4, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 11
    sget-object v4, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 12
    sget-object v4, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v4, v4, v1, v0}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    .line 14
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/awt/Graphics2D;->translate(II)V

    neg-double v0, p2

    .line 15
    invoke-virtual {v3, p2, p3, v0, v1}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 16
    invoke-virtual {p4, v3}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->setGraphics(Ljava/awt/Graphics2D;)V

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    .line 18
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array p1, v4, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    :try_start_0
    const-string p1, "png"

    .line 20
    invoke-static {v2, p1, p0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 23
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    return-void
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 1

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    .line 26
    invoke-static {p1, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xdgf/util/Util;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "** Writing image to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    return-void
.end method
