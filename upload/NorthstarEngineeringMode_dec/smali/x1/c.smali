.class public final synthetic Lx1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx1/c;->a:I

    iput-object p2, p0, Lx1/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lx1/c;->a:I

    iget-object p0, p0, Lx1/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTTableRowImpl;->removeTc(I)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DCubicBezierToImpl;->removePt(I)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTFontCollectionImpl;->removeFont(I)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTConnectionSiteListImpl;->removeCxn(I)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->removeAhPolar(I)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurfaceChartImpl;->removeSer(I)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTStrDataImpl;->removePt(I)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->removeDPt(I)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarSerImpl;->removeDPt(I)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPieChartImpl;->removeSer(I)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTOfPieChartImpl;->removeSer(I)V

    return-void

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->removeDPt(I)V

    return-void

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->removeSer(I)V

    return-void

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTExtensionListImpl;->removeExt(I)V

    return-void

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTCustSplitImpl;->removeSecondPiePt(I)V

    return-void

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->removeTrendline(I)V

    return-void

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->removeDPt(I)V

    return-void

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->removeSerLines(I)V

    return-void

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBar3DChartImpl;->removeAxId(I)V

    return-void

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->removeTrendline(I)V

    return-void

    :pswitch_13
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->removeAxId(I)V

    return-void

    :pswitch_14
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, p1}, Lm5/o0;->T(Ljava/lang/String;Lm5/o0$a;)V

    return-void

    :pswitch_15
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/g;

    check-cast p1, Li5/o;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->a()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/g;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_16
    check-cast p0, Ljava/util/LinkedList;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_17
    check-cast p0, Le3/a;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->a(Le3/a;Ljava/lang/String;)V

    return-void

    :pswitch_18
    check-cast p0, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCRL([B)V

    return-void

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    return-void

    :pswitch_1a
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/a1;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->a(Lorg/apache/commons/compress/archivers/zip/a1;Lorg/apache/commons/compress/archivers/zip/o0;)V

    return-void

    :pswitch_1b
    check-cast p0, Landroid/hardware/radio/RadioManager$BandConfig;

    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1, p0}, Lcom/mega/engineeringmode/function/radio/a$b;->e(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void

    :pswitch_1c
    check-cast p0, Landroid/hardware/radio/RadioMetadata;

    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1, p0}, Lcom/mega/engineeringmode/function/radio/a$b;->b(Landroid/hardware/radio/RadioMetadata;)V

    return-void

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
