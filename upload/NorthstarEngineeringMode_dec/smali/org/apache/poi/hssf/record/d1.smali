.class public final synthetic Lorg/apache/poi/hssf/record/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/FeatRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/d1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/d1;->b:Lorg/apache/poi/hssf/record/FeatRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/d1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/d1;->b:Lorg/apache/poi/hssf/record/FeatRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->getSharedFeature()Lorg/apache/poi/hssf/record/common/SharedFeature;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->getCbFeatData()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->getIsf_sharedFeatureType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
