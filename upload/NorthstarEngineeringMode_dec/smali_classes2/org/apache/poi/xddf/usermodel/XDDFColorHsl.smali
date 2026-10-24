.class public Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->setHue(I)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->setSaturation(I)V

    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->setLuminance(I)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    return-void
.end method


# virtual methods
.method public getHue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->getHue2()I

    move-result p0

    return p0
.end method

.method public getLuminance()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->xgetLum2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getSaturation()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->xgetSat2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    return-object p0
.end method

.method public setHue(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->setHue2(I)V

    return-void
.end method

.method public setLuminance(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->setLum2(Ljava/lang/Object;)V

    return-void
.end method

.method public setSaturation(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;->setSat2(Ljava/lang/Object;)V

    return-void
.end method
