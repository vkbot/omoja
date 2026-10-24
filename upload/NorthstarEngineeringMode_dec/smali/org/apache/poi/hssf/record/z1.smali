.class public final synthetic Lorg/apache/poi/hssf/record/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/LbsDataSubRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/z1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/z1;->b:Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/z1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/z1;->b:Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->a(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->f(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->i(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->c(Lorg/apache/poi/hssf/record/LbsDataSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
