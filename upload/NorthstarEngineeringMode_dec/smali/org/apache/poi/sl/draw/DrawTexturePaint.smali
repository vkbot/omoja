.class public Lorg/apache/poi/sl/draw/DrawTexturePaint;
.super Ljava/awt/TexturePaint;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;


# instance fields
.field private final fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

.field private final flipX:D

.field private final flipY:D

.field private final imgRdr:Lorg/apache/poi/sl/draw/ImageRenderer;

.field private final isBitmapSrc:Z

.field private final shape:Ljava/awt/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/image/BufferedImage;Ljava/awt/Shape;Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;DDZ)V
    .locals 11

    move-object v0, p0

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    int-to-double v8, v1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    move-object v1, p2

    invoke-direct {p0, p2, v10}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    move-object v1, p1

    iput-object v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->imgRdr:Lorg/apache/poi/sl/draw/ImageRenderer;

    move-object v1, p4

    iput-object v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    move-object v1, p3

    iput-object v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->shape:Ljava/awt/Shape;

    move-wide/from16 v1, p5

    iput-wide v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipX:D

    move-wide/from16 v1, p7

    iput-wide v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipY:D

    move/from16 v1, p9

    iput-boolean v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->isBitmapSrc:Z

    return-void
.end method

.method private getTiledInstance(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getScale()Ljava/awt/geom/Dimension2D;

    move-result-object v3

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-nez v6, :cond_0

    move-wide v6, v10

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v6

    :goto_0
    mul-double/2addr v4, v6

    iget-wide v6, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipX:D

    div-double/2addr v4, v6

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v6, v2

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v12

    cmpl-double v2, v12, v8

    if-nez v2, :cond_1

    move-wide v12, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v12

    :goto_1
    mul-double/2addr v6, v12

    iget-wide v12, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipY:D

    div-double/2addr v6, v12

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getAlignment()Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v14

    sget-object v16, Lorg/apache/poi/sl/draw/DrawTexturePaint$1;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$TextureAlignment:[I

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;->TOP_LEFT:Lorg/apache/poi/sl/usermodel/PaintStyle$TextureAlignment;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v16, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-wide v4, v8

    goto :goto_6

    :pswitch_1
    sub-double/2addr v12, v4

    :goto_2
    move-wide v4, v8

    move-wide v8, v12

    goto :goto_6

    :pswitch_2
    sub-double/2addr v12, v4

    div-double v12, v12, v16

    goto :goto_2

    :pswitch_3
    sub-double v8, v12, v4

    :goto_3
    sub-double/2addr v14, v6

    div-double v4, v14, v16

    goto :goto_6

    :pswitch_4
    sub-double/2addr v14, v6

    div-double v14, v14, v16

    :goto_4
    move-wide v4, v14

    goto :goto_6

    :pswitch_5
    sub-double/2addr v12, v4

    div-double v8, v12, v16

    goto :goto_3

    :pswitch_6
    sub-double v8, v12, v4

    :goto_5
    sub-double v4, v14, v6

    goto :goto_6

    :pswitch_7
    sub-double/2addr v14, v6

    goto :goto_4

    :pswitch_8
    sub-double/2addr v12, v4

    div-double v8, v12, v16

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v8, v9, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getOffset()Ljava/awt/geom/Point2D;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :cond_3
    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v4

    iget-boolean v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->isBitmapSrc:Z

    if-eqz v2, :cond_4

    iget-wide v6, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipX:D

    goto :goto_7

    :cond_4
    move-wide v6, v10

    :goto_7
    div-double/2addr v4, v6

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    iget-boolean v6, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->isBitmapSrc:Z

    if-eqz v6, :cond_5

    iget-wide v10, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->flipY:D

    :cond_5
    div-double/2addr v2, v10

    invoke-virtual {v1, v4, v5, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    new-instance v9, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v9}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->isRotatedWithShape()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->shape:Ljava/awt/Shape;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1, v8}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    new-instance v2, Ljava/awt/geom/Point2D$Double;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {v1, v2, v2}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    cmpl-double v1, v12, v5

    if-eqz v1, :cond_1

    neg-double v2, v12

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v7}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->shape:Ljava/awt/Shape;

    invoke-virtual {v1, v2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v3, p3

    :goto_1
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-virtual {v8, v1, v2, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getImage(Ljava/awt/geom/Rectangle2D;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/awt/TexturePaint;

    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-double v14, v4

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    int-to-double v4, v4

    move-object v9, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v9 .. v17}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-direct {v0, v1, v2}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/awt/TexturePaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getScale()Ljava/awt/geom/Dimension2D;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, v3, v2}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getTiledInstance(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/AffineTransform;

    move-result-object v8

    new-instance v4, Ljava/awt/TexturePaint;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    int-to-double v14, v2

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v2, v2

    move-object v9, v0

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-direct {v4, v1, v0}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Ljava/awt/TexturePaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-super/range {p0 .. p5}, Ljava/awt/TexturePaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v0

    return-object v0
.end method

.method public getAwtShape()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->shape:Ljava/awt/Shape;

    return-object p0
.end method

.method public getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    return-object p0
.end method

.method public getImage(Ljava/awt/geom/Rectangle2D;)Ljava/awt/image/BufferedImage;
    .locals 25

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Ljava/awt/TexturePaint;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->fill:Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v0

    if-eqz v2, :cond_0

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTexturePaint;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {v3, v2}, Lorg/apache/poi/sl/usermodel/Insets2D;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_5

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const-wide v3, 0x40f86a0000000000L    # 100000.0

    if-eqz v2, :cond_4

    sget-object v5, Lorg/apache/poi/sl/draw/DrawTexturePaint;->INSETS_EMPTY:Lorg/apache/poi/sl/usermodel/Insets2D;

    invoke-virtual {v5, v2}, Lorg/apache/poi/sl/usermodel/Insets2D;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    div-double/2addr v7, v3

    int-to-double v11, v5

    mul-double/2addr v7, v11

    double-to-int v5, v7

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    div-double/2addr v7, v3

    int-to-double v13, v6

    mul-double/2addr v7, v13

    double-to-int v6, v7

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    sub-double v7, v3, v7

    iget-wide v3, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double/2addr v7, v3

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v7, v3

    mul-double/2addr v7, v11

    double-to-int v7, v7

    move-wide v15, v11

    iget-wide v11, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    sub-double v11, v3, v11

    iget-wide v3, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double/2addr v11, v3

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v11, v3

    mul-double/2addr v11, v13

    double-to-int v8, v11

    invoke-virtual {v1, v5, v6, v7, v8}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v1

    iget-wide v5, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    neg-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    div-double/2addr v5, v3

    mul-double/2addr v5, v13

    double-to-int v5, v5

    iget-wide v6, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    neg-double v6, v6

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v6, v3

    mul-double/2addr v6, v15

    double-to-int v6, v6

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    neg-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    div-double/2addr v7, v3

    mul-double/2addr v7, v13

    double-to-int v7, v7

    iget-wide v11, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    neg-double v11, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v8, v3

    mul-double/2addr v8, v15

    double-to-int v2, v8

    if-gtz v5, :cond_3

    if-gtz v6, :cond_3

    if-gtz v7, :cond_3

    if-lez v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v20

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v21

    const/16 v23, 0x0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v24

    move-object/from16 v17, v1

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v24}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    new-instance v4, Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v8, v2

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    add-int/2addr v2, v5

    add-int/2addr v2, v7

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v7

    invoke-direct {v4, v8, v2, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v20

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v21

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v24

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v5

    invoke-virtual/range {v17 .. v24}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    move-object v1, v4

    :cond_4
    if-eqz v0, :cond_5

    new-instance v11, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    int-to-double v7, v2

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-double v9, v2

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    iget-wide v3, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    mul-double v16, v3, v7

    iget-wide v3, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    div-double/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    mul-double v18, v3, v7

    iget-wide v3, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    sub-double v3, v5, v3

    iget-wide v7, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    sub-double/2addr v3, v7

    div-double/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    mul-double v20, v3, v7

    iget-wide v3, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    sub-double v3, v5, v3

    iget-wide v7, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    sub-double/2addr v3, v7

    div-double/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    mul-double v22, v3, v5

    move-object v15, v2

    invoke-direct/range {v15 .. v23}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    sget-object v4, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    sget-object v4, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v3, v1, v4}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    move-object v1, v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getImageRenderer()Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawTexturePaint;->imgRdr:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-object p0
.end method
