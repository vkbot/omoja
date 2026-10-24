.class public final Lorg/apache/poi/ss/util/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEIGHT_UNITS:I = 0x100

.field private static final LOG:La5/d;

.field private static final WIDTH_UNITS:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/util/ImageUtils;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ImageUtils;->LOG:La5/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->lambda$getDimensionFromAnchor$1(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->lambda$setPreferredSize$0(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private static getDimFromCell(DIIIIILjava/util/function/Function;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DIIIII",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Number;",
            ">;)I"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    if-ge v2, v0, :cond_0

    mul-double v0, p0, v5

    goto :goto_3

    :cond_0
    move v11, v0

    const-wide/16 v9, 0x0

    :goto_0
    if-gt v11, v2, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p7

    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    mul-double/2addr v14, v5

    if-ne v11, v0, :cond_1

    int-to-double v5, v1

    if-lez v4, :cond_2

    mul-double/2addr v5, v14

    int-to-double v7, v4

    div-double/2addr v5, v7

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :cond_2
    :goto_1
    if-ne v11, v2, :cond_4

    if-lez v4, :cond_3

    sub-int v7, v4, v3

    int-to-double v7, v7

    mul-double/2addr v7, v14

    int-to-double v0, v4

    div-double/2addr v7, v0

    goto :goto_2

    :cond_3
    int-to-double v0, v3

    sub-double v7, v14, v0

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x0

    :goto_2
    sub-double/2addr v14, v5

    sub-double/2addr v14, v7

    add-double/2addr v9, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    goto :goto_0

    :cond_5
    move-wide v0, v9

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;
    .locals 15

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object p0

    :try_start_0
    sget v3, Ln4/f;->Z:I

    new-instance v3, Ln4/f$a;

    invoke-direct {v3}, Ln4/f$a;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ln4/f$a;->m([B)V

    invoke-virtual {v3}, Ln4/f$a;->k()Ln4/f;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result p0

    invoke-static {v3, p0}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v3, 0x0

    if-nez p0, :cond_2

    move-wide v7, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v5

    move-wide v7, v5

    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v9

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v10

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    move-result v11

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v12

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/16 v6, 0x400

    move v13, v6

    goto :goto_3

    :cond_3
    move v13, v5

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lw0/a;

    const/4 v6, 0x2

    invoke-direct {v14, v6, v2}, Lw0/a;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v7 .. v14}, Lorg/apache/poi/ss/util/ImageUtils;->getDimFromCell(DIIIIILjava/util/function/Function;)I

    move-result v6

    if-nez p0, :cond_4

    :goto_4
    move-wide v7, v3

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v3

    goto :goto_4

    :goto_5
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v9

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v10

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    move-result v11

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v12

    if-eqz v1, :cond_5

    const/16 p0, 0x100

    move v13, p0

    goto :goto_6

    :cond_5
    move v13, v5

    :goto_6
    new-instance v14, Lorg/apache/poi/ss/util/e;

    invoke-direct {v14, v2, v5}, Lorg/apache/poi/ss/util/e;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;I)V

    invoke-static/range {v7 .. v14}, Lorg/apache/poi/ss/util/ImageUtils;->getDimFromCell(DIIIIILjava/util/function/Function;)I

    move-result p0

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v6, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;
    .locals 7

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0}, Ljava/awt/Dimension;-><init>()V

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/ImageUtils;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "Only JPEG, PNG and DIB pictures can be automatically sized"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, p0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/poi/ss/util/ImageUtils;->getResolution(Ljavax/imageio/ImageReader;)[I

    move-result-object v3

    aget v4, v3, v1

    const/16 v5, 0x60

    if-nez v4, :cond_1

    aput v5, v3, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    aget v6, v3, v4

    if-nez v6, :cond_2

    aput v5, v3, v4

    :cond_2
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    mul-int/2addr v6, v5

    aget v1, v3, v1

    div-int/2addr v6, v1

    iput v6, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    mul-int/2addr v1, v5

    aget v2, v3, v4

    div-int/2addr v1, v2

    iput v1, v0, Ljava/awt/Dimension;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljavax/imageio/ImageReader;->dispose()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Ljavax/imageio/ImageReader;->dispose()V

    throw v1

    :cond_3
    sget-object p1, Lorg/apache/poi/ss/util/ImageUtils;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string v1, "ImageIO found no images"

    invoke-interface {p1, v1}, La5/b;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_4

    :try_start_6
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    sget-object p1, Lorg/apache/poi/ss/util/ImageUtils;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "Failed to determine image dimensions"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_5
    :goto_6
    return-object v0
.end method

.method public static getResolution(Ljavax/imageio/ImageReader;)[I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    const-string v1, "javax_imageio_1.0"

    invoke-virtual {p0, v1}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v1, "HorizontalPixelSize"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const-string v2, "value"

    const/4 v3, 0x1

    const/16 v4, 0x60

    const-wide v5, 0x4039666666666666L    # 25.4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ne v7, v3, :cond_0

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v7, v1

    div-double v7, v5, v7

    double-to-int v1, v7

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v7, "VerticalPixelSize"

    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ne v7, v3, :cond_1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double v2, p0

    div-double/2addr v5, v2

    double-to-int v4, v5

    :cond_1
    filled-new-array {v1, v4}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D
    .locals 2

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDefaultRowHeightInPoints()F

    move-result p0

    :goto_0
    float-to-double p0, p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result p0

    goto :goto_0

    :goto_1
    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x40c29a8000000000L    # 9525.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static synthetic lambda$getDimensionFromAnchor$1(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPreferredSize$0(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/Integer;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static scaleCell(DIILjava/util/function/Consumer;Ljava/util/function/Consumer;ILjava/util/function/Function;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DII",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    move-wide/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    if-ltz v7, :cond_6

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v2

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    if-ne v7, v2, :cond_1

    if-lez v4, :cond_0

    int-to-double v14, v3

    int-to-double v12, v4

    div-double/2addr v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    mul-double/2addr v12, v10

    goto :goto_1

    :cond_0
    int-to-double v12, v3

    const-wide v14, 0x40c29a8000000000L    # 9525.0

    div-double/2addr v12, v14

    sub-double v12, v10, v12

    goto :goto_1

    :cond_1
    move-wide v12, v10

    :goto_1
    sub-double v14, v0, v5

    cmpg-double v8, v14, v12

    if-gez v8, :cond_4

    if-lez v4, :cond_2

    div-double/2addr v14, v10

    int-to-double v0, v4

    :goto_2
    mul-double/2addr v14, v0

    goto :goto_3

    :cond_2
    const-wide v0, 0x40c29a8000000000L    # 9525.0

    goto :goto_2

    :goto_3
    if-ne v7, v2, :cond_3

    int-to-double v0, v3

    add-double/2addr v14, v0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v8, p4

    invoke-interface {v8, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v14, v15}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, p5

    invoke-interface {v10, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_4
    move-object/from16 v8, p4

    move-object/from16 v10, p5

    add-int/lit8 v7, v7, 0x1

    add-double/2addr v5, v12

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "target size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;
    .locals 20

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v6, p1, v4

    if-eqz v6, :cond_1

    cmpl-double v7, p3, v4

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2}, Ljava/awt/Dimension;-><init>()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    sget v7, Ln4/f;->Z:I

    new-instance v7, Ln4/f$a;

    invoke-direct {v7}, Ln4/f$a;-><init>()V

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ln4/f$a;->m([B)V

    invoke-virtual {v7}, Ln4/f$a;->k()Ln4/f;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v2

    invoke-static {v7, v2}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v6, :cond_3

    cmpl-double v7, p3, v4

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/awt/Dimension;

    invoke-direct {v7}, Ljava/awt/Dimension;-><init>()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/util/ImageUtils;->getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;

    move-result-object v7

    :goto_3
    const-wide v8, 0x40c29a8000000000L    # 9525.0

    if-nez v6, :cond_4

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v10

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v10

    div-double/2addr v10, v8

    mul-double v10, v10, p1

    :goto_4
    cmpl-double v4, p3, v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v4

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v4

    div-double/2addr v4, v8

    mul-double v4, v4, p3

    :goto_5
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v14

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v15

    new-instance v2, Lorg/apache/poi/ss/util/f;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Lorg/apache/poi/ss/util/f;-><init>(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)V

    new-instance v7, Lorg/apache/poi/ss/util/g;

    invoke-direct {v7, v0, v6}, Lorg/apache/poi/ss/util/g;-><init>(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)V

    if-eqz v1, :cond_6

    const/16 v12, 0x400

    move/from16 v18, v12

    goto :goto_6

    :cond_6
    move/from16 v18, v6

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lorg/apache/poi/ss/util/e;

    const/4 v13, 0x1

    invoke-direct {v12, v3, v13}, Lorg/apache/poi/ss/util/e;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;I)V

    move-object/from16 v19, v12

    move v6, v13

    move-wide v12, v10

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-static/range {v12 .. v19}, Lorg/apache/poi/ss/util/ImageUtils;->scaleCell(DIILjava/util/function/Consumer;Ljava/util/function/Consumer;ILjava/util/function/Function;)V

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v14

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v15

    new-instance v2, Lorg/apache/poi/ss/util/f;

    invoke-direct {v2, v0, v6}, Lorg/apache/poi/ss/util/f;-><init>(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)V

    new-instance v7, Lorg/apache/poi/ss/util/g;

    invoke-direct {v7, v0, v6}, Lorg/apache/poi/ss/util/g;-><init>(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)V

    if-eqz v1, :cond_7

    const/16 v0, 0x100

    move/from16 v18, v0

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    :goto_7
    new-instance v0, Lorg/apache/poi/ss/util/e;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/ss/util/e;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;I)V

    move-wide v12, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v19, v0

    invoke-static/range {v12 .. v19}, Lorg/apache/poi/ss/util/ImageUtils;->scaleCell(DIILjava/util/function/Consumer;Ljava/util/function/Consumer;ILjava/util/function/Function;)V

    new-instance v0, Ljava/awt/Dimension;

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0

    :goto_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
