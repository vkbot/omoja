.class public Lorg/apache/poi/sl/draw/DrawShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final shape:Lorg/apache/poi/sl/usermodel/Shape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-void
.end method

.method private flipHorizontal(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipHorizontal()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method

.method private flipVertical(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 6

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_0
    return-void
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    .line 28
    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Ljava/lang/Object;)Z

    move-result v2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    .line 3
    invoke-virtual {p0, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/awt/geom/AffineTransform;

    :goto_0
    if-nez v1, :cond_2

    .line 4
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 5
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide p0

    const-wide v3, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v3

    add-double/2addr p0, v3

    rem-double/2addr p0, v3

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x2d

    .line 6
    div-int/lit8 p0, p0, 0x5a

    rem-int/lit8 p0, p0, 0x4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    .line 7
    :cond_3
    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v9

    .line 9
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v11

    .line 10
    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    if-nez v2, :cond_4

    const/4 v4, 0x1

    move-object v3, p1

    move-wide v5, v9

    move-wide v7, v11

    .line 11
    invoke-virtual/range {v3 .. v8}, Ljava/awt/geom/AffineTransform;->quadrantRotate(IDD)V

    .line 12
    invoke-virtual {p1, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    :cond_4
    const/4 v4, 0x3

    move-object v3, p1

    move-wide v5, v9

    move-wide v7, v11

    .line 13
    invoke-virtual/range {v3 .. v8}, Ljava/awt/geom/AffineTransform;->quadrantRotate(IDD)V

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p1, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 15
    :cond_5
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->safeScale(DD)D

    move-result-wide p0

    .line 18
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    .line 19
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    .line 20
    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 21
    invoke-virtual {v8, v4, v5, v6, v7}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 22
    invoke-virtual {v8, p0, p1, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    neg-double p0, v4

    neg-double v2, v6

    .line 23
    invoke-virtual {v8, p0, p1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 24
    invoke-virtual {v8, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 25
    :cond_6
    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    .line 26
    :cond_7
    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 27
    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public static getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Ljava/awt/BasicStroke;
    .locals 8

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    :cond_0
    move v2, v0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    :cond_1
    iget-object v0, v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v3, v0

    new-array v3, v3, [F

    move v4, v1

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget v5, v0, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v5

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v6, v0

    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    :cond_4
    sget-object v0, Lorg/apache/poi/sl/draw/DrawShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    const/4 v4, 0x1

    new-instance p0, Ljava/awt/BasicStroke;

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object p0
.end method

.method public static isHSLF(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "hslf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->rotate(DDD)V

    :cond_0
    return-void
.end method

.method private static safeScale(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_1

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr p0, p2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    :goto_1
    return-wide p0
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->flipHorizontal(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->flipVertical(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->rotate(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->flipHorizontal(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawShape;->flipVertical(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    return-object p0
.end method
