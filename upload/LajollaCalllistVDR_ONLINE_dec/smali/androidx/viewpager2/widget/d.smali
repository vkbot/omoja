.class public final Landroidx/viewpager2/widget/d;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"


# instance fields
.field public a:Landroidx/viewpager2/widget/j;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:Landroidx/viewpager2/widget/c;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/o;

    iput-object p1, p0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Landroidx/viewpager2/widget/c;

    invoke-direct {p1}, Landroidx/viewpager2/widget/c;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->d()V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget p2, p0, Landroidx/viewpager2/widget/d;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget v3, p0, Landroidx/viewpager2/widget/d;->f:I

    if-eq v3, v2, :cond_3

    :cond_0
    if-ne p1, v2, :cond_3

    iput-boolean v1, p0, Landroidx/viewpager2/widget/d;->m:Z

    iput v2, p0, Landroidx/viewpager2/widget/d;->e:I

    iget p1, p0, Landroidx/viewpager2/widget/d;->i:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager2/widget/d;->h:I

    iput v0, p0, Landroidx/viewpager2/widget/d;->i:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/d;->h:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroidx/viewpager2/widget/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/d;->h:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/viewpager2/widget/d;->c(I)V

    return-void

    :cond_3
    const/4 v3, 0x4

    if-eq p2, v2, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-eqz v4, :cond_7

    if-ne p1, v5, :cond_7

    iget-boolean p1, p0, Landroidx/viewpager2/widget/d;->k:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v5}, Landroidx/viewpager2/widget/d;->c(I)V

    iput-boolean v2, p0, Landroidx/viewpager2/widget/d;->j:Z

    :cond_6
    return-void

    :cond_7
    if-eq p2, v2, :cond_9

    if-ne p2, v3, :cond_8

    goto :goto_3

    :cond_8
    move p2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move p2, v2

    :goto_4
    iget-object v3, p0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->e()V

    iget-boolean p2, p0, Landroidx/viewpager2/widget/d;->k:Z

    if-nez p2, :cond_a

    iget p2, v3, Landroidx/viewpager2/widget/c;->a:I

    if-eq p2, v0, :cond_c

    iget-object v4, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz v4, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v6, v1}, Landroidx/viewpager2/widget/j;->b(IFI)V

    goto :goto_5

    :cond_a
    iget p2, v3, Landroidx/viewpager2/widget/c;->c:I

    if-nez p2, :cond_b

    iget p2, p0, Landroidx/viewpager2/widget/d;->h:I

    iget v4, v3, Landroidx/viewpager2/widget/c;->a:I

    if-eq p2, v4, :cond_c

    iget-object p2, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz p2, :cond_c

    invoke-virtual {p2, v4}, Landroidx/viewpager2/widget/j;->c(I)V

    goto :goto_5

    :cond_b
    move v2, v1

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/d;->c(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->d()V

    :cond_d
    iget p2, p0, Landroidx/viewpager2/widget/d;->e:I

    if-ne p2, v5, :cond_10

    if-nez p1, :cond_10

    iget-boolean p1, p0, Landroidx/viewpager2/widget/d;->l:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->e()V

    iget p1, v3, Landroidx/viewpager2/widget/c;->c:I

    if-nez p1, :cond_10

    iget p1, p0, Landroidx/viewpager2/widget/d;->i:I

    iget p2, v3, Landroidx/viewpager2/widget/c;->a:I

    if-eq p1, p2, :cond_f

    if-ne p2, v0, :cond_e

    move p2, v1

    :cond_e
    iget-object p1, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/j;->c(I)V

    :cond_f
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/d;->c(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->d()V

    :cond_10
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/widget/d;->k:Z

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->e()V

    iget-boolean v0, p0, Landroidx/viewpager2/widget/d;->j:Z

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Landroidx/viewpager2/widget/d;->j:Z

    if-gtz p3, :cond_3

    if-nez p3, :cond_2

    if-gez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/i;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/s0;->A()I

    move-result p3

    if-ne p3, p1, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, v3

    :goto_1
    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p1

    :goto_3
    if-eqz p2, :cond_4

    iget p2, v2, Landroidx/viewpager2/widget/c;->c:I

    if-eqz p2, :cond_4

    iget p2, v2, Landroidx/viewpager2/widget/c;->a:I

    add-int/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, v2, Landroidx/viewpager2/widget/c;->a:I

    :goto_4
    iput p2, p0, Landroidx/viewpager2/widget/d;->i:I

    iget p3, p0, Landroidx/viewpager2/widget/d;->h:I

    if-eq p3, p2, :cond_7

    iget-object p3, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/j;->c(I)V

    goto :goto_5

    :cond_5
    iget p2, p0, Landroidx/viewpager2/widget/d;->e:I

    if-nez p2, :cond_7

    iget p2, v2, Landroidx/viewpager2/widget/c;->a:I

    if-ne p2, v1, :cond_6

    move p2, v3

    :cond_6
    iget-object p3, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/j;->c(I)V

    :cond_7
    :goto_5
    iget p2, v2, Landroidx/viewpager2/widget/c;->a:I

    if-ne p2, v1, :cond_8

    move p2, v3

    :cond_8
    iget p3, v2, Landroidx/viewpager2/widget/c;->b:F

    iget v0, v2, Landroidx/viewpager2/widget/c;->c:I

    iget-object v4, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz v4, :cond_9

    invoke-virtual {v4, p2, p3, v0}, Landroidx/viewpager2/widget/j;->b(IFI)V

    :cond_9
    iget p2, v2, Landroidx/viewpager2/widget/c;->a:I

    iget p3, p0, Landroidx/viewpager2/widget/d;->i:I

    if-eq p2, p3, :cond_a

    if-ne p3, v1, :cond_b

    :cond_a
    iget p2, v2, Landroidx/viewpager2/widget/c;->c:I

    if-nez p2, :cond_b

    iget p2, p0, Landroidx/viewpager2/widget/d;->f:I

    if-eq p2, p1, :cond_b

    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/d;->c(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/d;->d()V

    :cond_b
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/d;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/d;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/d;->f:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/d;->f:I

    iget-object v0, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/j;->a(I)V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/d;->e:I

    iput v0, p0, Landroidx/viewpager2/widget/d;->f:I

    iget-object v1, p0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/viewpager2/widget/c;->a:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/viewpager2/widget/c;->b:F

    iput v0, v1, Landroidx/viewpager2/widget/c;->c:I

    iput v2, p0, Landroidx/viewpager2/widget/d;->h:I

    iput v2, p0, Landroidx/viewpager2/widget/d;->i:I

    iput-boolean v0, p0, Landroidx/viewpager2/widget/d;->j:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/d;->k:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/d;->m:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/d;->l:Z

    return-void
.end method

.method public final e()V
    .locals 15

    iget-object v0, p0, Landroidx/viewpager2/widget/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    iput v1, v2, Landroidx/viewpager2/widget/c;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    iput v5, v2, Landroidx/viewpager2/widget/c;->a:I

    iput v3, v2, Landroidx/viewpager2/widget/c;->b:F

    iput v4, v2, Landroidx/viewpager2/widget/c;->c:I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iput v5, v2, Landroidx/viewpager2/widget/c;->a:I

    iput v3, v2, Landroidx/viewpager2/widget/c;->b:F

    iput v4, v2, Landroidx/viewpager2/widget/c;->c:I

    return-void

    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->B(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->I(Landroid/view/View;)I

    move-result v6

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->K(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Landroidx/recyclerview/widget/s0;->u(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v10

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v10, 0x1

    if-nez v6, :cond_3

    move v6, v10

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    iget-object v11, p0, Landroidx/viewpager2/widget/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/i;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/s0;->A()I

    move-result v5

    if-ne v5, v10, :cond_4

    move v5, v10

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_5

    neg-int v1, v1

    :cond_5
    move v9, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    :goto_2
    neg-int v1, v1

    iput v1, v2, Landroidx/viewpager2/widget/c;->c:I

    if-gez v1, :cond_17

    new-instance v1, Landroidx/viewpager2/widget/a;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/a;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_9

    :cond_7
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v5, :cond_8

    move v5, v10

    goto :goto_3

    :cond_8
    move v5, v4

    :goto_3
    const/4 v6, 0x2

    filled-new-array {v3, v6}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    move v8, v4

    :goto_4
    if-ge v8, v3, :cond_d

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_9

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_5

    :cond_9
    sget-object v11, Landroidx/viewpager2/widget/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_5
    aget-object v12, v7, v8

    if-eqz v5, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_6
    sub-int/2addr v13, v14

    aput v13, v12, v4

    aget-object v12, v7, v8

    if-eqz v5, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_7
    add-int/2addr v9, v11

    aput v9, v12, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null view contained in the view hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v5, Lk/g;

    invoke-direct {v5, v6, v1}, Lk/g;-><init>(ILjava/lang/Object;)V

    invoke-static {v7, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v1, v10

    :goto_8
    if-ge v1, v3, :cond_f

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v7, v5

    aget v5, v5, v10

    aget-object v6, v7, v1

    aget v6, v6, v4

    if-eq v5, v6, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    aget-object v1, v7, v4

    aget v5, v1, v10

    aget v1, v1, v4

    sub-int/2addr v5, v1

    if-gtz v1, :cond_11

    sub-int/2addr v3, v10

    aget-object v1, v7, v3

    aget v1, v1, v10

    if-ge v1, v5, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move v1, v10

    goto :goto_b

    :cond_11
    :goto_a
    move v1, v4

    :goto_b
    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v1

    if-gt v1, v10, :cond_15

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/s0;->w()I

    move-result v1

    move v3, v4

    :goto_c
    if-ge v3, v1, :cond_14

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/s0;->v(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/viewpager2/widget/a;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v0, v10

    goto :goto_d

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_14
    move v0, v4

    :goto_d
    if-eqz v0, :cond_15

    move v4, v10

    :cond_15
    if-eqz v4, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, v2, Landroidx/viewpager2/widget/c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez v9, :cond_18

    goto :goto_e

    :cond_18
    int-to-float v0, v1

    int-to-float v1, v9

    div-float v3, v0, v1

    :goto_e
    iput v3, v2, Landroidx/viewpager2/widget/c;->b:F

    return-void
.end method
