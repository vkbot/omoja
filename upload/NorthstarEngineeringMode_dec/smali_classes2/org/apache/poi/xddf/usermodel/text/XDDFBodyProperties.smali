.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    return-void
.end method


# virtual methods
.method public getAnchoring()Lorg/apache/poi/xddf/usermodel/text/AnchorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutoFit()Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFNoAutoFit;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFNoAutoFit;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V

    return-object v0

    :cond_2
    new-instance p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;-><init>()V

    return-object p0
.end method

.method public getBottomInset()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetBIns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->xgetBIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftInset()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetLIns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->xgetLIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRightInset()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRIns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->xgetRIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopInset()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetTIns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->xgetTIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    return-object p0
.end method

.method public hasParagraphSpacing()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpcFirstLastPara()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getSpcFirstLastPara()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnchorCentered()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchorCtr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchorCtr()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isRightToLeft()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRtlCol()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getRtlCol()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAnchorCentered(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchorCtr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchorCtr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchorCtr(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnchoring(Lorg/apache/poi/xddf/usermodel/text/AnchorType;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchor()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoFit(Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNoAutofit()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNormAutofit()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpAutoFit()V

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFNoAutoFit;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFNoAutoFit;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFNoAutoFit;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setNoAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setNormAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFShapeAutoFit;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setSpAutoFit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBottomInset(Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setBIns(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetBIns()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetBIns()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLeftInset(Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setLIns(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetLIns()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetLIns()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setParagraphSpacing(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpcFirstLastPara()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpcFirstLastPara()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setSpcFirstLastPara(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRightInset(Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRIns(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRIns()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetRIns()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRightToLeft(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRtlCol()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetRtlCol()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRtlCol(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTopInset(Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setTIns(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetTIns()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetTIns()V

    :cond_2
    :goto_1
    return-void
.end method
