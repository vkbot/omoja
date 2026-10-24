.class public Lorg/apache/poi/xslf/draw/SVGRenderExtension;
.super Lorg/apache/batik/svggen/DefaultExtensionHandler;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LINE_LENGTH:I = 0x41

.field private static final XLINK_NS:Ljava/lang/String; = "http://www.w3.org/1999/xlink"


# instance fields
.field private final imageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgGraphics2D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/batik/svggen/SVGGraphics2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/batik/svggen/DefaultExtensionHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->imageMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->svgGraphics2D:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addMgpAttributes(Lorg/w3c/dom/Element;Lorg/apache/batik/svggen/SVGGeneratorContext;Ljava/awt/MultipleGradientPaint;)V
    .locals 6

    const-string p0, "gradientUnits"

    const-string v0, "userSpaceOnUse"

    invoke-interface {p1, p0, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/apache/poi/xslf/draw/SVGRenderExtension$1;->$SwitchMap$java$awt$MultipleGradientPaint$CycleMethod:[I

    invoke-virtual {p3}, Ljava/awt/MultipleGradientPaint;->getCycleMethod()Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/MultipleGradientPaint$CycleMethod;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "pad"

    goto :goto_0

    :cond_0
    const-string p0, "repeat"

    goto :goto_0

    :cond_1
    const-string p0, "reflect"

    :goto_0
    const-string v0, "spreadMethod"

    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/awt/MultipleGradientPaint;->getColorSpace()Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-result-object p0

    sget-object v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    if-ne p0, v0, :cond_2

    const-string p0, "linearRGB"

    goto :goto_1

    :cond_2
    const-string p0, "sRGB"

    :goto_1
    const-string v0, "color-interpolation"

    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/awt/MultipleGradientPaint;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matrix("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gradientTransform"

    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p3}, Ljava/awt/MultipleGradientPaint;->getColors()[Ljava/awt/Color;

    move-result-object p0

    invoke-virtual {p3}, Ljava/awt/MultipleGradientPaint;->getFractions()[F

    move-result-object p3

    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_5

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getDOMFactory()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "http://www.w3.org/2000/svg"

    const-string v3, "stop"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-static {v2, p2}, Lorg/apache/batik/svggen/SVGColor;->toSVG(Ljava/awt/Color;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, p3, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offset"

    invoke-interface {v1, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/batik/svggen/SVGPaintDescriptor;->getPaintValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "stop-color"

    invoke-interface {v1, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/awt/Color;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_4

    const-string v3, "stop-opacity"

    invoke-virtual {v2}, Lorg/apache/batik/svggen/SVGPaintDescriptor;->getOpacityValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getDtpDescriptor(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;
    .locals 37

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getImageID(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getDOMFactory()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "http://www.w3.org/2000/svg"

    const-string v4, "pattern"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getIDGenerator()Lorg/apache/batik/svggen/SVGIDGenerator;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/batik/svggen/SVGIDGenerator;->generateID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getStretch()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getAnchorRect()Ljava/awt/geom/Rectangle2D;

    move-result-object v8

    iget-wide v9, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    neg-double v9, v9

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v9, v11

    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    mul-double/2addr v9, v13

    invoke-virtual {v0, v9, v10}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v15

    iget-wide v9, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    neg-double v9, v9

    div-double/2addr v9, v11

    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v13

    mul-double/2addr v9, v13

    invoke-virtual {v0, v9, v10}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v14

    iget-wide v9, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    add-double/2addr v9, v11

    move-object/from16 p0, v14

    iget-wide v13, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    add-double/2addr v9, v13

    div-double/2addr v9, v11

    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v13

    mul-double/2addr v9, v13

    invoke-virtual {v0, v9, v10}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v14

    iget-wide v9, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v9, v11

    move-object/from16 p1, v14

    iget-wide v13, v7, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v9, v13

    div-double/2addr v9, v11

    invoke-virtual {v8}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    mul-double/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getScale()Ljava/awt/geom/Dimension2D;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Lorg/apache/poi/util/Dimension2DDouble;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct {v7, v8, v9, v8, v9}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    :cond_1
    move-object/from16 v24, v7

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getOffset()Ljava/awt/geom/Point2D;

    move-result-object v7

    const-wide/16 v13, 0x0

    if-nez v7, :cond_2

    new-instance v7, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v7, v13, v14, v13, v14}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    :cond_2
    move-object/from16 v18, v7

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getFlipMode()Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    :cond_3
    const/4 v7, 0x0

    const-string v8, "patternUnits"

    const-string v9, "objectBoundingBox"

    const/4 v10, 0x0

    const-string v11, "id"

    const/16 v16, 0x0

    move-wide/from16 v31, v13

    move-object/from16 v13, v16

    const-string v14, "x"

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v18 .. v18}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object v13, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const-string v17, "y"

    invoke-virtual/range {v18 .. v18}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "width"

    move-object/from16 v33, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v21

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    mul-double v2, v21, v25

    invoke-virtual {v0, v2, v3}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-static {v1, v2, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const-string v23, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v27

    move-object v2, v5

    move-object/from16 v36, v6

    mul-double v5, v27, v25

    invoke-virtual {v0, v5, v6}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const-string v26, "preserveAspectRatio"

    const-string v27, "none"

    const/16 v28, 0x0

    const-string v29, "viewBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v12}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object v12, v4

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    filled-new-array/range {v7 .. v30}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setAttribute(Lorg/apache/batik/svggen/SVGGeneratorContext;Lorg/w3c/dom/Element;[Ljava/lang/Object;)V

    invoke-interface/range {v36 .. v36}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getShape()Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object v1

    invoke-interface/range {v36 .. v36}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->isRotatedWithShape()Z

    move-result v3

    const-string v5, ")"

    const/4 v6, 0x0

    if-nez v3, :cond_4

    instance-of v3, v1, Lorg/apache/poi/sl/usermodel/SimpleShape;

    if-eqz v3, :cond_4

    check-cast v1, Lorg/apache/poi/sl/usermodel/SimpleShape;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v7

    cmpl-double v1, v7, v31

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "rotate("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-double v7, v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "patternTransform"

    filled-new-array {v6, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setAttribute(Lorg/apache/batik/svggen/SVGGeneratorContext;Lorg/w3c/dom/Element;[Ljava/lang/Object;)V

    :cond_4
    const-string v0, "use"

    move-object/from16 v1, v34

    move-object/from16 v3, v35

    invoke-interface {v1, v3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "href"

    invoke-interface {v0, v6, v3, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url(#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/batik/svggen/SVGPaintDescriptor;

    const-string v3, "1"

    invoke-direct {v1, v0, v3, v2}, Lorg/apache/batik/svggen/SVGPaintDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    return-object v1
.end method

.method private getImageID(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getImageRenderer()Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->getCachedContentType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v5, v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v5, v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v5, v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->getCachedImage()[B

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    move-object v4, v2

    :goto_0
    if-nez v2, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v1

    sget v2, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v2

    :try_start_0
    const-string v4, "PNG"

    invoke-static {v1, v4, v2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v2

    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object v4, v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    goto :goto_1

    :catch_0
    return-object v3

    :cond_2
    :goto_1
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->imageMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getDOMFactory()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawTexturePaint;->getAnchorRect()Ljava/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getIDGenerator()Lorg/apache/batik/svggen/SVGIDGenerator;

    move-result-object v6

    const-string v7, "image"

    invoke-virtual {v6, v7}, Lorg/apache/batik/svggen/SVGIDGenerator;->generateID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    iget-object v8, v0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->imageMap:Ljava/util/Map;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    div-int/lit8 v8, v1, 0x41

    add-int/lit8 v8, v8, 0x1e

    add-int/2addr v8, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "data:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";base64,\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/16 v8, 0x41

    invoke-static {v8, v4}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "http://www.w3.org/2000/svg"

    invoke-interface {v3, v2, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v8, 0x0

    const-string v9, "id"

    const/4 v11, 0x0

    const-string v12, "preserveAspectRatio"

    const-string v13, "none"

    const/4 v14, 0x0

    const-string v15, "x"

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, "y"

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, "width"

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "height"

    invoke-virtual {v5}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const-string v26, "http://www.w3.org/1999/xlink"

    const-string v27, "xlink:href"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    filled-new-array/range {v8 .. v28}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-static {v3, v2, v1}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setAttribute(Lorg/apache/batik/svggen/SVGGeneratorContext;Lorg/w3c/dom/Element;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getSvgGraphics2D()Lorg/apache/batik/svggen/SVGGraphics2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/batik/svggen/SVGGraphics2D;->getDOMTreeManager()Lorg/apache/batik/svggen/DOMTreeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/batik/svggen/DOMTreeManager;->addOtherDef(Lorg/w3c/dom/Element;)V

    return-object v6
.end method

.method private getLgpDescriptor(Ljava/awt/LinearGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;
    .locals 5

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getDOMFactory()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/svg"

    const-string v2, "linearGradient"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getIDGenerator()Lorg/apache/batik/svggen/SVGIDGenerator;

    move-result-object v1

    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Lorg/apache/batik/svggen/SVGIDGenerator;->generateID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/LinearGradientPaint;->getStartPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    const-string v3, "x1"

    const-string v4, "y1"

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setPoint(Lorg/w3c/dom/Element;Ljava/awt/geom/Point2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/LinearGradientPaint;->getEndPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    const-string v3, "x2"

    const-string v4, "y2"

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setPoint(Lorg/w3c/dom/Element;Ljava/awt/geom/Point2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->addMgpAttributes(Lorg/w3c/dom/Element;Lorg/apache/batik/svggen/SVGGeneratorContext;Ljava/awt/MultipleGradientPaint;)V

    new-instance p0, Lorg/apache/batik/svggen/SVGPaintDescriptor;

    const-string p1, "url(#"

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/batik/svggen/SVGPaintDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    return-object p0
.end method

.method private getPathDescriptor(Lorg/apache/poi/sl/draw/PathGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;
    .locals 7

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getGraphicContextDefaults()Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/batik/svggen/SVGGeneratorContext$GraphicContextDefaults;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v5

    sget-object p0, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v5, p0}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Shape;

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sl/draw/PathGradientPaint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->createRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/PathGradientPaint$PathGradientContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v6}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    new-instance p1, Lorg/apache/batik/svggen/SVGTexturePaint;

    invoke-direct {p1, p2}, Lorg/apache/batik/svggen/SVGTexturePaint;-><init>(Lorg/apache/batik/svggen/SVGGeneratorContext;)V

    new-instance p2, Ljava/awt/TexturePaint;

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p1, p2}, Lorg/apache/batik/svggen/SVGTexturePaint;->toSVG(Ljava/awt/TexturePaint;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private getRgpDescriptor(Ljava/awt/RadialGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;
    .locals 5

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getDOMFactory()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/svg"

    const-string v2, "radialGradient"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/batik/svggen/SVGGeneratorContext;->getIDGenerator()Lorg/apache/batik/svggen/SVGIDGenerator;

    move-result-object v1

    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Lorg/apache/batik/svggen/SVGIDGenerator;->generateID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/RadialGradientPaint;->getCenterPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    const-string v3, "cx"

    const-string v4, "cy"

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setPoint(Lorg/w3c/dom/Element;Ljava/awt/geom/Point2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/RadialGradientPaint;->getFocusPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    const-string v3, "fx"

    const-string v4, "fy"

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->setPoint(Lorg/w3c/dom/Element;Ljava/awt/geom/Point2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/RadialGradientPaint;->getRadius()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-interface {v0, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->addMgpAttributes(Lorg/w3c/dom/Element;Lorg/apache/batik/svggen/SVGGeneratorContext;Ljava/awt/MultipleGradientPaint;)V

    new-instance p0, Lorg/apache/batik/svggen/SVGPaintDescriptor;

    const-string p1, "url(#"

    const-string p2, ")"

    invoke-static {p1, v1, p2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/batik/svggen/SVGPaintDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    return-object p0
.end method

.method private static varargs setAttribute(Lorg/apache/batik/svggen/SVGGeneratorContext;Lorg/w3c/dom/Element;[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v3, p2, v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/batik/svggen/SVGGeneratorContext;->doubleString(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {p1, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static setPoint(Lorg/w3c/dom/Element;Ljava/awt/geom/Point2D;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSvgGraphics2D()Lorg/apache/batik/svggen/SVGGraphics2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->svgGraphics2D:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/batik/svggen/SVGGraphics2D;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public handlePaint(Ljava/awt/Paint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;
    .locals 1

    instance-of v0, p1, Ljava/awt/LinearGradientPaint;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/LinearGradientPaint;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getLgpDescriptor(Ljava/awt/LinearGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/awt/RadialGradientPaint;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/awt/RadialGradientPaint;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getRgpDescriptor(Ljava/awt/RadialGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/sl/draw/PathGradientPaint;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/sl/draw/PathGradientPaint;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getPathDescriptor(Lorg/apache/poi/sl/draw/PathGradientPaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->getDtpDescriptor(Lorg/apache/poi/sl/draw/DrawTexturePaint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/batik/svggen/DefaultExtensionHandler;->handlePaint(Ljava/awt/Paint;Lorg/apache/batik/svggen/SVGGeneratorContext;)Lorg/apache/batik/svggen/SVGPaintDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public setSvgGraphics2D(Lorg/apache/batik/svggen/SVGGraphics2D;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/SVGRenderExtension;->svgGraphics2D:Ljava/lang/ref/WeakReference;

    return-void
.end method
