.class public final Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/TextContainer;


# instance fields
.field private legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetLegend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->setDefaults()V

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->lambda$getEntries$0(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEntries$0(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)V

    return-object v0
.end method

.method private setDefaults()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    return-void
.end method


# virtual methods
.method public addEntry()Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewLegendEntry()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)V

    return-object v0
.end method

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

.method public getEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendEntryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEntry(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendEntryArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLegendEntry;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)V

    return-object v0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayout()Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrAddManualLayout()Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-object v0
.end method

.method public getPosition()Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLegendPos()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;->RIGHT:Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;

    return-object p0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetTxPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    return-object p0
.end method

.method public isOverlay()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    return p0
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayout(Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->unsetLayout()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLayout;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->setLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    return-void
.end method

.method public setPosition(Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetLegendPos()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->addNewLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->getLegendPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LegendPosition;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendPos;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLegendPos$Enum;)V

    return-void
.end method

.method public setShapeProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextBody(Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->isSetTxPr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->unsetTxPr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;->legend:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;->setTxPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    :cond_1
    :goto_0
    return-void
.end method
