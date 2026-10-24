.class public final Ls/e;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/constraintlayout/utils/widget/MotionLabel;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/utils/widget/MotionLabel;I)V
    .locals 0

    iput p2, p0, Ls/e;->a:I

    iput-object p1, p0, Ls/e;->b:Landroidx/constraintlayout/utils/widget/MotionLabel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 12

    iget p1, p0, Ls/e;->a:I

    iget-object p0, p0, Ls/e;->b:Landroidx/constraintlayout/utils/widget/MotionLabel;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float v5, p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v11, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    move-object v6, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
