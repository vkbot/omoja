.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/b;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lu/b;-><init>(I)V

    .line 4
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/View;Landroid/view/View;)Z
.end method

.method public final d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    check-cast p3, Lp1/a;

    move-object p1, p3

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lf0/a;

    iget-boolean p1, p1, Lf0/a;->a:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-eqz v3, :cond_1

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->s(Landroid/view/View;Landroid/view/View;ZZ)V

    return v2

    :cond_4
    return v1
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    sget-object p3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_6

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, p2, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->b(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lp1/a;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    move-object p1, v2

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Lf0/a;

    iget-boolean p1, p1, Lf0/a;->a:Z

    const/4 p3, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-eqz v3, :cond_3

    if-ne v3, p3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-ne v3, v1, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    move p3, v1

    :cond_5
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Ld2/a;

    invoke-direct {v1, p0, p2, p3, v2}, Ld2/a;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILp1/a;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    return v0
.end method

.method public abstract s(Landroid/view/View;Landroid/view/View;ZZ)V
.end method
