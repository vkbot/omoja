.class public Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/PresetLineDash;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->setValue(Lorg/apache/poi/xddf/usermodel/PresetLineDash;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    return-void
.end method


# virtual methods
.method public getValue()Lorg/apache/poi/xddf/usermodel/PresetLineDash;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    return-object p0
.end method

.method public setValue(Lorg/apache/poi/xddf/usermodel/PresetLineDash;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->isSetVal()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->unsetVal()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
