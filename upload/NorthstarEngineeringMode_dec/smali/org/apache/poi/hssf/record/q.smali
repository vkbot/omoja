.class public final synthetic Lorg/apache/poi/hssf/record/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/CFRule12Record;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/q;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/q;->b:Lorg/apache/poi/hssf/record/CFRule12Record;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/q;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/q;->b:Lorg/apache/poi/hssf/record/CFRule12Record;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->e(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

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
