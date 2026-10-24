.class public Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    return-void
.end method


# virtual methods
.method public getFlipMode()Lorg/apache/poi/xddf/usermodel/TileFlipMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetFlip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/TileFlipMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)Lorg/apache/poi/xddf/usermodel/TileFlipMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSx()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSy()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTx()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTy()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->xgetTy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    return-object p0
.end method

.method public setAlignment(Lorg/apache/poi/xddf/usermodel/RectangleAlignment;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetAlgn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlipMode(Lorg/apache/poi/xddf/usermodel/TileFlipMode;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetFlip()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetFlip()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/TileFlipMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSx(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSx()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetSx()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setSx(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSy(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetSy()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetSy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setSy(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTx(Ljava/lang/Long;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTx()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetTx()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setTx(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTy(Ljava/lang/Long;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->isSetTy()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->unsetTy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFTileInfoProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->setTy(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
