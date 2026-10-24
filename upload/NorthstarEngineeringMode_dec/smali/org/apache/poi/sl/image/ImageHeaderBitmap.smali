.class public Lorg/apache/poi/sl/image/ImageHeaderBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final size:Ljava/awt/Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    invoke-virtual {v0, p1}, Ln4/f$a;->m([B)V

    invoke-virtual {v0, p2}, Ln4/f$a;->p(I)V

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ln4/f$a;->n(I)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p1

    invoke-static {p1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-interface {p2, p1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p1

    const-string p2, "Can\'t determine image dimensions"

    invoke-interface {p1, p2}, La5/b;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-instance p1, Ljava/awt/Dimension;

    const/16 p2, 0xc8

    invoke-direct {p1, p2, p2}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/awt/Dimension;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pixelToPoints(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pixelToPoints(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Ljava/awt/Dimension;

    return-void
.end method


# virtual methods
.method public getSize()Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->size:Ljava/awt/Dimension;

    return-object p0
.end method
