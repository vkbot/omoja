.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->deleted:Ljava/lang/Boolean;

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
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getDel()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "InfiniteLine elements cannot be part of a path"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getDel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 13

    new-instance v0, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Path2D$Double;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getY()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getA()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getB()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double p0, v1, v5

    const-wide v9, -0x3f07960000000000L    # -100000.0

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    if-nez p0, :cond_0

    invoke-virtual {v0, v1, v2, v9, v10}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v0, v1, v2, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_0

    :cond_0
    cmpl-double p0, v3, v7

    if-nez p0, :cond_1

    invoke-virtual {v0, v9, v10, v3, v4}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v0, v11, v12, v3, v4}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    goto :goto_0

    :cond_1
    sub-double/2addr v7, v3

    sub-double/2addr v5, v1

    div-double/2addr v7, v5

    mul-double/2addr v1, v7

    sub-double/2addr v3, v1

    mul-double v1, v7, v11

    add-double/2addr v1, v3

    invoke-virtual {v0, v11, v12, v1, v2}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    sub-double v1, v11, v3

    div-double/2addr v1, v7

    invoke-virtual {v0, v11, v12, v1, v2}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    :goto_0
    return-object v0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    return-void
.end method
