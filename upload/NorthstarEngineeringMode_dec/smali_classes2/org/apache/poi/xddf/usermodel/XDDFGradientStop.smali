.class public Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    return-void
.end method


# virtual methods
.method public getColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetHslClr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetPrstClr()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetScrgbClr()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSysClr()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->xgetPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedPercentage;)I

    move-result p0

    return p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    return-object p0
.end method

.method public setColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetHslClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetHslClr()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetPrstClr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetPrstClr()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetSchemeClr()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetScrgbClr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetScrgbClr()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetSrgbClr()V

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->isSetSysClr()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->unsetSysClr()V

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;->stop:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;->setPos(Ljava/lang/Object;)V

    return-void
.end method
