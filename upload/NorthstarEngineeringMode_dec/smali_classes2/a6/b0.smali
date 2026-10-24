.class public final synthetic La6/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La6/b0;->a:I

    iput-object p1, p0, La6/b0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, La6/b0;->a:I

    iget-object p0, p0, La6/b0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setBarChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setScatterChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;)V

    return-void

    :pswitch_1
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerAx;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setSerAxArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerAx;)V

    return-void

    :pswitch_2
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setBubbleChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleChart;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setPieChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setLine3DChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->setArea3DChartArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
