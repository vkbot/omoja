.class public Lorg/apache/poi/sl/draw/DrawSimpleShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# static fields
.field private static final DECO_SIZE_POW:D = 1.5


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->lambda$draw$0(Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    return-void
.end method

.method private fillArea(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Ljava/awt/geom/Path2D;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-static {p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->fillPaintWorkaround(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$draw$0(Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->fillArea(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;Ljava/awt/geom/Path2D;)V

    return-void
.end method


# virtual methods
.method public computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/PathIf;

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->getW()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {v5}, Lorg/apache/poi/sl/draw/geom/PathIf;->getH()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v12, v6, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x1

    if-nez v12, :cond_2

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v6

    int-to-double v6, v6

    invoke-static/range {v17 .. v18}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v19

    :goto_1
    move-wide/from16 v26, v6

    move-wide/from16 v6, v19

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v19

    cmpl-double v12, v19, v15

    if-nez v12, :cond_3

    move-wide/from16 v26, v6

    move-wide v6, v13

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v19

    div-double v19, v19, v6

    goto :goto_1

    :goto_2
    cmpl-double v10, v8, v10

    if-nez v10, :cond_4

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v8

    int-to-double v8, v8

    invoke-static/range {v17 .. v18}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v13

    :goto_3
    move-wide/from16 v28, v8

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v10

    cmpl-double v10, v10, v15

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v10

    div-double v13, v10, v8

    goto :goto_3

    :goto_4
    new-instance v8, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v21, v8

    invoke-direct/range {v21 .. v29}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v9, Lorg/apache/poi/sl/draw/geom/Context;

    invoke-direct {v9, v2, v8, v0}, Lorg/apache/poi/sl/draw/geom/Context;-><init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V

    invoke-interface {v5, v9}, Lorg/apache/poi/sl/draw/geom/PathIf;->getPath(Lorg/apache/poi/sl/draw/geom/Context;)Ljava/awt/geom/Path2D$Double;

    move-result-object v8

    new-instance v9, Ljava/awt/geom/AffineTransform;

    invoke-direct {v9}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v10

    move-object/from16 p0, v0

    move-object v12, v1

    invoke-virtual {v3}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    invoke-virtual {v9, v10, v11, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v9, v6, v7, v13, v14}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v9, v8}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v0, v5}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v12

    goto/16 :goto_0

    :cond_6
    move-object v12, v1

    return-object v12
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getLinePaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getStroke()Ljava/awt/BasicStroke;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->computeOutlines(Ljava/awt/Graphics2D;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v3, v4}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V

    if-eqz v3, :cond_4

    new-instance v3, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Path2D$Double;-><init>()V

    sget-object v7, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v7, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v9}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Lorg/apache/poi/sl/draw/geom/PathIf;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v10

    if-eqz v8, :cond_2

    if-eq v8, v10, :cond_2

    invoke-static {p0, p1, v3, v8}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->a(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->reset()V

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    :goto_1
    move-object v8, v10

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {p0, p1, v3, v8}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->a(Lorg/apache/poi/sl/draw/DrawSimpleShape;Ljava/awt/Graphics2D;Ljava/awt/geom/Path2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->drawContent(Ljava/awt/Graphics2D;)V

    if-eqz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, v5}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v7, v6}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawDecoration(Ljava/awt/Graphics2D;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public drawDecoration(Ljava/awt/Graphics2D;Ljava/awt/Paint;Ljava/awt/BasicStroke;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    :cond_4
    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public drawShadow(Ljava/awt/Graphics2D;Ljava/util/Collection;Ljava/awt/Paint;Ljava/awt/Paint;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;",
            "Ljava/awt/Paint;",
            "Ljava/awt/Paint;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getShadow()Lorg/apache/poi/sl/usermodel/Shadow;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v2, v4

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getAngle()D

    move-result-wide v4

    sub-double/2addr v4, v2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getDistance()D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-virtual {p1, v6, v7, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/PathIf;

    move-result-object p2

    sget-object v2, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v2, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    if-eqz p3, :cond_3

    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->fillPaintWorkaround(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_2

    invoke-interface {p2}, Lorg/apache/poi/sl/draw/geom/PathIf;->isStroked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_4
    neg-double p2, v6

    neg-double v0, v4

    invoke-virtual {p1, p2, p3, v0, v1}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getFillPaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getHeadDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 29

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v10

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    move-wide v13, v12

    goto :goto_0

    :cond_3
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v15

    move-wide/from16 v17, v13

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v1, v15

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v12

    if-nez v12, :cond_4

    return-object v0

    :cond_4
    sget-object v13, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const/4 v13, 0x1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    if-eq v12, v13, :cond_7

    const/4 v0, 0x2

    if-eq v12, v0, :cond_6

    const/4 v0, 0x3

    if-eq v12, v0, :cond_6

    const/4 v0, 0x4

    if-eq v12, v0, :cond_5

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v12, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v12}, Ljava/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v1, v3

    move-wide/from16 v19, v8

    neg-double v8, v3

    mul-double/2addr v8, v6

    div-double/2addr v8, v14

    invoke-virtual {v12, v1, v2, v8, v9}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v8, 0x0

    invoke-virtual {v12, v8, v9, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v6

    div-double/2addr v3, v14

    invoke-virtual {v12, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v12}, Ljava/awt/geom/Path2D$Double;->closePath()V

    move-wide/from16 v8, v19

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v1, v17

    invoke-virtual {v5, v1, v2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v21, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    sget-object v12, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v0, v12}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    invoke-virtual {v0, v13}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    new-instance v12, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v12}, Ljava/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v1, v3

    move-wide/from16 v19, v8

    neg-double v8, v3

    mul-double/2addr v8, v6

    div-double/2addr v8, v14

    invoke-virtual {v12, v1, v2, v8, v9}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v8, 0x0

    invoke-virtual {v12, v8, v9, v8, v9}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v6

    div-double/2addr v3, v14

    invoke-virtual {v12, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    move-wide/from16 v8, v19

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v1, v21

    invoke-virtual {v5, v1, v2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    :cond_7
    move-wide/from16 v16, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v28, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    mul-double v24, v3, v1

    mul-double v26, v3, v6

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v27}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface/range {v28 .. v28}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    div-double/2addr v2, v14

    sub-double/2addr v8, v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    div-double/2addr v2, v14

    sub-double/2addr v10, v2

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v14

    add-double/2addr v2, v6

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v14

    add-double/2addr v6, v8

    move-object v12, v5

    move-wide/from16 v13, v16

    move-wide v15, v2

    move-wide/from16 v17, v6

    invoke-virtual/range {v12 .. v18}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    move-object/from16 v12, v28

    :goto_1
    if-eqz v12, :cond_8

    invoke-virtual {v5, v12}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v12

    :cond_8
    if-nez v12, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v12, v0}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    move-object v0, v1

    :cond_a
    :goto_2
    return-object v0
.end method

.method public getLinePaint(Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    .line 2
    check-cast p0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    return-object p0
.end method

.method public getStroke()Ljava/awt/BasicStroke;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;

    move-result-object p0

    return-object p0
.end method

.method public getTailDecoration(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Ljava/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 29

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v10

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    move-wide v13, v12

    goto :goto_0

    :cond_3
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-double v6, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v15

    move-wide/from16 v17, v13

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v1, v15

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v12

    if-nez v12, :cond_4

    return-object v0

    :cond_4
    sget-object v13, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    const/4 v0, 0x2

    if-eq v12, v0, :cond_6

    const/4 v0, 0x3

    if-eq v12, v0, :cond_6

    const/4 v0, 0x4

    if-eq v12, v0, :cond_5

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v12, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v12}, Ljava/awt/geom/Path2D$Double;-><init>()V

    neg-double v14, v3

    mul-double/2addr v1, v14

    mul-double/2addr v14, v6

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v14, v14, v19

    invoke-virtual {v12, v1, v2, v14, v15}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v6

    div-double v3, v3, v19

    invoke-virtual {v12, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v12}, Ljava/awt/geom/Path2D$Double;->closePath()V

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v14, v17

    invoke-virtual {v5, v14, v15}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    goto/16 :goto_1

    :cond_6
    move-wide/from16 v14, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    sget-object v12, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v0, v12}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    invoke-virtual {v0, v13}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    new-instance v12, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v12}, Ljava/awt/geom/Path2D$Double;-><init>()V

    move-wide/from16 v17, v14

    neg-double v13, v3

    mul-double/2addr v1, v13

    mul-double/2addr v13, v6

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    invoke-virtual {v12, v1, v2, v13, v14}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v6

    div-double/2addr v3, v15

    invoke-virtual {v12, v1, v2, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v13, v17

    invoke-virtual {v5, v13, v14}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    :cond_7
    move-wide/from16 v13, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v28, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    mul-double v24, v3, v1

    mul-double v26, v3, v6

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v27}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface/range {v28 .. v28}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    sub-double/2addr v8, v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    div-double/2addr v2, v6

    sub-double/2addr v10, v2

    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v8

    div-double/2addr v8, v6

    add-double v15, v8, v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v6

    add-double v17, v8, v2

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    move-object/from16 v12, v28

    :goto_1
    if-eqz v12, :cond_8

    invoke-virtual {v5, v12}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v12

    :cond_8
    if-nez v12, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v12, v0}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Ljava/awt/Shape;Lorg/apache/poi/sl/draw/geom/PathIf;)V

    move-object v0, v1

    :cond_a
    :goto_2
    return-object v0
.end method
