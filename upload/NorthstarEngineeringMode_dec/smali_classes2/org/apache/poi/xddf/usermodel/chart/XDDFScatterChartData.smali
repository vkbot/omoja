.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;
    }
.end annotation


# instance fields
.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;",
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

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->getSerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->getYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p2, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->defineAxes(Ljava/util/Map;Ljava/util/Map;)V

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

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->sizeOfAxIdArray()I

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->getAxIdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewXVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewYVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;

    invoke-direct {v0, p0, v2, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    sget-object p1, Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;->NONE:Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData$Series;->setMarkerStyle(Lorg/apache/poi/xddf/usermodel/chart/MarkerStyle;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getStyle()Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->getScatterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewScatterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;

    move-result-object v0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->LINE_MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    move-result-object p0

    return-object p0
.end method

.method public removeCTSeries(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->removeSer(I)V

    return-void
.end method

.method public setStyle(Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->getScatterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewScatterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;

    move-result-object v0

    :cond_0
    iget-object p0, p1, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterStyle;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    return-void
.end method

.method public setVaryColors(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->isSetVaryColors()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->unsetVaryColors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->isSetVaryColors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
