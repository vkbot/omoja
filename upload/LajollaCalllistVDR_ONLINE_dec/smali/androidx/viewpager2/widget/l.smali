.class public final Landroidx/viewpager2/widget/l;
.super Le0/g;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/viewpager2/widget/k;

.field public final c:Landroidx/viewpager2/widget/k;

.field public d:Landroidx/viewpager2/widget/e;

.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    iput-object p1, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0, p1}, Le0/g;-><init>(Ljava/lang/Object;)V

    new-instance p1, Landroidx/viewpager2/widget/k;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/viewpager2/widget/k;-><init>(Landroidx/viewpager2/widget/l;I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/l;->b:Landroidx/viewpager2/widget/k;

    new-instance p1, Landroidx/viewpager2/widget/k;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/viewpager2/widget/k;-><init>(Landroidx/viewpager2/widget/l;I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/l;->c:Landroidx/viewpager2/widget/k;

    return-void
.end method


# virtual methods
.method public final e(Landroidx/recyclerview/widget/j0;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/l;->k()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/viewpager2/widget/l;->d:Landroidx/viewpager2/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p1, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/j0;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/viewpager2/widget/l;->d:Landroidx/viewpager2/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p1, v0}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lg0/a0;->s(Landroid/view/View;I)V

    new-instance p1, Landroidx/viewpager2/widget/e;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Landroidx/viewpager2/widget/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/l;->d:Landroidx/viewpager2/widget/e;

    iget-object p1, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p1}, Lg0/a0;->c(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lg0/a0;->s(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v1

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move v4, v1

    :goto_0
    invoke-static {v1, v4, v3}, Landroidx/appcompat/app/f0;->c(III)Landroidx/appcompat/app/f0;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v3, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v3, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v3, :cond_4

    const/16 v3, 0x2000

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final i(ILandroid/os/Bundle;)V
    .locals 2

    const/4 p2, 0x1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-ne p1, v0, :cond_2

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, p2

    :goto_2
    iget-boolean p2, v1, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final j(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    const-string v0, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k()V
    .locals 10

    iget-object v0, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x1020048

    invoke-static {v0, v1}, Lg0/s0;->j(Landroid/view/View;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lg0/s0;->g(Landroid/view/View;I)V

    const v3, 0x1020049

    invoke-static {v0, v3}, Lg0/s0;->j(Landroid/view/View;I)V

    invoke-static {v0, v2}, Lg0/s0;->g(Landroid/view/View;I)V

    const v4, 0x1020046

    invoke-static {v0, v4}, Lg0/s0;->j(Landroid/view/View;I)V

    invoke-static {v0, v2}, Lg0/s0;->g(Landroid/view/View;I)V

    const v5, 0x1020047

    invoke-static {v0, v5}, Lg0/s0;->j(Landroid/view/View;I)V

    invoke-static {v0, v2}, Lg0/s0;->g(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-boolean v7, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v7

    iget-object v8, p0, Landroidx/viewpager2/widget/l;->c:Landroidx/viewpager2/widget/k;

    iget-object v9, p0, Landroidx/viewpager2/widget/l;->b:Landroidx/viewpager2/widget/k;

    if-nez v7, :cond_7

    iget-object v4, v0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/i;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/s0;->A()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v2, v5

    :cond_3
    if-eqz v2, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v2, :cond_5

    move v1, v3

    :cond_5
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_6

    new-instance v2, Lh0/b;

    invoke-direct {v2, v4}, Lh0/b;-><init>(I)V

    invoke-static {v0, v2, v9}, Lg0/s0;->k(Landroid/view/View;Lh0/b;Lh0/o;)V

    :cond_6
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v2, :cond_9

    new-instance v2, Lh0/b;

    invoke-direct {v2, v1}, Lh0/b;-><init>(I)V

    invoke-static {v0, v2, v8}, Lg0/s0;->k(Landroid/view/View;Lh0/b;Lh0/o;)V

    goto :goto_1

    :cond_7
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_8

    new-instance v1, Lh0/b;

    invoke-direct {v1, v5}, Lh0/b;-><init>(I)V

    invoke-static {v0, v1, v9}, Lg0/s0;->k(Landroid/view/View;Lh0/b;Lh0/o;)V

    :cond_8
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    if-lez v1, :cond_9

    new-instance v1, Lh0/b;

    invoke-direct {v1, v4}, Lh0/b;-><init>(I)V

    invoke-static {v0, v1, v8}, Lg0/s0;->k(Landroid/view/View;Lh0/b;Lh0/o;)V

    :cond_9
    :goto_1
    return-void
.end method
