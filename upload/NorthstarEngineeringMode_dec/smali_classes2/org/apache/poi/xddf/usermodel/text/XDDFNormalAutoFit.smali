.class public Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFAutoFit;


# instance fields
.field private autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    return-void
.end method


# virtual methods
.method public getFontScale()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->isSetFontScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->xgetFontScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercentOrPercentString;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x186a0

    return p0
.end method

.method public getLineSpaceReduction()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->isSetLnSpcReduction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->xgetLnSpcReduction()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercentOrPercentString;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    return-object p0
.end method

.method public setFontScale(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->isSetFontScale()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->unsetFontScale()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->setFontScale(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLineSpaceReduction(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->isSetLnSpcReduction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->unsetLnSpcReduction()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFNormalAutoFit;->autofit:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->setLnSpcReduction(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
