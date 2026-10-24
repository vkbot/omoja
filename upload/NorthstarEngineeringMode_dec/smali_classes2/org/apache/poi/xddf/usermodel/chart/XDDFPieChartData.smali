.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData$Series;
    }
.end annotation


# instance fields
.field private chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getSerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData$Series;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    move-result-object v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v3

    invoke-direct {v1, p0, p2, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
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

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewCat()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewIdx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;->addNewOrder()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData$Series;

    invoke-direct {v0, p0, v2, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData$Series;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFirstSliceAngle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->getVal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeCTSeries(I)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->removeSer(I)V

    return-void
.end method

.method public setFirstSliceAngle(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->unsetFirstSliceAng()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v0, 0x168

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetFirstSliceAng()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->setVal(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->addNewFirstSliceAng()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTFirstSliceAng;->setVal(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value of angle must be between 0 and 360, both inclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVaryColors(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetVaryColors()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->unsetVaryColors()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->isSetVaryColors()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;->chart:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;->addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method
