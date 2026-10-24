.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/TextContainer;


# instance fields
.field private entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDelete()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndex()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetTxPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    return-object p0
.end method

.method public setDelete(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetDelete()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->unsetDelete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setTextBody(Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->isSetTxPr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->unsetTxPr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;->entry:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;->setTxPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    :cond_1
    :goto_0
    return-void
.end method
