.class public final synthetic Lf5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf5/e;->a:I

    iput-object p2, p0, Lf5/e;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf5/e;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDLblsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDLblsImpl;->setDLblArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf5/e;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->setTrendlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lf5/e;->a:I

    iget-object v1, p0, Lf5/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableStyleListImpl;->setTblStyleArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableGridImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableGridImpl;->setGridColArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->setPathArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTLineStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTLineStyleListImpl;->setLnArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-void

    :pswitch_3
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGeomGuideListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGeomGuideListImpl;->setGdArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDashStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDashStopListImpl;->setDsArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_7
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->setErrBarsArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_9
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_a
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_b
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;->setSerLinesArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Lf5/e;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V

    return-void

    :pswitch_e
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLegendImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLegendImpl;->setLegendEntryArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Lf5/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_10
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->setErrBarsArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-void

    :pswitch_11
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_12
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_13
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;)V

    return-void

    :pswitch_14
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->setErrBarsArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-void

    :pswitch_15
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;)V

    return-void

    :pswitch_16
    check-cast v1, [Li5/g0;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->M0([Li5/g0;Lorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_17
    check-cast v1, [B

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->W1([BLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_18
    check-cast v1, [D

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->U1([DLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_19
    check-cast v1, [Z

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->a2([ZLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1a
    check-cast v1, [J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->Q1([JLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1b
    check-cast v1, [I

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->T1([ILorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1c
    check-cast v1, Ljava/util/Map;

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/String;

    const-string p0, "^(?i)log4j.*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[._-]"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\P{InBasic_Latin}"

    const-string v0, "."

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "^log4j2"

    const-string v0, "log4j"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
