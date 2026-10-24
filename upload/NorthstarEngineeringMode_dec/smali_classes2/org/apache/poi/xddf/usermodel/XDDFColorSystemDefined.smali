.class public Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/SystemColor;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->setValue(Lorg/apache/poi/xddf/usermodel/SystemColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    return-void
.end method


# virtual methods
.method public getLastColor()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->isSetLastClr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lorg/apache/poi/xddf/usermodel/SystemColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/SystemColor;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    return-object p0
.end method

.method public setLastColor([B)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->isSetLastClr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->unsetLastClr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->setLastClr([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Lorg/apache/poi/xddf/usermodel/SystemColor;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSystemDefined;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/SystemColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    return-void
.end method
