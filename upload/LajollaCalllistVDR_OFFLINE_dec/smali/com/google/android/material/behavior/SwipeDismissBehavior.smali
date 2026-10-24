.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lu/b;"
    }
.end annotation


# instance fields
.field public a:Lk0/e;

.field public b:Z

.field public c:I

.field public final d:F

.field public e:F

.field public f:F

.field public final g:Lh1/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu/b;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    new-instance v0, Lh1/a;

    invoke-direct {v0, p0}, Lh1/a;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Lh1/a;

    return-void
.end method


# virtual methods
.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    :goto_0
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lk0/e;

    if-nez p2, :cond_2

    new-instance p2, Lk0/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Lh1/a;

    invoke-direct {p2, v0, p1, v1}, Lk0/e;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ly1/l;)V

    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lk0/e;

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lk0/e;

    invoke-virtual {p0, p3}, Lk0/e;->r(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 2

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lh0/z;->c(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lh0/z;->s(Landroid/view/View;I)V

    const/high16 p1, 0x100000

    invoke-static {p2, p1}, Lh0/q0;->h(Landroid/view/View;I)V

    invoke-static {p2, p3}, Lh0/q0;->e(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Li0/b;->l:Li0/b;

    new-instance v0, Landroidx/appcompat/view/menu/i;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, p1, v0}, Lh0/q0;->i(Landroid/view/View;Li0/b;Li0/o;)V

    :cond_0
    return p3
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lk0/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lk0/e;->k(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public s(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
