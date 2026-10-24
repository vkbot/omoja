.class public final synthetic La6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La6/p;->a:I

    iput-object p1, p0, La6/p;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, La6/p;->a:I

    iget-object p0, p0, La6/p;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCustomPropertiesImpl;->sizeOfCustomPrArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCommentListImpl;->sizeOfCommentArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTColorScaleImpl;->sizeOfColorArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCfRuleImpl;->sizeOfFormulaArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCellStyleXfsImpl;->sizeOfXfArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTCacheFieldImpl;->sizeOfMpMapArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTAutoFilterImpl;->sizeOfFilterColumnArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideIdListImpl;->sizeOfSldIdArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTCustomerDataListImpl;->sizeOfCustDataArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTMRImpl;->sizeOfEArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTDImpl;->sizeOfEArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/impl/CTPropertiesImpl;->sizeOfPropertyArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;->sizeOfPicArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTDrawingImpl;->sizeOfTwoCellAnchorArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextTabStopListImpl;->sizeOfTabArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTextParagraphImpl;->sizeOfFldArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;->sizeOfTcArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;->sizeOfPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;->sizeOfFontArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;->sizeOfCxnArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->sizeOfAhPolarArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;->sizeOfPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->sizeOfDPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;->sizeOfDPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->sizeOfDPtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->sizeOfSerArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;

    invoke-virtual {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;->sizeOfExtArray()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

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
