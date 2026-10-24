.class public Lorg/apache/poi/xslf/util/BitmapFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/OutputFormat;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final format:Ljava/lang/String;

.field private graphics:Ljava/awt/Graphics2D;

.field private img:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSlide(DD)Ljava/awt/Graphics2D;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    new-instance v1, Ljava/awt/image/BufferedImage;

    double-to-int p1, p1

    double-to-int p2, p3

    invoke-direct {v1, p1, p2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v1, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->graphics:Ljava/awt/Graphics2D;

    sget-object p2, Lorg/apache/poi/sl/draw/Drawable;->BUFFERED_IMAGE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance p3, Ljava/lang/ref/WeakReference;

    iget-object p4, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->img:Ljava/awt/image/BufferedImage;

    invoke-direct {p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->graphics:Ljava/awt/Graphics2D;

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->graphics:Ljava/awt/Graphics2D;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->flush()V

    :cond_0
    return-void
.end method

.method public writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 1

    const-string p1, "null"

    iget-object v0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->img:Ljava/awt/image/BufferedImage;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/BitmapFormat;->format:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    :cond_0
    return-void
.end method
