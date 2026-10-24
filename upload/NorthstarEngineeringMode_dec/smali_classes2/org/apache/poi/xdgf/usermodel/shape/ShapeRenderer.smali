.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;
.source "SourceFile"


# instance fields
.field protected _graphics:Ljava/awt/Graphics2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method

.method private drawPath(Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 2

    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 6
    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 7
    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getStroke()Ljava/awt/Stroke;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 8
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    .line 2
    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0, v2, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, v2, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->draw(Ljava/awt/Graphics2D;)V

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p0, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    :cond_1
    return-void
.end method

.method public setGraphics(Ljava/awt/Graphics2D;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    return-void
.end method

.method public visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V
    .locals 1

    iget-object p3, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p3}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p2}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawText(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    invoke-virtual {p0, p3}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method
