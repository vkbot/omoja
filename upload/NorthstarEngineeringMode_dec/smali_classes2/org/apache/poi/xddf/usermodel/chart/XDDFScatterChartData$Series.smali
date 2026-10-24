.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Series"
.end annotation


# instance fields
.field private series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

.field final synthetic this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;

    .line 2
    invoke-static {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    return-void
.end method

.method private getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetMarker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addNewErrorBars()Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewErrBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-object v0
.end method

.method public getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getCTScatterSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    return-object p0
.end method

.method public getDPtList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getDPtList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getErrorBars(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getErrBarsArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-object v0
.end method

.method public getErrorBarsCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->sizeOfErrBarsArray()I

    move-result p0

    return p0
.end method

.method public getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertNewErrorBars(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->insertNewErrBars(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-object v0
.end method

.method public isSmooth()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSmooth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public removeErrorBars(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->removeErrBars(I)V

    return-void
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setMarkerSize(S)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x48

    if-lt v0, p1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->isSetSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;->setVal(S)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerSize;->setVal(S)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive: 2; Maximum inclusive: 72"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMarkerStyle(Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->isSetSymbol()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->getSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarker;->addNewSymbol()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTMarkerStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;)V

    :goto_0
    return-void
.end method

.method public setOrder(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowLeaderLines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetDLbls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetShowLeaderLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->addNewShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method

.method public setSmooth(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSmooth()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->unsetSmooth()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->isSetSmooth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
