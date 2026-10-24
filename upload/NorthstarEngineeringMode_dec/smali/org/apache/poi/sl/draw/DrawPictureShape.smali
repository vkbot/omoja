.class public Lorg/apache/poi/sl/draw/DrawPictureShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    return-void
.end method

.method public static getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/ImageRenderer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-static {v1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {v1, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    return-object v1

    :catch_1
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "No suitable image renderer found for content-type \'{}\' - include poi-scratchpad (for wmf/emf) or poi-ooxml (for svg) jars - svgs/batik doesn\'t work on the module-path!"

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getClipping()Ljava/awt/Insets;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/apache/poi/sl/usermodel/PictureData;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getAlternativePictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object p0

    aput-object p0, v3, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object p0, v3, v5

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/common/usermodel/PictureType;->valueOf(Lorg/apache/poi/poifs/filesystem/FileMagic;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-ne v6, v7, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/common/usermodel/PictureType;->getContentType()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v6

    invoke-interface {v6, p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->canRender(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6, v4, p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    invoke-interface {v6, p1, v0, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    sget-object v4, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->h()La5/b;

    move-result-object v4

    invoke-interface {v4, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v4, "image can\'t be loaded/rendered."

    invoke-interface {p0, v4}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    .line 3
    check-cast p0, Lorg/apache/poi/sl/usermodel/PictureShape;

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    return-object p0
.end method

.method public resize()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    .line 5
    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v5

    .line 6
    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v7

    .line 7
    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v9

    .line 8
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {p0, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    .line 9
    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V

    return-void
.end method

.method public resize(Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V
    .locals 25

    move-object/from16 v0, p1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v2

    .line 12
    iget v3, v2, Ljava/awt/Dimension;->width:I

    if-lez v3, :cond_3

    iget v3, v2, Ljava/awt/Dimension;->height:I

    if-gtz v3, :cond_0

    goto/16 :goto_7

    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    .line 15
    iget v7, v2, Ljava/awt/Dimension;->width:I

    int-to-double v7, v7

    div-double v7, v3, v7

    .line 16
    iget v9, v2, Ljava/awt/Dimension;->height:I

    int-to-double v9, v9

    div-double v9, v5, v9

    cmpl-double v11, v7, v9

    const-wide/16 v12, 0x0

    if-lez v11, :cond_1

    .line 17
    iget v2, v2, Ljava/awt/Dimension;->width:I

    int-to-double v2, v2

    mul-double v3, v9, v2

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    sub-double/2addr v7, v3

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-wide v7, v12

    move-wide/from16 v12, v23

    goto :goto_0

    :cond_1
    cmpl-double v5, v9, v7

    if-lez v5, :cond_2

    .line 19
    iget v2, v2, Ljava/awt/Dimension;->height:I

    int-to-double v5, v2

    mul-double/2addr v5, v7

    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    sub-double/2addr v7, v5

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    .line 21
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    .line 23
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$RectAlign:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_0

    div-double/2addr v12, v9

    add-double/2addr v12, v2

    div-double/2addr v7, v9

    add-double/2addr v7, v4

    move-wide/from16 v17, v7

    :goto_1
    move-wide v15, v12

    goto :goto_6

    :goto_2
    :pswitch_0
    move-wide v15, v2

    move-wide/from16 v17, v4

    goto :goto_6

    :goto_3
    :pswitch_1
    div-double/2addr v7, v9

    add-double/2addr v7, v4

    move-wide v15, v2

    move-wide/from16 v17, v7

    goto :goto_6

    :goto_4
    :pswitch_2
    add-double/2addr v4, v7

    goto :goto_2

    :pswitch_3
    div-double/2addr v12, v9

    add-double/2addr v12, v2

    add-double/2addr v4, v7

    :goto_5
    move-wide/from16 v17, v4

    goto :goto_1

    :pswitch_4
    add-double/2addr v2, v12

    goto :goto_4

    :pswitch_5
    add-double/2addr v2, v12

    goto :goto_3

    :pswitch_6
    add-double/2addr v2, v12

    goto :goto_2

    :pswitch_7
    div-double/2addr v12, v9

    add-double/2addr v12, v2

    goto :goto_5

    .line 24
    :goto_6
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    .line 25
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    .line 26
    :cond_3
    :goto_7
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
