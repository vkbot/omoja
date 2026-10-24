.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    return-void
.end method


# virtual methods
.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getManualLayout()Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetManualLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    return-object p0
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setManualLayout(Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetManualLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->unsetManualLayout()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->setManualLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
