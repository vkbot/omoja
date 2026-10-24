.class public final Lr/e;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/constraintlayout/utils/widget/MotionLabel;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/utils/widget/MotionLabel;I)V
    .locals 0

    iput p2, p0, Lr/e;->a:I

    iput-object p1, p0, Lr/e;->b:Landroidx/constraintlayout/utils/widget/MotionLabel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 13

    iget p1, p0, Lr/e;->a:I

    iget-object v0, p0, Lr/e;->b:Landroidx/constraintlayout/utils/widget/MotionLabel;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v12, v0, Landroidx/constraintlayout/utils/widget/MotionLabel;->h:F

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
