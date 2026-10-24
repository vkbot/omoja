.class public Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetBgClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->getBgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->forColorContainer(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundColor()Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetFgClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->getFgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->forColorContainer(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresetPattern()Lorg/apache/poi/xddf/usermodel/PresetPattern;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetPrst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PresetPattern;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;)Lorg/apache/poi/xddf/usermodel/PresetPattern;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    return-object p0
.end method

.method public setBackgroundColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetBgClr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->unsetBgClr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getColorContainer()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->setBgClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setForegroundColor(Lorg/apache/poi/xddf/usermodel/XDDFColor;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetFgClr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->unsetFgClr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFColor;->getColorContainer()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->setFgClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresetPattern(Lorg/apache/poi/xddf/usermodel/PresetPattern;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->isSetPrst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->unsetPrst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PresetPattern;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
