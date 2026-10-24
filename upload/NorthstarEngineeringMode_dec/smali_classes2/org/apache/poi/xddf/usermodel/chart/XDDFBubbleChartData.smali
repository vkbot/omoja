.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;
    }
.end annotation


# instance fields
.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;",
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

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    .line 8
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->getSerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    .line 9
    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->getXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->getYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p2, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->defineAxes(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    .line 2
    invoke-virtual {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-virtual {p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3, p4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->getSerList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    .line 5
    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;

    invoke-interface {p4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->getXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->getYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p4, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->defineAxes(Ljava/util/Map;Ljava/util/Map;)V

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

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->sizeOfAxIdArray()I

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->getAxIdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->addNewXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->addNewYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;

    invoke-direct {v0, p0, v2, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public removeCTSeries(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->removeSer(I)V

    return-void
.end method

.method public setVaryColors(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->isSetVaryColors()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->unsetVaryColors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->isSetVaryColors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFBubbleChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
