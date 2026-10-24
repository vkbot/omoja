.class public final synthetic La6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La6/u;->a:I

    iput-object p1, p0, La6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, La6/u;->a:I

    iget-object p0, p0, La6/u;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewPie3DChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getDateAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewAreaChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getSurface3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewStockChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStockChart;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getDoughnutChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewRadarChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getOfPieChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewBar3DChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getCatAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewSurfaceChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getLineChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
