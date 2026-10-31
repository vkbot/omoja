.class public final Ld4/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld4/j;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .registers 3

    .line 1
    iget v0, p0, Ld4/j;->c:I

    .line 2
    .line 3
    iput v0, p0, Ld4/j;->b:I

    .line 4
    .line 5
    iput p1, p0, Ld4/j;->c:I

    .line 6
    .line 7
    iget-object p1, p0, Ld4/j;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 14
    .line 15
    if-eqz p1, :cond_14

    .line 16
    .line 17
    iget v0, p0, Ld4/j;->c:I

    .line 18
    .line 19
    iput v0, p1, Lcom/google/android/material/tabs/TabLayout;->W:I

    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .registers 10

    .line 1
    iget-object p3, p0, Ld4/j;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    move-object v0, p3

    .line 8
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_29

    .line 11
    .line 12
    iget p3, p0, Ld4/j;->c:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne p3, v2, :cond_1a

    .line 18
    .line 19
    iget v4, p0, Ld4/j;->b:I

    .line 20
    .line 21
    if-ne v4, v3, :cond_17

    .line 22
    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    move v4, v3

    .line 25
    move v3, v1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    :goto_1a
    move v4, v3

    .line 28
    :goto_1b
    if-ne p3, v2, :cond_23

    .line 29
    .line 30
    iget p3, p0, Ld4/j;->b:I

    .line 31
    .line 32
    if-eqz p3, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v4, v1

    .line 36
    :cond_23
    :goto_23
    const/4 v5, 0x0

    .line 37
    move v1, p1

    .line 38
    move v2, p2

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZZ)V

    .line 40
    .line 41
    .line 42
    :cond_29
    return-void
.end method

.method public final onPageSelected(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Ld4/j;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_3b

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, p1, :cond_3b

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge p1, v1, :cond_3b

    .line 22
    .line 23
    iget v1, p0, Ld4/j;->c:I

    .line 24
    .line 25
    if-eqz v1, :cond_24

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v1, v2, :cond_22

    .line 29
    .line 30
    iget v1, p0, Ld4/j;->b:I

    .line 31
    .line 32
    if-nez v1, :cond_22

    .line 33
    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 38
    :goto_25
    if-ltz p1, :cond_37

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lt p1, v2, :cond_2e

    .line 45
    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ld4/i;

    .line 54
    .line 55
    goto :goto_38

    .line 56
    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 57
    :goto_38
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->l(Ld4/i;Z)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    return-void
.end method
