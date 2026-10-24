.class public Lorg/apache/poi/sl/draw/SLGraphics;
.super Ljava/awt/Graphics2D;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private _background:Ljava/awt/Color;

.field private _font:Ljava/awt/Font;

.field private _foreground:Ljava/awt/Color;

.field private _group:Lorg/apache/poi/sl/usermodel/GroupShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation
.end field

.field private _hints:Ljava/awt/RenderingHints;

.field private _paint:Ljava/awt/Paint;

.field private _stroke:Ljava/awt/Stroke;

.field private _transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/SLGraphics;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/SLGraphics;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/GroupShape;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    new-instance p1, Ljava/awt/BasicStroke;

    invoke-direct {p1}, Ljava/awt/BasicStroke;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    sget-object p1, Ljava/awt/Color;->black:Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    new-instance p1, Ljava/awt/Font;

    const/4 v0, 0x0

    const/16 v1, 0xc

    const-string v2, "Arial"

    invoke-direct {p1, v2, v0, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    sget-object p1, Ljava/awt/Color;->black:Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    sget-object p1, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    new-instance p1, Ljava/awt/RenderingHints;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    return-void
.end method

.method private logNotImplemented()V
    .locals 1

    sget-object p0, Lorg/apache/poi/sl/draw/SLGraphics;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string v0, "Not implemented"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public applyPaint(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/Color;

    invoke-interface {p1, p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setFillColor(Ljava/awt/Color;)V

    :cond_0
    return-void
.end method

.method public applyStroke(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    instance-of v0, p0, Ljava/awt/BasicStroke;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/BasicStroke;

    invoke-virtual {p0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearRect(IIII)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getBackground()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/sl/draw/SLGraphics;->fillRect(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public clipRect(IIII)V
    .locals 1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->clip(Ljava/awt/Shape;)V

    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 0

    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Graphics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setPath(Ljava/awt/geom/Path2D;)I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setFillColor(Ljava/awt/Color;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/SLGraphics;->applyStroke(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/Color;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 15

    new-instance v14, Ljava/awt/geom/Arc2D$Double;

    move/from16 v0, p1

    int-to-double v1, v0

    move/from16 v0, p2

    int-to-double v3, v0

    move/from16 v0, p3

    int-to-double v5, v0

    move/from16 v0, p4

    int-to-double v7, v0

    move/from16 v0, p5

    int-to-double v9, v0

    move/from16 v0, p6

    int-to-double v11, v0

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    move-object v0, p0

    invoke-virtual {p0, v14}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/awt/font/GlyphVector;->getOutline(FF)Ljava/awt/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, p1, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p3, p4, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return p0
.end method

.method public drawLine(IIII)V
    .locals 10

    new-instance v9, Ljava/awt/geom/Line2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v9}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawOval(IIII)V
    .locals 10

    new-instance v9, Ljava/awt/geom/Ellipse2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v9}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 1

    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p1, p2, p3}, Ljava/awt/Polygon;-><init>([I[II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 4

    if-lez p3, :cond_1

    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/GeneralPath;->moveTo(FF)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v3, p2, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/awt/geom/GeneralPath;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    :cond_1
    return-void
.end method

.method public drawRect(IIII)V
    .locals 1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 14

    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    move v0, p1

    int-to-double v1, v0

    move/from16 v0, p2

    int-to-double v3, v0

    move/from16 v0, p3

    int-to-double v5, v0

    move/from16 v0, p4

    int-to-double v7, v0

    move/from16 v0, p5

    int-to-double v9, v0

    move/from16 v0, p6

    int-to-double v11, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    move-object v0, p0

    invoke-virtual {p0, v13}, Lorg/apache/poi/sl/draw/SLGraphics;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    .line 1
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/sl/usermodel/TextRun;

    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 3
    invoke-virtual {v5}, Ljava/awt/Font;->getSize()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontSize(Ljava/lang/Double;)V

    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 4
    invoke-virtual {v5}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontFamily(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getColor()Ljava/awt/Color;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getColor()Ljava/awt/Color;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/sl/usermodel/TextRun;->setFontColor(Lorg/apache/poi/sl/usermodel/PaintStyle;)V

    :cond_0
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 6
    invoke-virtual {v5}, Ljava/awt/Font;->isBold()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v3, v6}, Lorg/apache/poi/sl/usermodel/TextRun;->setBold(Z)V

    :cond_1
    iget-object v5, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    .line 7
    invoke-virtual {v5}, Ljava/awt/Font;->isItalic()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v6}, Lorg/apache/poi/sl/usermodel/TextRun;->setItalic(Z)V

    .line 8
    :cond_2
    invoke-interface {v2, v1}, Lorg/apache/poi/sl/usermodel/TextShape;->setText(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextRun;

    .line 9
    new-instance v3, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    invoke-interface {v2, v3}, Lorg/apache/poi/sl/usermodel/TextShape;->setInsets(Lorg/apache/poi/sl/usermodel/Insets2D;)V

    .line 10
    invoke-interface {v2, v4}, Lorg/apache/poi/sl/usermodel/TextShape;->setWordWrap(Z)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    invoke-interface {v2, v3}, Lorg/apache/poi/sl/usermodel/TextShape;->setHorizontalCentered(Ljava/lang/Boolean;)V

    .line 12
    sget-object v3, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->MIDDLE:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    invoke-interface {v2, v3}, Lorg/apache/poi/sl/usermodel/TextShape;->setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V

    .line 13
    new-instance v3, Ljava/awt/font/TextLayout;

    iget-object v4, v0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-direct {v3, v1, v4, v0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 14
    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v0

    .line 15
    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    div-float v5, v4, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    sub-float v0, p3, v0

    .line 16
    new-instance v3, Ljava/awt/Rectangle;

    move/from16 v5, p2

    float-to-int v5, v5

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v4, v4

    invoke-direct {v3, v5, v0, v1, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v2, v3}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/SLGraphics;->drawString(Ljava/lang/String;FF)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/SLGraphics;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/awt/geom/Path2D$Double;-><init>(Ljava/awt/Shape;)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/poi/sl/usermodel/FreeformShape;->setPath(Ljava/awt/geom/Path2D;)I

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/SLGraphics;->applyPaint(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->setStrokeStyle([Ljava/lang/Object;)V

    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 15

    new-instance v14, Ljava/awt/geom/Arc2D$Double;

    move/from16 v0, p1

    int-to-double v1, v0

    move/from16 v0, p2

    int-to-double v3, v0

    move/from16 v0, p3

    int-to-double v5, v0

    move/from16 v0, p4

    int-to-double v7, v0

    move/from16 v0, p5

    int-to-double v9, v0

    move/from16 v0, p6

    int-to-double v11, v0

    const/4 v13, 0x2

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    move-object v0, p0

    invoke-virtual {p0, v14}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fillOval(IIII)V
    .locals 10

    new-instance v9, Ljava/awt/geom/Ellipse2D$Double;

    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v9}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 1

    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p1, p2, p3}, Ljava/awt/Polygon;-><init>([I[II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 14

    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    move v0, p1

    int-to-double v1, v0

    move/from16 v0, p2

    int-to-double v3, v0

    move/from16 v0, p3

    int-to-double v5, v0

    move/from16 v0, p4

    int-to-double v7, v0

    move/from16 v0, p5

    int-to-double v9, v0

    move/from16 v0, p6

    int-to-double v11, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    move-object v0, p0

    invoke-virtual {p0, v13}, Lorg/apache/poi/sl/draw/SLGraphics;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    return-object p0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    return-object p0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    return-object p0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 0
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
    .end annotation

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 3

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/SLGraphics;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v2}, Lorg/apache/poi/sl/draw/SLGraphics;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance v1, Ljava/awt/font/FontRenderContext;

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-direct {v1, v2, v0, p0}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    return-object v1
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    return-object p0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public getShapeGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/GroupShape<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_group:Lorg/apache/poi/sl/usermodel/GroupShape;

    return-object p0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getStroke()Ljava/awt/Stroke;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/awt/Shape;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public rotate(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    return-void
.end method

.method public rotate(DDD)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    return-void
.end method

.method public scale(DD)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_background:Ljava/awt/Color;

    return-void
.end method

.method public setClip(IIII)V
    .locals 1

    .line 2
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/SLGraphics;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/SLGraphics;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_font:Ljava/awt/Font;

    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_paint:Ljava/awt/Paint;

    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_foreground:Ljava/awt/Color;

    :cond_1
    return-void
.end method

.method public setPaintMode()V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/awt/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_stroke:Ljava/awt/Stroke;

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/SLGraphics;->logNotImplemented()V

    return-void
.end method

.method public shear(DD)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public translate(DD)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    return-void
.end method

.method public translate(II)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/SLGraphics;->_transform:Ljava/awt/geom/AffineTransform;

    int-to-double v0, p1

    int-to-double p1, p2

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    return-void
.end method
