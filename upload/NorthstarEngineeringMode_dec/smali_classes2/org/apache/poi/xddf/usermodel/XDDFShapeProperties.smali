.class public Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    return-void
.end method


# virtual methods
.method public getBlackWhiteMode()Lorg/apache/poi/xddf/usermodel/BlackWhiteMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetBwMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getBwMode()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/BlackWhiteMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;)Lorg/apache/poi/xddf/usermodel/BlackWhiteMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomGeometry2D()Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetCustGeom()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectContainer()Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectDag()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectList()Lorg/apache/poi/xddf/usermodel/XDDFEffectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFillProperties()Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGrpFill()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetBlipFill()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineProperties()Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresetGeometry2D()Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPrstGeom()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScene3D()Lorg/apache/poi/xddf/usermodel/XDDFScene3D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetScene3D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFScene3D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFScene3D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShape3D()Lorg/apache/poi/xddf/usermodel/XDDFShape3D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSp3D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShape3D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShape3D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransform2D()Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetXfrm()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    return-object p0
.end method

.method public setBlackWhiteMode(Lorg/apache/poi/xddf/usermodel/BlackWhiteMode;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetBwMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetBwMode()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/BlackWhiteMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setBwMode(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomGeometry2D(Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetCustGeom()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetCustGeom()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setCustGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEffectContainer(Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectDag()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetEffectDag()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEffectList(Lorg/apache/poi/xddf/usermodel/XDDFEffectList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetEffectLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetEffectLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetBlipFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetBlipFill()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetGradFill()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetGrpFill()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetGrpFill()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetNoFill()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPattFill()V

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetSolidFill()V

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGroupFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPictureFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public setLineProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetLn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setLn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresetGeometry2D(Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetPrstGeom()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetPrstGeom()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setPrstGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScene3D(Lorg/apache/poi/xddf/usermodel/XDDFScene3D;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetScene3D()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetScene3D()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFScene3D;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setScene3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShape3D(Lorg/apache/poi/xddf/usermodel/XDDFShape3D;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetSp3D()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetSp3D()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShape3D;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setSp3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTransform2D(Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetXfrm()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->unsetXfrm()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFTransform2D;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    :cond_1
    :goto_0
    return-void
.end method
