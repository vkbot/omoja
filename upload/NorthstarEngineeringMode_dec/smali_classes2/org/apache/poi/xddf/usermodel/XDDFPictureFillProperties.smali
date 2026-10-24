.class public Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    return-void
.end method


# virtual methods
.method public getDpi()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetDpi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getDpi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPicture()Lorg/apache/poi/xddf/usermodel/XDDFPicture;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetBlip()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPicture;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceRectangle()Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetSrcRect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStetchInfoProperties()Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetStretch()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileInfoProperties()Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetTile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getTile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    return-object p0
.end method

.method public isRotatingWithShape()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetRotWithShape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getRotWithShape()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDpi(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetDpi()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetDpi()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setDpi(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPicture(Lorg/apache/poi/xddf/usermodel/XDDFPicture;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetBlip()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPicture;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setBlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;)V

    :goto_0
    return-void
.end method

.method public setRotatingWithShape(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetRotWithShape()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetRotWithShape()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setRotWithShape(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSourceRectangle(Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetSrcRect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetSrcRect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFRelativeRectangle;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setSrcRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStretchInfoProperties(Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetStretch()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetStretch()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFStretchInfoProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setStretch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTileInfoProperties(Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->isSetTile()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->unsetTile()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->setTile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;)V

    :cond_1
    :goto_0
    return-void
.end method
