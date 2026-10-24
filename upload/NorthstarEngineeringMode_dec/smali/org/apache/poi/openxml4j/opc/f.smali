.class public final synthetic Lorg/apache/poi/openxml4j/opc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/openxml4j/opc/f;->a:I

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/openxml4j/opc/f;->a:I

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableGridImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableGridImpl;->getGridColArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->getPathArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;->insertNewPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTLineStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTLineStyleListImpl;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGeomGuideListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGeomGuideListImpl;->getGdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;->insertNewFont(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDashStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDashStopListImpl;->getDsArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;->insertNewCxn(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->insertNewAhPolar(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;->getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;->insertNewPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;->getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;->insertNewDPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;->getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieSerImpl;->getDPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLegendImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLegendImpl;->getLegendEntryArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegendEntry;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;->insertNewExt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtension;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDLblsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDLblsImpl;->getDLblArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;->insertNewSecondPiePt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;->getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->insertNewDPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaSer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->insertNewAxId(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, p1}, Lm5/o0;->F(Ljava/lang/String;Lm5/o0$a;)Lm5/r0;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;->a(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;)Lorg/apache/poi/xslf/usermodel/XSLFFontInfo;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->a(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->a(Lorg/apache/poi/openxml4j/opc/ZipPackage;Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/poi/openxml4j/opc/ZipPackage$EntryTriple;

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
