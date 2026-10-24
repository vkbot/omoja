.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(La3/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/m;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, La3/m;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->deleted:Ljava/lang/Boolean;

    :cond_0
    invoke-interface {p1}, La3/m;->getCellArray()[La3/a;

    move-result-object p0

    array-length p1, p0

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 15

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v7, v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getB()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v9, v4, v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v11, v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getY()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v13, v0, v2

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->getDel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    return-void
.end method
