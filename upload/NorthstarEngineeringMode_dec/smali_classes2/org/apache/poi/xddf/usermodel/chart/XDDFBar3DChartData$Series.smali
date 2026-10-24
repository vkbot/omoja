.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Series"
.end annotation


# instance fields
.field private series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

.field final synthetic this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;

    .line 2
    invoke-static {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    return-void
.end method


# virtual methods
.method public getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getCTBarSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

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

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getDPtList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getErrorBars()Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetErrBars()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getErrBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInvertIfNegative()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetInvertIfNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasErrorBars()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetErrBars()Z

    move-result p0

    return p0
.end method

.method public setErrorBars(Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetErrBars()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->unsetErrBars()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetErrBars()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getErrBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewErrBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setInvertIfNegative(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetInvertIfNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewInvertIfNegative()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method

.method public setOrder(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->isSetDLbls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetShowLeaderLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->addNewShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method
