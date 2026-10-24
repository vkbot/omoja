.class public final synthetic La6/y;
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

    iput p2, p0, La6/y;->a:I

    iput-object p1, p0, La6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, La6/y;->a:I

    iget-object p0, p0, La6/y;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getBarChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewValAx(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getScatterChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewDateAx(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getSerAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerAx;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewSurface3DChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getBubbleChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewDoughnutChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getPieChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewOfPieChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getLine3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewCatAx(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->getArea3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->insertNewLineChart(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
