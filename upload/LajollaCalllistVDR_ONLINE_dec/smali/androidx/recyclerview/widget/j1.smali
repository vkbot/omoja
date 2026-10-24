.class public final Landroidx/recyclerview/widget/j1;
.super Lg0/b;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/k1;

.field public final e:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k1;)V
    .locals 1

    invoke-direct {p0}, Lg0/b;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    iput-object p1, p0, Landroidx/recyclerview/widget/j1;->d:Landroidx/recyclerview/widget/k1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lg0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;)Landroidx/appcompat/app/f0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg0/b;->b(Landroid/view/View;)Landroidx/appcompat/app/f0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lg0/b;->b(Landroid/view/View;)Landroidx/appcompat/app/f0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lg0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public final d(Landroid/view/View;Lh0/c;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->d:Landroidx/recyclerview/widget/k1;

    iget-object v1, v0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p2, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Lg0/b;->a:Landroid/view/View$AccessibilityDelegate;

    if-nez v1, :cond_3

    iget-object v0, v0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/s0;->V(Landroid/view/View;Lh0/c;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lg0/b;->d(Landroid/view/View;Lh0/c;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_2
    return-void
.end method

.method public final e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lg0/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lg0/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lg0/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->d:Landroidx/recyclerview/widget/k1;

    iget-object v1, v0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_4

    iget-object v0, v0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3}, Lg0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v4

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lg0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v4

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/z0;

    return v3

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lg0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final h(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/b;->h(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lg0/b;->h(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public final i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg0/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lg0/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
