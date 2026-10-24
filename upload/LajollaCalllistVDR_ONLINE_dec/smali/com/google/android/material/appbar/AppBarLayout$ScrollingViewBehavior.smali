.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Ln1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln1/h;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ln1/h;-><init>(I)V

    .line 3
    sget-object v1, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 7
    iput p2, p0, Ln1/h;->f:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static v(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p1, p2, Lcom/google/android/material/appbar/AppBarLayout;

    return p1
.end method

.method public final d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lt/d;

    iget-object p1, p1, Lt/d;->a:Lt/b;

    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    add-int/2addr v0, p1

    iget p1, p0, Ln1/h;->e:I

    add-int/2addr v0, p1

    invoke-virtual {p0, p3}, Ln1/h;->u(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout;->m:Z

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Z)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 1

    instance-of p2, p2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_0

    sget-object p2, Lh0/b;->h:Lh0/b;

    invoke-virtual {p2}, Lh0/b;->a()I

    move-result p2

    invoke-static {p1, p2}, Lg0/s0;->j(Landroid/view/View;I)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lg0/s0;->g(Landroid/view/View;I)V

    sget-object v0, Lh0/b;->i:Lh0/b;

    invoke-virtual {v0}, Lh0/b;->a()I

    move-result v0

    invoke-static {p1, v0}, Lg0/s0;->j(Landroid/view/View;I)V

    invoke-static {p1, p2}, Lg0/s0;->g(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->v(Ljava/util/ArrayList;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Ln1/h;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->c(ZZZ)V

    return p1

    :cond_0
    return v1
.end method
