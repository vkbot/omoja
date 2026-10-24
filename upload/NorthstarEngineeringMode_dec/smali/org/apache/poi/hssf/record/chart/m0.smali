.class public final synthetic Lorg/apache/poi/hssf/record/chart/m0;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/chart/m0;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/m0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/m0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/m0;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->getEmpty()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;->a(Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->getFormatFlags()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getVerticalScale()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getLink1()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->c(Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->isVerticalBorder()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;->d(Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;->getNumAxis()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved2()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getFontIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
