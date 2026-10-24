.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/facets/b;
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

    iput p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->a:I

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->setTrendlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->b:Ljava/lang/Object;

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->setTrendlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->a:I

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMImpl;->setMrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTMR;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;->setOneCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;->setRArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextBodyImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextBodyImpl;->setPArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    return-void

    :pswitch_3
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableImpl;->setTrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;->setExtArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;)V

    return-void

    :pswitch_5
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;->setGsArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-void

    :pswitch_6
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;->setEffectStyleArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;)V

    return-void

    :pswitch_7
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->setAhXYArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    return-void

    :pswitch_8
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;)V

    return-void

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;)V

    return-void

    :pswitch_b
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarSer;)V

    return-void

    :pswitch_c
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V

    return-void

    :pswitch_d
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;->setPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;)V

    return-void

    :pswitch_e
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_f
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_10
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V

    return-void

    :pswitch_11
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_12
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_14
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarSer;)V

    return-void

    :pswitch_15
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->setDPtArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;)V

    return-void

    :pswitch_16
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V

    return-void

    :pswitch_17
    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;)V

    return-void

    :pswitch_18
    check-cast v1, [S

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->S1([SLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_19
    check-cast v1, [J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->Y1([JLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1a
    check-cast v1, [Z

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Lorg/apache/xmlbeans/impl/values/p0;->P1([ZLorg/apache/xmlbeans/impl/values/h2;Ljava/lang/Integer;)V

    return-void

    :pswitch_1b
    check-cast v1, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->a(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
