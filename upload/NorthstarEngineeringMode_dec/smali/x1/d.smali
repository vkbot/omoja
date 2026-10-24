.class public final synthetic Lx1/d;
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

    iput p1, p0, Lx1/d;->a:I

    iput-object p2, p0, Lx1/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lx1/d;->a:I

    iget-object p0, p0, Lx1/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTOfficeArtExtensionListImpl;->removeExt(I)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTGradientStopListImpl;->removeGs(I)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTEffectStyleListImpl;->removeEffectStyle(I)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTAdjustHandleListImpl;->removeAhXY(I)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTSurface3DChartImpl;->removeSer(I)V

    return-void

    :pswitch_4
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterSerImpl;->removeTrendline(I)V

    return-void

    :pswitch_5
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTScatterChartImpl;->removeSer(I)V

    return-void

    :pswitch_6
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTRadarChartImpl;->removeSer(I)V

    return-void

    :pswitch_7
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTPie3DChartImpl;->removeSer(I)V

    return-void

    :pswitch_8
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTNumDataImpl;->removePt(I)V

    return-void

    :pswitch_9
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->removeAxId(I)V

    return-void

    :pswitch_a
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLine3DChartImpl;->removeAxId(I)V

    return-void

    :pswitch_b
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTDoughnutChartImpl;->removeSer(I)V

    return-void

    :pswitch_c
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleSerImpl;->removeDPt(I)V

    return-void

    :pswitch_d
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBubbleChartImpl;->removeSer(I)V

    return-void

    :pswitch_e
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarSerImpl;->removeTrendline(I)V

    return-void

    :pswitch_f
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTBarChartImpl;->removeSer(I)V

    return-void

    :pswitch_10
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaSerImpl;->removeDPt(I)V

    return-void

    :pswitch_11
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTAreaChartImpl;->removeAxId(I)V

    return-void

    :pswitch_12
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTArea3DChartImpl;->removeSer(I)V

    return-void

    :pswitch_13
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, p1}, Lm5/o0;->S(Ljava/lang/String;Lm5/o0$a;)V

    return-void

    :pswitch_14
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/l0;

    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    return-void

    :pswitch_15
    check-cast p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_16
    check-cast p0, Lorg/apache/poi/ss/usermodel/RangeCopier;

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/RangeCopier;->a(Lorg/apache/poi/ss/usermodel/RangeCopier;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void

    :pswitch_17
    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    check-cast p1, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    return-void

    :pswitch_19
    check-cast p0, Ljava/util/Collection;

    check-cast p1, Le5/o;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1a
    check-cast p0, Lg5/n$a;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lg5/p$b;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lg5/n$a;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v3, Lg5/m;

    invoke-direct {v3, p0, p1, v1, v0}, Lg5/m;-><init>(Lg5/n$a;Ljava/lang/String;ZLjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1b
    check-cast p0, Landroid/util/Pair;

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/b$b;

    sget v0, Lcom/mega/engineeringmode/function/tbox/b$c;->b:I

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/mega/engineeringmode/function/tbox/b$b;->g(ILjava/lang/String;)V

    return-void

    :pswitch_1c
    check-cast p0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    check-cast p1, Lcom/mega/engineeringmode/function/radio/a$b;

    invoke-interface {p1, p0}, Lcom/mega/engineeringmode/function/radio/a$b;->d(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

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
