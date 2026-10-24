.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# static fields
.field private static final POLYLINE_FORMULA_PREFIX:Ljava/lang/String; = "POLYLINE("

.field private static final POLYLINE_FORMULA_SUFFIX:Ljava/lang/String; = ")"


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

.field a:Ljava/lang/String;

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

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

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
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POLYLINE("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    array-length v0, v1

    rem-int/2addr v0, v4

    if-nez v0, :cond_4

    array-length v0, v1

    if-le v0, v4, :cond_3

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_2
    :goto_1
    array-length p2, v1

    sub-int/2addr p2, v2

    if-ge v4, p2, :cond_3

    aget-object p2, v1, v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    add-int/lit8 p2, v4, 0x1

    aget-object p2, v1, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double/2addr v9, v7

    mul-double/2addr v11, v5

    invoke-virtual {p1, v9, v10, v11, v12}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getY()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-void

    :cond_4
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid POLYLINE formula -- need 2 + n*2 arguments, got "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Invalid POLYLINE formula (not enough arguments): "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Invalid POLYLINE formula: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->getDel()Z

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

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    return-void
.end method
