.class public Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    .line 2
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    .line 4
    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetAction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getAction()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEndSound()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetEndSnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getEndSnd()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighlightClick()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetHighlightClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getHighlightClick()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHistory()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getHistory()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInvalidURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetInvalidUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getInvalidUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetFrame()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetTgtFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getTgtFrame()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTooltip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetTooltip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    return-object p0
.end method

.method public setEndSound(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetEndSnd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetEndSnd()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setEndSnd(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHighlightClick(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetHighlightClick()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetHighlightClick()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setHighlightClick(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHistory(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetHistory()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetHistory()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setHistory(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInvalidURL(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetInvalidUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetInvalidUrl()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setInvalidUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTargetFrame(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetTgtFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetTgtFrame()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setTgtFrame(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTooltip(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->isSetTooltip()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->unsetTooltip()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFHyperlink;->link:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
