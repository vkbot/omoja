.class public final synthetic Lorg/apache/poi/hssf/record/chart/l0;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/chart/l0;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/l0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/l0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/l0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;->getUnits()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->getIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getHorizontalScale()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getAnchorId()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->isAutoSize()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;->getFontIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getHeightBasis()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->a(Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->a(Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->c(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->b(Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->isDisplayAsPercentage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
