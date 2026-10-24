.class public final synthetic La6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La6/w;->a:I

    iput-object p1, p0, La6/w;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, La6/w;->a:I

    iget-object p0, p0, La6/w;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfPie3DChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfAreaChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfStockChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfRadarChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfBar3DChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPlotAreaImpl;->sizeOfSurfaceChartArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
