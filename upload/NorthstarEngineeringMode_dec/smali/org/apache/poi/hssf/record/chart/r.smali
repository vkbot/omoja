.class public final synthetic Lorg/apache/poi/hssf/record/chart/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/chart/r;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/r;->b:Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/r;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/r;->b:Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isReversed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getCrossingPoint()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
