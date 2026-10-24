.class public Landroidx/appcompat/view/menu/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/n1;
.implements Landroidx/appcompat/view/menu/b0;
.implements Landroidx/appcompat/view/menu/n;
.implements Landroidx/appcompat/widget/s;
.implements Landroidx/core/widget/f;
.implements Lh0/q;
.implements Lh0/h;
.implements Lj0/b;
.implements Li0/o;
.implements Landroidx/emoji2/text/h;
.implements Lcom/google/android/material/internal/b0;
.implements Lcom/google/android/material/button/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/view/menu/i;->a:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lh0/x0;

    invoke-direct {p1}, Lh0/x0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/i;->a:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/a;->e(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lo0/i;

    invoke-direct {v0, p1}, Lo0/i;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "textView cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 20
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    check-cast p1, Landroid/view/inputmethod/InputContentInfo;

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    .line 16
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lh0/f1;)Lh0/f1;
    .locals 7

    iget-object p1, p2, Lh0/f1;->a:Lh0/e1;

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/z;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:Lh0/f1;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:Lh0/f1;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    invoke-virtual {p1}, Lh0/e1;->c()Lh0/f1;

    move-result-object p0

    return-object p0

    :sswitch_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/z;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v1, p2

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Lh0/f1;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Lh0/f1;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-object p2

    :sswitch_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lh0/f1;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lh0/f1;

    invoke-virtual {p2}, Lh0/f1;->d()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Lh0/e1;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_9

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lh0/z;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lu/d;

    iget-object v1, v1, Lu/d;->a:Lu/b;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lh0/e1;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-object p2

    :goto_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v1, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result v1

    invoke-virtual {p2}, Lh0/f1;->d()I

    move-result v4

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v5

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a(Lh0/f1;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {p1}, Lh0/e1;->i()Lz/b;

    move-result-object v0

    sget-object v1, Lz/b;->e:Lz/b;

    invoke-virtual {v0, v1}, Lz/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    invoke-virtual {p2, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    sget-object p2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/z;->k(Landroid/view/View;)V

    invoke-virtual {p1}, Lh0/e1;->c()Lh0/f1;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
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
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/o;

    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/b0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    invoke-interface {p0}, Lj0/b;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/a;->b(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public final e(Landroid/view/View;)Z
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v2

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

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

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

.method public final f(Ly1/l;)V
    .locals 9

    new-instance v7, Landroidx/emoji2/text/a;

    const-string v0, "EmojiCompatInitializer"

    invoke-direct {v7, v0}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Landroidx/emoji2/text/l;

    invoke-direct {v0, p0, p1, v8}, Landroidx/emoji2/text/l;-><init>(Landroidx/appcompat/view/menu/i;Ly1/l;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/k;

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->g:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    invoke-interface {p0}, Lj0/b;->h()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/a;->a(Landroid/view/ContentInfo;)I

    move-result p0

    return p0
.end method

.method public final j(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->A:Landroidx/appcompat/widget/s;

    if-eqz p1, :cond_1

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Landroidx/appcompat/widget/s;

    check-cast p0, Landroidx/appcompat/view/menu/i;

    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/app/d;

    iget-object p1, p1, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()Landroid/view/ContentInfo;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    return-object p0
.end method

.method public final l(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/r;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/view/menu/k;

    iget-object v4, v4, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/k;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

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

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/k;

    iget-object p0, p0, Landroidx/appcompat/view/menu/k;->g:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/a;->j(Landroid/view/ContentInfo;)I

    move-result p0

    return p0
.end method

.method public final n()Landroid/content/ClipDescription;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    invoke-interface {p0}, Lj0/b;->n()Landroid/content/ClipDescription;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroidx/appcompat/view/menu/p;)Z
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/o;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/p;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/o;

    move-object v2, p1

    check-cast v2, Landroidx/appcompat/view/menu/i0;

    iget-object v2, v2, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    iget v2, v2, Landroidx/appcompat/view/menu/r;->a:I

    iput v2, v0, Landroidx/appcompat/widget/o;->y:I

    check-cast p0, Landroidx/appcompat/widget/o;

    iget-object p0, p0, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/b0;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public final p(Landroidx/appcompat/view/menu/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Landroidx/appcompat/view/menu/n;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/n;->p(Landroidx/appcompat/view/menu/p;)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;
    .locals 4

    iget p0, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, p3, Landroidx/recyclerview/widget/o0;->d:I

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result p0

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v1

    iget v2, p3, Landroidx/recyclerview/widget/o0;->a:I

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p0

    :goto_1
    add-int/2addr v2, v3

    iput v2, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget v3, p3, Landroidx/recyclerview/widget/o0;->c:I

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    add-int/2addr v3, p0

    iput v3, p3, Landroidx/recyclerview/widget/o0;->c:I

    iget p0, p3, Landroidx/recyclerview/widget/o0;->b:I

    iget p3, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-static {p1, v2, p0, v3, p3}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-object p2
.end method

.method public final r(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    return-void
.end method

.method public final s()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method public final t()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    invoke-interface {p0}, Lj0/b;->t()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ContentInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Ljava/lang/Object;Ljava/lang/String;)F
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-nez p0, :cond_2

    return v1

    :cond_2
    array-length p1, p0

    if-lez p1, :cond_3

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final v()J
    .locals 4

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final w(I)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/nio/ByteBuffer;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
