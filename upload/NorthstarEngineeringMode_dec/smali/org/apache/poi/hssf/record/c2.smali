.class public final synthetic Lorg/apache/poi/hssf/record/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/c2;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/c2;->b:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/c2;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/c2;->b:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->c(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->d(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
