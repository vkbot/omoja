.class public Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/q1;
.implements Landroidx/appcompat/view/menu/b0;
.implements Landroidx/appcompat/view/menu/n;
.implements Landroidx/appcompat/widget/s;
.implements Landroidx/core/widget/g;
.implements Lg0/r;
.implements Lg0/h;
.implements Li0/c;
.implements Lh0/o;
.implements Lcom/google/android/material/internal/b0;
.implements Lcom/google/android/material/button/a;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->b:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 7
    new-instance p1, Lg0/a1;

    invoke-direct {p1}, Lg0/a1;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    .line 8
    new-instance p1, Lg0/z0;

    invoke-direct {p1}, Lg0/z0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Lg0/y0;

    invoke-direct {p1}, Lg0/y0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->b:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/a;->e(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Ln0/i;

    invoke-direct {v0, p1}, Ln0/i;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "textView cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 21
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    check-cast p1, Landroid/view/inputmethod/InputContentInfo;

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    .line 17
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lg0/i1;Landroidx/recyclerview/widget/o0;)Lg0/i1;
    .locals 5

    iget v0, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-virtual {p2}, Lg0/i1;->a()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/recyclerview/widget/o0;->d:I

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lg0/i1;->b()I

    move-result v0

    invoke-virtual {p2}, Lg0/i1;->c()I

    move-result v2

    iget v3, p3, Landroidx/recyclerview/widget/o0;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget v4, p3, Landroidx/recyclerview/widget/o0;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v4, v0

    iput v4, p3, Landroidx/recyclerview/widget/o0;->c:I

    iget v0, p3, Landroidx/recyclerview/widget/o0;->b:I

    iget p3, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-static {p1, v3, v0, v4, p3}, Lg0/b0;->k(Landroid/view/View;IIII)V

    return-object p2
.end method

.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/i0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/o;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Li0/c;

    invoke-interface {v0}, Li0/c;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/a;->b(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/view/View;Lg0/i1;)Lg0/i1;
    .locals 7

    iget-object p1, p2, Lg0/i1;->a:Lg0/h1;

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/a0;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:Lg0/i1;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:Lg0/i1;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    invoke-virtual {p1}, Lg0/h1;->c()Lg0/i1;

    move-result-object p1

    return-object p1

    :sswitch_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/a0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p2

    :cond_2
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->h:Lg0/i1;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->h:Lg0/i1;

    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-object p2

    :sswitch_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Lg0/i1;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Lg0/i1;

    invoke-virtual {p2}, Lg0/i1;->d()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Lg0/h1;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Lg0/a0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lt/d;

    iget-object v3, v3, Lt/d;->a:Lt/b;

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lg0/h1;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-object p2

    :goto_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v1, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lg0/i1;->b()I

    move-result v1

    invoke-virtual {p2}, Lg0/i1;->d()I

    move-result v4

    invoke-virtual {p2}, Lg0/i1;->c()I

    move-result v5

    invoke-virtual {p2}, Lg0/i1;->a()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a(Lg0/i1;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {p1}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    sget-object v1, Ly/b;->e:Ly/b;

    invoke-virtual {v0, v1}, Ly/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    invoke-virtual {p2, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lg0/a0;->k(Landroid/view/View;)V

    invoke-virtual {p1}, Lg0/h1;->c()Lg0/i1;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Landroid/view/View;)Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v2

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-ne v3, v1, :cond_4

    if-nez v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v2, :cond_5

    neg-int v0, v0

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/k;

    iget-object p2, p2, Landroidx/appcompat/view/menu/k;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Li0/c;

    invoke-interface {v0}, Li0/c;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/a;->a(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public final j(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p2, p2, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/s;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/s;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    iget-object p2, p1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/app/d;

    iget-object p2, p2, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public final l(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/r;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/view/menu/k;

    iget-object v4, v4, Landroidx/appcompat/view/menu/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/j;

    iget-object v4, v4, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/p;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/j;

    :cond_3
    move-object v4, v1

    new-instance v0, Landroidx/appcompat/view/menu/h;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/view/menu/k;

    iget-object p2, p2, Landroidx/appcompat/view/menu/k;->h:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/a;->j(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public final n()Landroid/content/ClipDescription;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Li0/c;

    invoke-interface {v0}, Li0/c;->n()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/o;

    iget-object v1, v1, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/o;

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/view/menu/i0;

    iget-object v3, v3, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    iget v3, v3, Landroidx/appcompat/view/menu/r;->a:I

    iput v3, v1, Landroidx/appcompat/widget/o;->z:I

    check-cast v0, Landroidx/appcompat/widget/o;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public final p(Landroidx/appcompat/view/menu/p;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n;->p(Landroidx/appcompat/view/menu/p;)V

    :cond_0
    return-void
.end method

.method public final q(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    return-void
.end method

.method public final r()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    return-object v0
.end method

.method public final s()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Li0/c;

    invoke-interface {v0}, Li0/c;->s()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/String;)F
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-nez p1, :cond_2

    return v1

    :cond_2
    array-length p2, p1

    if-lez p2, :cond_3

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/i;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final u()J
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final v(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
