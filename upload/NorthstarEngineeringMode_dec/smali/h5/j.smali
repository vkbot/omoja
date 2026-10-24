.class public final synthetic Lh5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/cf/FontFormatting;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh5/j;->a:I

    iput-object p1, p0, Lh5/j;->b:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh5/j;->a:I

    iget-object p0, p0, Lh5/j;->b:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontColorIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getEscapementType()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontWeightModified()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
