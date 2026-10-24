.class public abstract Lorg/apache/poi/xddf/usermodel/XDDFColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColor;->container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    return-void
.end method

.method public static forColorContainer(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetHslClr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorHsl;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetPrstClr()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSchemeClr()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetScrgbClr()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSysClr()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static from(III)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbPercent;-><init>(III)V

    return-object v0
.end method

.method public static from(Lorg/apache/poi/xddf/usermodel/PresetColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorPreset;-><init>(Lorg/apache/poi/xddf/usermodel/PresetColor;)V

    return-object v0
.end method

.method public static from(Lorg/apache/poi/xddf/usermodel/SchemeColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;-><init>(Lorg/apache/poi/xddf/usermodel/SchemeColor;)V

    return-object v0
.end method

.method public static from(Lorg/apache/poi/xddf/usermodel/SystemColor;)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;-><init>(Lorg/apache/poi/xddf/usermodel/SystemColor;)V

    return-object v0
.end method

.method public static from([B)Lorg/apache/poi/xddf/usermodel/XDDFColor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFColorRgbBinary;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getColorContainer()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColor;->container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    return-object p0
.end method

.method public abstract getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method
