.class public final Lm0/e;
.super Lm0/g;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lm0/e;->b:I

    invoke-direct {p0, p1}, Lm0/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lm0/e;->b:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    :sswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    :sswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    :sswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    :sswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    :sswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lm0/e;->e(Landroid/view/View;)F

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic d(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lm0/e;->b:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    :sswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    :sswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    :sswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    :sswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    :sswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lm0/e;->f(Landroid/view/View;F)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Landroid/view/View;)F
    .locals 0

    iget p0, p0, Lm0/e;->b:I

    sparse-switch p0, :sswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Landroid/view/View;F)V
    .locals 0

    iget p0, p0, Lm0/e;->b:I

    sparse-switch p0, :sswitch_data_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    :sswitch_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    :sswitch_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    :sswitch_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :sswitch_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    :sswitch_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
