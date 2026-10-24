.class public Lorg/apache/poi/xdgf/usermodel/XDGFShape;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# instance fields
.field _angle:Ljava/lang/Double;

.field _beginX:Ljava/lang/Double;

.field _beginY:Ljava/lang/Double;

.field _endX:Ljava/lang/Double;

.field _endY:Ljava/lang/Double;

.field _flipX:Ljava/lang/Boolean;

.field _flipY:Ljava/lang/Boolean;

.field _height:Ljava/lang/Double;

.field _locPinX:Ljava/lang/Double;

.field _locPinY:Ljava/lang/Double;

.field _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

.field _masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field _parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

.field _pinX:Ljava/lang/Double;

.field _pinY:Ljava/lang/Double;

.field _rotationXAngle:Ljava/lang/Double;

.field _rotationYAngle:Ljava/lang/Double;

.field _rotationZAngle:Ljava/lang/Double;

.field _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field _text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

.field _txtAngle:Ljava/lang/Double;

.field _txtHeight:Ljava/lang/Double;

.field _txtLocPinX:Ljava/lang/Double;

.field _txtLocPinY:Ljava/lang/Double;

.field _txtPinX:Ljava/lang/Double;

.field _txtPinY:Ljava/lang/Double;

.field _txtWidth:Ljava/lang/Double;

.field _width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(La3/o;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;La3/o;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFShape;La3/o;Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(La3/q;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    .line 3
    invoke-interface {p2}, La3/o;->getText()La3/s;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p3, Lorg/apache/poi/xdgf/usermodel/XDGFText;

    invoke-direct {p3, p1, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;-><init>(La3/s;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    .line 5
    :cond_0
    invoke-interface {p2}, La3/o;->m1()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->readProperties()V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    .line 8
    invoke-interface {p2}, La3/o;->getShapes()La3/p;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getAngle()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getBeginX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getBeginY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginY()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D$Double;
    .locals 10

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getBoundsAsPath()Ljava/awt/geom/Path2D$Double;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    new-instance v1, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v1}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-object v1
.end method

.method public getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndX()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getEndY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getEndY()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getFlipX()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getFlipY()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getFontColor()Ljava/awt/Color;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize()Ljava/lang/Double;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFontSize()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getFontSize()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    return-object p0
.end method

.method public getGeometrySections()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->combineGeometries(Ljava/util/SortedMap;Ljava/util/SortedMap;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Height not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getID()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    invoke-interface {p0}, La3/o;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLineCap()Ljava/lang/Integer;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineCap()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLinePattern()Ljava/lang/Integer;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLinePattern()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getLineWeight()Ljava/lang/Double;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getLineWeight()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getLocPinX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "LocPinX not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getLocPinY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "LocPinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    invoke-interface {p0}, La3/o;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object p0
.end method

.method public getParentTransform()Ljava/awt/geom/AffineTransform;
    .locals 12

    new-instance v7, Ljava/awt/geom/AffineTransform;

    invoke-direct {v7}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinX()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLocPinY()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipX()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getFlipY()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getAngle()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v0, v7

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7, v4, v5, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v7, v10, v11, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v7, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    :cond_2
    return-object v7
.end method

.method public getPath()Ljava/awt/geom/Path2D$Double;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPinX()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinX()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "PinX not set!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getPinY()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getPinY()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "PinY not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getShapeType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    invoke-interface {p0}, La3/o;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    return-object p0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineWeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLineCap()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Invalid line cap specified"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getLinePattern()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v6, 0xfe

    if-eq p0, v6, :cond_4

    const/4 v6, 0x4

    const/4 v7, 0x6

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Invalid line pattern value"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-array p0, v3, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v1

    :goto_1
    move-object v6, p0

    goto/16 :goto_2

    :pswitch_1
    new-array p0, v7, [F

    fill-array-data p0, :array_0

    goto :goto_1

    :pswitch_2
    new-array p0, v6, [F

    fill-array-data p0, :array_1

    goto :goto_1

    :pswitch_3
    new-array p0, v7, [F

    fill-array-data p0, :array_2

    goto :goto_1

    :pswitch_4
    new-array p0, v7, [F

    fill-array-data p0, :array_3

    goto :goto_1

    :pswitch_5
    new-array p0, v6, [F

    fill-array-data p0, :array_4

    goto :goto_1

    :pswitch_6
    new-array p0, v5, [F

    fill-array-data p0, :array_5

    goto :goto_1

    :pswitch_7
    new-array p0, v5, [F

    fill-array-data p0, :array_6

    goto :goto_1

    :pswitch_8
    new-array p0, v7, [F

    fill-array-data p0, :array_7

    goto :goto_1

    :pswitch_9
    new-array p0, v6, [F

    fill-array-data p0, :array_8

    goto :goto_1

    :pswitch_a
    new-array p0, v7, [F

    fill-array-data p0, :array_9

    goto :goto_1

    :pswitch_b
    const/4 p0, 0x5

    new-array p0, p0, [F

    fill-array-data p0, :array_a

    goto :goto_1

    :pswitch_c
    new-array p0, v6, [F

    fill-array-data p0, :array_b

    goto :goto_1

    :pswitch_d
    new-array p0, v5, [F

    fill-array-data p0, :array_c

    goto :goto_1

    :pswitch_e
    new-array p0, v5, [F

    fill-array-data p0, :array_d

    goto :goto_1

    :pswitch_f
    new-array p0, v6, [F

    fill-array-data p0, :array_e

    goto :goto_1

    :pswitch_10
    new-array p0, v6, [F

    fill-array-data p0, :array_f

    goto :goto_1

    :pswitch_11
    new-array p0, v7, [F

    fill-array-data p0, :array_10

    goto :goto_1

    :pswitch_12
    new-array p0, v7, [F

    fill-array-data p0, :array_11

    goto :goto_1

    :pswitch_13
    new-array p0, v6, [F

    fill-array-data p0, :array_12

    goto :goto_1

    :pswitch_14
    new-array p0, v5, [F

    fill-array-data p0, :array_13

    goto :goto_1

    :pswitch_15
    new-array p0, v5, [F

    fill-array-data p0, :array_14

    goto/16 :goto_1

    :pswitch_16
    const/4 p0, 0x0

    goto/16 :goto_1

    :goto_2
    if-eqz v6, :cond_3

    :goto_3
    array-length p0, v6

    if-ge v1, p0, :cond_3

    aget p0, v6, v1

    mul-float/2addr p0, v2

    aput p0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/awt/BasicStroke;

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v7}, Ljava/awt/BasicStroke;-><init>(FIIF[FF)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Unsupported line pattern value"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x41f00000    # 30.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_6
    .array-data 4
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_7
    .array-data 4
        0x40e00000    # 7.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_8
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40e00000    # 7.0f
        0x40000000    # 2.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_a
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_d
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data

    :array_e
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_f
    .array-data 4
        0x41700000    # 15.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
    .end array-data

    :array_11
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_12
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data

    :array_14
    .array-data 4
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public getSymbolName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getText()Lorg/apache/poi/xdgf/usermodel/XDGFText;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFText;->getTextContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTopmostParentShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTxtAngle()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtAngle()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTxtHeight()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTxtLocPinX()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtWidth()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTxtLocPinY()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTxtHeight()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTxtPinX()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTxtPinY()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getHeight()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTxtWidth()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    invoke-interface {p0}, La3/o;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getWidth()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Width not specified!"

    invoke-static {v0, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public getXmlObject()La3/o;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:La3/q;

    .line 2
    check-cast p0, La3/o;

    return-object p0
.end method

.method public bridge synthetic getXmlObject()La3/q;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    return-object p0
.end method

.method public hasGeometry()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometrySections()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasMaster()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMasterShape()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasParent()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasShapes()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_text:Lorg/apache/poi/xdgf/usermodel/XDGFText;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDeleted()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object v0

    invoke-interface {v0}, La3/o;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object p0

    invoke-interface {p0}, La3/o;->getDel()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShape1D()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getBeginX()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopmost()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parent:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readProperties()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "PinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "PinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_pinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Width"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_width:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Height"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_height:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "LocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_locPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "BeginX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "BeginY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_beginY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "EndX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "EndY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_endY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "Angle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_angle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationXAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationXAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationYAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationYAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "RotationZAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_rotationZAngle:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "FlipX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipX:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "FlipY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_flipY:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinX"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinX:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtLocPinY"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtLocPinY:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtWidth"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtWidth:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtHeight"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtHeight:Ljava/lang/Double;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_cells:Ljava/util/Map;

    const-string v1, "TxtAngle"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetDouble(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_txtAngle:Ljava/lang/Double;

    return-void
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getXmlObject()La3/o;

    move-result-object v0

    invoke-interface {v0}, La3/o;->a0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, La3/o;->s()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->getMasterById(J)Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->getTopLevelShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not retrieve master shape from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "refers to non-existant master "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, La3/o;->s()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-interface {v0}, La3/o;->i1()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v0}, La3/o;->Q0()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->getShapeById(J)Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "refers to non-existant master shape "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, La3/o;->Q0()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->error(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupSectionMasters()V

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    if-nez v2, :cond_7

    move-object v2, p2

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->setupMaster(Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public setupSectionMasters()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getSection(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_geometry:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_masterShape:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getGeometryByIdx(J)Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    :try_end_0
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    instance-of v0, v0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    const-string v1, "\">"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_parentPage:Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": <Shape ID=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<Shape ID=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    .locals 3

    .line 8
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p0, v0, p2}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    add-int/lit8 v2, p2, 0x1

    .line 11
    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :catch_1
    :cond_1
    return-void
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/geom/AffineTransform;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getParentTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->visit(Lorg/apache/poi/xdgf/usermodel/XDGFShape;Ljava/awt/geom/AffineTransform;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->_shapes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    add-int/lit8 v2, p3, 0x1

    .line 6
    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisitingThisBranch; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLException;)Lorg/apache/poi/ooxml/POIXMLException;

    move-result-object p0

    throw p0

    :catch_1
    :cond_1
    return-void
.end method
