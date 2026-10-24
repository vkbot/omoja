.class public final synthetic Lorg/apache/poi/ddf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/common/usermodel/GenericRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ddf/d;->a:I

    iput-object p1, p0, Lorg/apache/poi/ddf/d;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/d;->a:I

    iget-object p0, p0, Lorg/apache/poi/ddf/d;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->getSeriesNumbers()[S

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesChartGroupIndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesChartGroupIndexRecord;->getChartGroupIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink2()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/chart/NumberFormatIndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/NumberFormatIndexRecord;->getFormatIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getWeight()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->b(Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->a(Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->d(Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->getAxisType()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->isStacked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getType()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillPattern()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isAppliesToBackground()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->a(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getData()[B

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->a(Lorg/apache/poi/ddf/EscherTextboxRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getColor2()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getLastMSOSPID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->a(Lorg/apache/poi/ddf/EscherComplexProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy1()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getUID()[B

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

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
