.class public final synthetic Lorg/apache/poi/hssf/record/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/CFRuleBase;


# direct methods
.method public synthetic constructor <init>(ILorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/s;->a:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/s;->b:Lorg/apache/poi/hssf/record/CFRuleBase;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/s;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/s;->b:Lorg/apache/poi/hssf/record/CFRuleBase;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
