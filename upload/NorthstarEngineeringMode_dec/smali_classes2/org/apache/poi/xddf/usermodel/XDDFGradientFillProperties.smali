.class public Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    return-void
.end method


# virtual methods
.method public addGradientStop()Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->addNewGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->addNewGs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-object v0
.end method

.method public countGradientStops()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->sizeOfGsArray()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGradientStop(I)Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGradientStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->getGsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLinearShadeProperties()Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPathShadeProperties()Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetPath()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileFlipMode()Lorg/apache/poi/xddf/usermodel/TileFlipMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/TileFlipMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)Lorg/apache/poi/xddf/usermodel/TileFlipMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileRectangle()Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetTileRect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getTileRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    return-object p0
.end method

.method public insertGradientStop(I)Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->addNewGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->insertNewGs(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-object v0
.end method

.method public isRotatingWithShape()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetRotWithShape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getRotWithShape()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public removeGradientStop(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetGsLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;->removeGs(I)V

    :cond_0
    return-void
.end method

.method public setLinearShadeProperties(Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetLin()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->unsetLin()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLinearShadeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->setLin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPathShadeProperties(Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetPath()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->unsetPath()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPathShadeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->setPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRotatingWithShape(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetRotWithShape()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->unsetRotWithShape()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->setRotWithShape(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTileFlipMode(Lorg/apache/poi/xddf/usermodel/TileFlipMode;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetFlip()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->unsetFlip()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/TileFlipMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTileRectangle(Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->isSetTileRect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->unsetTileRect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->setTileRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    :cond_1
    :goto_0
    return-void
.end method
