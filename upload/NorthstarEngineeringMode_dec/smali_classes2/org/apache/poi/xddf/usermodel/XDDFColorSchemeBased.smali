.class public Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;
.super Lorg/apache/poi/xddf/usermodel/XDDFColor;
.source "SourceFile"


# instance fields
.field private color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/SchemeColor;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;->setValue(Lorg/apache/poi/xddf/usermodel/SchemeColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/poi/xddf/usermodel/XDDFColor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    return-void
.end method


# virtual methods
.method public getValue()Lorg/apache/poi/xddf/usermodel/SchemeColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/SchemeColor;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    return-object p0
.end method

.method public setValue(Lorg/apache/poi/xddf/usermodel/SchemeColor;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFColorSchemeBased;->color:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/SchemeColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    return-void
.end method
