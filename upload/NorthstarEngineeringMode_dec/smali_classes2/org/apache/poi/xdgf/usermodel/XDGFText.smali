.class public Lorg/apache/poi/xdgf/usermodel/XDGFText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _text:La3/s;


# direct methods
.method public constructor <init>(La3/s;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:La3/s;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-void
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v8

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz v8, :cond_2

    iget-object v8, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v8}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v4

    move-object/from16 v16, v5

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v9, v3, Ljava/awt/geom/Rectangle2D$Double;->x:D

    move-object v8, v4

    move-object/from16 v16, v5

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {v1, v9, v10, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {v1, v13, v14, v11, v12}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->height:D

    neg-double v4, v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/awt/FontMetrics;->getMaxCharBounds(Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    add-double/2addr v4, v9

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10, v4, v5}, Ljava/awt/Graphics2D;->translate(DD)V

    :goto_1
    if-eqz v7, :cond_3

    iget-object v4, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v11, v12, v13, v14}, Ljava/awt/Graphics2D;->scale(DD)V

    iget-wide v4, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    neg-double v4, v4

    invoke-virtual {v1, v4, v5, v9, v10}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_3
    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v4, v9

    if-lez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_4
    array-length v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    :goto_2
    if-ge v5, v0, :cond_7

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v11, v16

    goto :goto_4

    :cond_5
    new-instance v10, Ljava/awt/font/TextLayout;

    move-object/from16 v11, v16

    invoke-direct {v10, v9, v11, v8}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->isLeftToRight()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v10, v1, v4, v7}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    goto :goto_3

    :cond_6
    iget-wide v12, v3, Ljava/awt/geom/Rectangle2D$Double;->width:D

    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v9

    float-to-double v14, v9

    sub-double/2addr v12, v14

    double-to-float v9, v12

    invoke-virtual {v10, v1, v9, v7}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    :goto_3
    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v9

    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v12

    add-float/2addr v9, v12

    invoke-virtual {v10}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v10

    add-float/2addr v9, v10

    add-float/2addr v7, v9

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v16, v11

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v6}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextBounds()Ljava/awt/geom/Rectangle2D$Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D$Double;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D$Double;->getHeight()D

    move-result-wide v2

    new-instance p0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v4, v5}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {p0, v0, v1, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {p0, v4, v5, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {p0, v4, v5, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-object p0
.end method

.method public getTextBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtPinY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v5}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v7}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v9}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iget-object v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sub-double v11, v1, v5

    sub-double v13, v3, v7

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getTextCenter()Ljava/awt/geom/Point2D$Double;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtLocPinY()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:La3/s;

    check-cast p0, Lb3/a;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()La3/s;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFText;->_text:La3/s;

    return-object p0
.end method
