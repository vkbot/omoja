.class public Lorg/apache/poi/sl/draw/BitmapImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/ImageRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;
    }
.end annotation


# static fields
.field private static final ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field private static final IMAGE_LOADERS:[Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;

.field private static final LOG:La5/d;

.field private static final UNSUPPORTED_IMAGE_TYPE:Ljava/lang/String; = "Unsupported Image Type"


# instance fields
.field private cachedContentType:Ljava/lang/String;

.field private cachedImage:[B

.field private doCache:Z

.field protected img:Ljava/awt/image/BufferedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:La5/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;

    new-instance v1, Lorg/apache/poi/sl/draw/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/sl/draw/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/sl/draw/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->IMAGE_LOADERS:[Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->loadGrayScaled(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljavax/imageio/ImageReadParam;Ljavax/imageio/ImageTypeSpecifier;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReadParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    return-void
.end method

.method public static synthetic d(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->loadTruncated(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->lambda$loadGrayScaled$1(Ljavax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->loadColored(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method private static findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I
    .locals 3

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    const/high16 v2, -0x1000000

    if-eq v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    div-int/lit8 v1, p1, 0xa

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$canRender$0(Ljava/lang/String;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Z
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$loadGrayScaled$1(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadColored(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method private static loadGrayScaled(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 3

    new-instance v0, Lb4/e;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v2}, Lb4/e;-><init>(Ljava/util/Iterator;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/sl/draw/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/poi/sl/draw/b;

    invoke-direct {v2, p2}, Lorg/apache/poi/sl/draw/b;-><init>(Ljavax/imageio/ImageReadParam;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method private static loadTruncated(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result p1

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v2, v0, p1}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    :try_start_0
    invoke-virtual {p0, v1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {v2, v0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->findTruncatedBlackBox(Ljava/awt/image/BufferedImage;II)I

    move-result p0

    if-lt p0, p1, :cond_2

    return-object v2

    :cond_2
    new-instance p2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x2

    invoke-direct {p2, v0, p1, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v0, p0}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    invoke-virtual {p1, v2, v1, v1, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->flush()V

    return-object p2
.end method

.method private static readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 11

    new-instance v0, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v0, p0}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/imageio/ImageReader;

    invoke-virtual {v3}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->IMAGE_LOADERS:[Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;

    array-length v7, v6

    move-object v8, v1

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v6, v4

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v9, v3, v0, v5}, Lorg/apache/poi/sl/draw/BitmapImageRenderer$ImageLoader;->load(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v8

    :try_start_2
    new-instance v9, Ljava/io/IOException;

    const-string v10, "ImageIO runtime exception"

    invoke-direct {v9, v10, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v9

    goto :goto_2

    :catch_1
    move-exception v8

    const-string v9, "Unsupported Image Type"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v8

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    if-nez v2, :cond_4

    if-nez v3, :cond_3

    sget-object p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string v0, "Content-type: {} is not supported. Image ignored."

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_3
    throw v3

    :cond_4
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    const/4 v3, 0x2

    invoke-direct {p0, p1, v0, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object p1

    invoke-virtual {p1, v2, v4, v4, v1}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {p1}, Ljava/awt/Graphics;->dispose()V

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
.end method

.method public static setAlpha(Ljava/awt/image/BufferedImage;D)Ljava/awt/image/BufferedImage;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-direct {p0, v1, v1, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x4

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    aput v5, v3, v1

    aput v5, v3, v0

    const/4 v0, 0x3

    double-to-float p1, p1

    aput p1, v3, v0

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    .line 3
    new-instance p2, Ljava/awt/image/RescaleOp;

    const/4 v0, 0x0

    invoke-direct {p2, v3, p1, v0}, Ljava/awt/image/RescaleOp;-><init>([F[FLjava/awt/RenderingHints;)V

    .line 4
    invoke-virtual {p2, p0, v0}, Ljava/awt/image/RescaleOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public canRender(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->ALLOWED_TYPES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/m0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/m0;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-nez p3, :cond_1

    .line 2
    new-instance v4, Ljava/awt/Insets;

    invoke-direct {v4, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    goto :goto_0

    :cond_1
    move-object/from16 v4, p3

    const/4 v3, 0x1

    :goto_0
    iget-object v5, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 3
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 4
    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    .line 5
    iget v7, v4, Ljava/awt/Insets;->left:I

    const v8, 0x186a0

    sub-int v7, v8, v7

    iget v9, v4, Ljava/awt/Insets;->right:I

    sub-int/2addr v7, v9

    int-to-double v9, v7

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v9, v11

    .line 6
    iget v7, v4, Ljava/awt/Insets;->top:I

    sub-int/2addr v8, v7

    iget v7, v4, Ljava/awt/Insets;->bottom:I

    sub-int/2addr v8, v7

    int-to-double v7, v8

    div-double/2addr v7, v11

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    move/from16 p3, v3

    int-to-double v2, v5

    mul-double/2addr v9, v2

    div-double v16, v13, v9

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    int-to-double v5, v6

    mul-double/2addr v7, v5

    div-double v22, v9, v7

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v7

    mul-double v2, v2, v16

    iget v9, v4, Ljava/awt/Insets;->left:I

    int-to-double v9, v9

    mul-double/2addr v2, v9

    div-double/2addr v2, v11

    sub-double v24, v7, v2

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    mul-double v5, v5, v22

    iget v4, v4, Ljava/awt/Insets;->top:I

    int-to-double v7, v4

    mul-double/2addr v5, v7

    div-double/2addr v5, v11

    sub-double v26, v2, v5

    .line 11
    new-instance v2, Ljava/awt/geom/AffineTransform;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v27}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v3

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/Rectangle2D;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    :cond_2
    iget-object v0, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 15
    invoke-virtual {v1, v3}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v5, v0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    int-to-double v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    move-object p0, v9

    :goto_0
    return-object p0
.end method

.method public getCachedContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedImage()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedImage:[B

    return-object p0
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 3
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v2, v2

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v4

    .line 5
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v6

    cmpl-double p1, v0, v4

    if-nez p1, :cond_1

    cmpl-double p1, v2, v6

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/awt/image/BufferedImage;

    double-to-int v8, v4

    double-to-int v9, v6

    const/4 v10, 0x2

    invoke-direct {p1, v8, v9, v10}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 7
    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    div-double/2addr v4, v0

    div-double/2addr v6, v2

    .line 8
    invoke-virtual {v8, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 9
    new-instance v0, Ljava/awt/image/AffineTransformOp;

    invoke-direct {v0, v8, v10}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 10
    invoke-virtual {v0, p0, p1}, Ljava/awt/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    return-object p1
.end method

.method public getNativeBounds()Ljava/awt/geom/Rectangle2D;
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v5, v0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    int-to-double v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->doCache:Z

    if-eqz v0, :cond_0

    .line 1
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 2
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedImage:[B

    iput-object p2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 9
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public loadImage([BLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->doCache:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedImage:[B

    iput-object p2, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    .line 17
    :cond_1
    sget v0, Ln4/f;->Z:I

    .line 18
    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->readImage(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setAlpha(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    .line 1
    invoke-static {v0, p1, p2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->setAlpha(Ljava/awt/image/BufferedImage;D)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setCacheInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->doCache:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedContentType:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->cachedImage:[B

    :cond_0
    return-void
.end method
