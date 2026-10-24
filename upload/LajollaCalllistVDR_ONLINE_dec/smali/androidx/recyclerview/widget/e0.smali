.class public final Landroidx/recyclerview/widget/e0;
.super Landroidx/recyclerview/widget/b0;
.source "SourceFile"


# instance fields
.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/e0;->q:I

    iput-object p1, p0, Landroidx/recyclerview/widget/e0;->r:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/e0;->q:I

    const/high16 v1, 0x42c80000    # 100.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1

    :goto_1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/e0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->c(I)I

    move-result p1

    return p1

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->c(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/View;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/d1;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/e0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b0;->f(Landroid/view/View;Landroidx/recyclerview/widget/f1;Landroidx/recyclerview/widget/d1;)V

    return-void

    :pswitch_0
    iget-object p2, p0, Landroidx/recyclerview/widget/e0;->r:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/f0;

    iget-object v0, p2, Landroidx/recyclerview/widget/f0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/f0;->b(Landroidx/recyclerview/widget/s0;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e0;->c(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->j:Landroid/view/animation/DecelerateInterpolator;

    iput p2, p3, Landroidx/recyclerview/widget/d1;->a:I

    iput p1, p3, Landroidx/recyclerview/widget/d1;->b:I

    iput v1, p3, Landroidx/recyclerview/widget/d1;->c:I

    iput-object v2, p3, Landroidx/recyclerview/widget/d1;->e:Landroid/view/animation/Interpolator;

    iput-boolean v0, p3, Landroidx/recyclerview/widget/d1;->f:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
