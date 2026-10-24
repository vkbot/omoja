.class public Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/PresetColor;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->setValue(Lorg/apache/poi/xddf/usermodel/PresetColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    return-void
.end method


# virtual methods
.method public getValue()Lorg/apache/poi/xddf/usermodel/PresetColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PresetColor;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;)Lorg/apache/poi/xddf/usermodel/PresetColor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    return-object p0
.end method

.method public setValue(Lorg/apache/poi/xddf/usermodel/PresetColor;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    sget-object p1, Lorg/apache/poi/xddf/usermodel/PresetColor;->WHITE:Lorg/apache/poi/xddf/usermodel/PresetColor;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PresetColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PresetColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetColorVal$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
