.class public interface abstract Lorg/apache/poi/sl/draw/ImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canRender(Ljava/lang/String;)Z
.end method

.method public abstract drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
.end method

.method public abstract drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
.end method

.method public abstract getBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public getCachedContentType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCachedImage()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDimension()Ljava/awt/geom/Dimension2D;
    .locals 5

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object v0
.end method

.method public getGenericRecord()Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getImage()Ljava/awt/image/BufferedImage;
.end method

.method public abstract getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
.end method

.method public abstract getNativeBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
.end method

.method public abstract loadImage([BLjava/lang/String;)V
.end method

.method public abstract setAlpha(D)V
.end method

.method public setCacheInput(Z)V
    .locals 0

    return-void
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method
