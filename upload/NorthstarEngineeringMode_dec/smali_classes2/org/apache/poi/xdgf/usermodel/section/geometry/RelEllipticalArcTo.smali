.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

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
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

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

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v6, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v8, v4, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v10, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v12, v0, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object/from16 v18, p1

    invoke-static/range {v6 .. v18}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->getDel()Z

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

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    return-void
.end method
