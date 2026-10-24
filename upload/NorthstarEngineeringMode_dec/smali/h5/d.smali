.class public final synthetic Lh5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh5/d;->a:I

    iput-object p1, p0, Lh5/d;->b:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh5/d;->a:I

    iget-object p0, p0, Lh5/d;->b:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isClampToCurve()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
