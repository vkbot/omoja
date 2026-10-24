.class public Landroidx/recyclerview/widget/k1;
.super Lg0/b;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Landroidx/recyclerview/widget/j1;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lg0/b;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/k1;->e:Landroidx/recyclerview/widget/j1;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/k1;->e:Landroidx/recyclerview/widget/j1;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/j1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/j1;-><init>(Landroidx/recyclerview/widget/k1;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/k1;->e:Landroidx/recyclerview/widget/j1;

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg0/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/s0;->T(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public d(Landroid/view/View;Lh0/c;)V
    .locals 2

    iget-object v0, p2, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lg0/b;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    iget-object v0, p1, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/z0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {p1, v1, v0, p2}, Landroidx/recyclerview/widget/s0;->U(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;Lh0/c;)V

    :cond_2
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lg0/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/k1;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    iget-object v0, p1, Landroidx/recyclerview/widget/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/z0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {p1, v1, v0, p2, p3}, Landroidx/recyclerview/widget/s0;->h0(Landroidx/recyclerview/widget/z0;Landroidx/recyclerview/widget/f1;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method
