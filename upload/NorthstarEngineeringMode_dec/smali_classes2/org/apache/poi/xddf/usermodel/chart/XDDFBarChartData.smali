.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData$Series;
    }
.end annotation


# instance fields
.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/BarDirection;->BAR:Lorg/apache/poi/xddf/usermodel/chart/BarDirection;

    iget-object v0, v0, Lorg/apache/poi/xddf/usermodel/chart/BarDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;)V

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getSerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData$Series;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p2, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->defineAxes(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private defineAxes(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->sizeOfAxIdArray()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getAxIdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->defineAxes([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addSeries(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->parent:Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->incrementSeriesCount()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData$Series;

    invoke-direct {v0, p0, v2, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBarDirection()Lorg/apache/poi/xddf/usermodel/chart/BarDirection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/BarDirection;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;)Lorg/apache/poi/xddf/usermodel/chart/BarDirection;

    move-result-object p0

    return-object p0
.end method

.method public getBarGrouping()Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGrouping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;)Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGapWidth()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGapWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STGapAmount;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STGapAmount;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOverlap()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getOverlap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;->xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOverlap;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STOverlap;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public removeCTSeries(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->removeSer(I)V

    return-void
.end method

.method public setBarDirection(Lorg/apache/poi/xddf/usermodel/chart/BarDirection;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getBarDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/BarDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarDir;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarDir$Enum;)V

    return-void
.end method

.method public setBarGrouping(Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGrouping()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->unsetGrouping()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGrouping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/BarGrouping;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarGrouping;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STBarGrouping$Enum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setGapWidth(Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGapWidth()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->unsetGapWidth()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetGapWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;->setVal(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;->setVal(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOverlap(Ljava/lang/Byte;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetOverlap()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->unsetOverlap()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetOverlap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getOverlap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;->setVal(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewOverlap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOverlap;->setVal(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVaryColors(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetVaryColors()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->unsetVaryColors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->isSetVaryColors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
