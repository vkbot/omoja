.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final q:Lcom/google/android/material/timepicker/e;

.field public r:I

.field public s:Ly1/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    new-instance v0, Ly1/h;

    invoke-direct {v0}, Ly1/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->s:Ly1/h;

    .line 5
    new-instance v1, Ly1/j;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Ly1/j;-><init>(F)V

    .line 6
    iget-object v2, v0, Ly1/h;->a:Ly1/g;

    .line 7
    iget-object v2, v2, Ly1/g;->a:Ly1/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v3, Ly1/m;

    invoke-direct {v3, v2}, Ly1/m;-><init>(Ly1/n;)V

    .line 9
    iput-object v1, v3, Ly1/m;->e:Ly1/c;

    .line 10
    iput-object v1, v3, Ly1/m;->f:Ly1/c;

    .line 11
    iput-object v1, v3, Ly1/m;->g:Ly1/c;

    .line 12
    iput-object v1, v3, Ly1/m;->h:Ly1/c;

    .line 13
    new-instance v1, Ly1/n;

    invoke-direct {v1, v3}, Ly1/n;-><init>(Ly1/m;)V

    .line 14
    invoke-virtual {v0, v1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->s:Ly1/h;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->s:Ly1/h;

    .line 17
    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p0, v0}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 19
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    sget p2, Lcom/google/android/material/R$styleable;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->r:I

    .line 22
    new-instance p2, Lcom/google/android/material/timepicker/e;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/e;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->q:Lcom/google/android/material/timepicker/e;

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lh0/a0;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->q:Lcom/google/android/material/timepicker/e;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->q()V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->q:Lcom/google/android/material/timepicker/e;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "skip"

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lt/n;

    invoke-direct {v3}, Lt/n;-><init>()V

    invoke-virtual {v3, p0}, Lt/n;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/google/android/material/R$id;->circle_center:I

    if-eq v7, v8, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/google/android/material/R$id;->circle_center:I

    iget v8, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->r:I

    invoke-virtual {v3, v6}, Lt/n;->h(I)Lt/i;

    move-result-object v6

    iget-object v6, v6, Lt/i;->e:Lt/j;

    iput v7, v6, Lt/j;->A:I

    iput v8, v6, Lt/j;->B:I

    iput v5, v6, Lt/j;->C:F

    sub-int v6, v0, v1

    int-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v7, v6

    add-float/2addr v7, v5

    move v5, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p0}, Lt/n;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->s:Ly1/h;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method
