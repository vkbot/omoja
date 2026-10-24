.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/services/f;
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

    iput p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->a:I

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->setTrendlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->setTrendlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtension;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;->setExtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtension;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;->setFontArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->a:I

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;->setTabArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;->setFldArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;->setTcArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;->setPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;->setCxnArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->setAhPolarArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;)V

    return-void

    :pswitch_7
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;->setPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_9
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_a
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V

    return-void

    :pswitch_b
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V

    return-void

    :pswitch_c
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_d
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V

    return-void

    :pswitch_e
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;->setSecondPiePtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_11
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_12
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->setSerLinesArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V

    return-void

    :pswitch_13
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_14
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_15
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_16
    check-cast v1, [D

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->V1([DLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_17
    check-cast v1, [S

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->Z1([SLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_18
    check-cast v1, [Li5/g0;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->X1([Li5/g0;Lorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_19
    check-cast v1, [B

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->b2([BLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1a
    check-cast v1, [I

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->R1([ILorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1b
    check-cast v1, Ljava/text/AttributedString;

    check-cast p1, Ljava/awt/font/TextAttribute;

    invoke-virtual {v1, p1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void

    :pswitch_1c
    check-cast v1, Ljava/net/HttpURLConnection;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

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
