.class public final Lr/a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lr/a;->a:I

    iput-object p1, p0, Lr/a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget p1, p0, Lr/a;->a:I

    iget-object v0, p0, Lr/a;->b:Landroid/view/View;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v6, v0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->h:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_1
    check-cast v0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->g:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :goto_0
    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget-object p1, v0, Lcom/google/android/material/chip/Chip;->f:Lt1/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lt1/d;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
