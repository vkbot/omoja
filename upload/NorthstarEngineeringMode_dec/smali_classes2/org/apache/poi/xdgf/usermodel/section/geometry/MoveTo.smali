.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->deleted:Ljava/lang/Boolean;

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
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getDel()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getY()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    return-void
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getDel()Z

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

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoveTo: x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getX()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;->getY()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
