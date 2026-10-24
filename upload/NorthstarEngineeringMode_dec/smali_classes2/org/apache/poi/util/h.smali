.class public final synthetic Lorg/apache/poi/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/h;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/util/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getIntValue()I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getIntValue()I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/util/BitField;

    invoke-virtual {p1}, Lorg/apache/poi/util/BitField;->getMask()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
