.class public final synthetic Lw0/a;
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

    iput p1, p0, Lw0/a;->a:I

    iput-object p2, p0, Lw0/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw0/a;->a:I

    iget-object p0, p0, Lw0/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;->insertNewExt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;->insertNewGs(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;->getFontArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSupplementalFont;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;->insertNewEffectStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;->getCxnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;->getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceSer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterSer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;->getDPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarSer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;->getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;->getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;->insertNewPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->getDPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->insertNewAxId(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtension;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;->getSecondPiePtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;->insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBubbleSer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;->getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->insertNewAxId(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lm5/o0$a;

    check-cast p1, Lm5/o0$a;

    invoke-static {p1, p0}, Lm5/o0;->B(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/t;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/t;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/z;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/t;->a:Li5/m;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/xmlbeans/impl/schema/z;-><init>(Li5/m;Ljava/lang/String;Li5/d0;)V

    return-object v0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast p1, Li5/p0;

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->e(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->a(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->evaluateDuplicateValues(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/Class;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

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
