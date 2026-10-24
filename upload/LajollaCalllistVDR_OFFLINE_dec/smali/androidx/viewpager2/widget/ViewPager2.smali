.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$SavedState;,
        Landroidx/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Landroidx/viewpager2/widget/ViewPager2$ScrollState;,
        Landroidx/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroidx/viewpager2/widget/f;

.field public d:I

.field public e:Z

.field public final f:Landroidx/viewpager2/widget/e;

.field public g:Landroidx/viewpager2/widget/i;

.field public h:I

.field public i:Landroid/os/Parcelable;

.field public j:Landroidx/viewpager2/widget/o;

.field public k:Landroidx/viewpager2/widget/n;

.field public l:Landroidx/viewpager2/widget/d;

.field public m:Landroidx/viewpager2/widget/f;

.field public n:Landroidx/appcompat/app/d;

.field public o:Landroidx/viewpager2/widget/b;

.field public p:Landroidx/recyclerview/widget/p0;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Landroidx/viewpager2/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroidx/viewpager2/widget/f;

    invoke-direct {v0}, Landroidx/viewpager2/widget/f;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/f;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    .line 6
    new-instance v1, Landroidx/viewpager2/widget/e;

    invoke-direct {v1, v0, p0}, Landroidx/viewpager2/widget/e;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    .line 9
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 11
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:I

    .line 12
    invoke-virtual {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroidx/viewpager2/widget/f;

    invoke-direct {v0}, Landroidx/viewpager2/widget/f;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/f;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    .line 18
    new-instance v1, Landroidx/viewpager2/widget/e;

    invoke-direct {v1, v0, p0}, Landroidx/viewpager2/widget/e;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    .line 21
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 23
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:I

    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    .line 27
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    .line 28
    new-instance p3, Landroidx/viewpager2/widget/f;

    invoke-direct {p3}, Landroidx/viewpager2/widget/f;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/f;

    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    .line 30
    new-instance v0, Landroidx/viewpager2/widget/e;

    invoke-direct {v0, p3, p0}, Landroidx/viewpager2/widget/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    .line 33
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    const/4 p3, 0x1

    .line 34
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    .line 35
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:I

    .line 36
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    new-instance v0, Landroidx/viewpager2/widget/l;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/l;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    new-instance v0, Landroidx/viewpager2/widget/o;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/o;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lh0/a0;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Landroidx/viewpager2/widget/i;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/i;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/s0;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    sget-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v4, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Landroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    new-instance v0, Landroidx/viewpager2/widget/g;

    invoke-direct {v0}, Landroidx/viewpager2/widget/g;-><init>()V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->y:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->y:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/viewpager2/widget/d;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    new-instance v0, Landroidx/appcompat/app/d;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-direct {v0, p0, p1, v2}, Landroidx/appcompat/app/d;-><init>(Ljava/lang/Object;Landroidx/viewpager2/widget/d;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/appcompat/app/d;

    new-instance p1, Landroidx/viewpager2/widget/n;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/n;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/n;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/w0;)V

    new-instance p1, Landroidx/viewpager2/widget/f;

    invoke-direct {p1}, Landroidx/viewpager2/widget/f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/f;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    iput-object p1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    new-instance v0, Landroidx/viewpager2/widget/f;

    invoke-direct {v0, p0, p2}, Landroidx/viewpager2/widget/f;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    new-instance v2, Landroidx/viewpager2/widget/f;

    invoke-direct {v2, p0, v1}, Landroidx/viewpager2/widget/f;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    iget-object p1, p1, Landroidx/viewpager2/widget/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/f;

    iget-object p1, p1, Landroidx/viewpager2/widget/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/f;

    iget-object p1, p1, Landroidx/viewpager2/widget/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/widget/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/viewpager2/widget/b;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    invoke-direct {p1, v0}, Landroidx/viewpager2/widget/b;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/f;

    iget-object v0, v0, Landroidx/viewpager2/widget/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    :cond_2
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/l;->k()V

    return-void
.end method

.method public final c(I)V
    .locals 9

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-ne p1, v0, :cond_4

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    iget v3, v3, Landroidx/viewpager2/widget/d;->f:I

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    return-void

    :cond_4
    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    int-to-double v3, v0

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/l;->k()V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    iget v5, v0, Landroidx/viewpager2/widget/d;->f:I

    if-nez v5, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    if-nez v5, :cond_7

    invoke-virtual {v0}, Landroidx/viewpager2/widget/d;->e()V

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->g:Landroidx/viewpager2/widget/c;

    iget v3, v0, Landroidx/viewpager2/widget/c;->a:I

    int-to-double v3, v3

    iget v0, v0, Landroidx/viewpager2/widget/c;->b:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    iput v5, v0, Landroidx/viewpager2/widget/d;->e:I

    iput-boolean v1, v0, Landroidx/viewpager2/widget/d;->m:Z

    iget v6, v0, Landroidx/viewpager2/widget/d;->i:I

    if-eq v6, p1, :cond_8

    move v1, v2

    :cond_8
    iput p1, v0, Landroidx/viewpager2/widget/d;->i:I

    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/d;->c(I)V

    if-eqz v1, :cond_9

    iget-object v0, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/j;->c(I)V

    :cond_9
    int-to-double v0, p1

    sub-double v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_b

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    cmpl-double v0, v0, v3

    if-lez v0, :cond_a

    add-int/lit8 v0, p1, -0x3

    goto :goto_2

    :cond_a
    add-int/lit8 v0, p1, 0x3

    :goto_2
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    new-instance v0, Ly/j;

    invoke-direct {v0, p1, p0}, Ly/j;-><init>(ILandroidx/viewpager2/widget/o;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_b
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    :goto_3
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/n;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/n;->e(Landroidx/recyclerview/widget/s0;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/recyclerview/widget/s0;->G(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroidx/viewpager2/widget/f;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/f;->c(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/j0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    return p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    return p0
.end method

.method public getPageSize()I
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    :goto_0
    sub-int/2addr p0, v0

    return p0
.end method

.method public getScrollState()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroidx/viewpager2/widget/d;

    iget p0, p0, Landroidx/viewpager2/widget/d;->f:I

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/l;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, v2, Landroid/graphics/Rect;->bottom:I

    const p2, 0x800033

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0, v2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->b:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    :goto_0
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewPager2 does not support direct child views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/l;->i(ILandroid/os/Bundle;)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/j0;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/j0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/l;->f(Landroidx/recyclerview/widget/j0;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/viewpager2/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/l;->e(Landroidx/recyclerview/widget/j0;)V

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p0, v1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/appcompat/app/d;

    iget-object v0, v0, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/d;

    iget-boolean v0, v0, Landroidx/viewpager2/widget/d;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/l;->k()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/l;->k()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/m;)V
    .locals 3
    .param p1    # Landroidx/viewpager2/widget/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/p0;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/p0;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/viewpager2/widget/o;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/p0;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/viewpager2/widget/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/viewpager2/widget/l;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/l;->k()V

    return-void
.end method
