.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Series"
.end annotation


# instance fields
.field private series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

.field final synthetic this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->this$0:Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;

    .line 2
    invoke-static {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    return-void
.end method


# virtual methods
.method public getAxDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getCTPieSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

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

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getDPtList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExplosion()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetExplosion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumDS()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    return-object p0
.end method

.method public getSeriesText()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setExplosion(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetExplosion()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->unsetExplosion()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetExplosion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewExplosion()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIndex(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setOrder(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

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

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->isSetDLbls()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->isSetShowLeaderLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->getShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData$Series;->series:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->addNewShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :goto_0
    return-void
.end method
