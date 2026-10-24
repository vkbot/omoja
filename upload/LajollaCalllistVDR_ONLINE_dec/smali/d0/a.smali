.class public final Ld0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Ld0/a;->b:I

    iput-object p1, p0, Ld0/a;->e:Ljava/lang/Object;

    iput-object p2, p0, Ld0/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld0/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ld0/a;->b:I

    iget-object v1, p0, Ld0/a;->e:Ljava/lang/Object;

    iget-object v2, p0, Ld0/a;->d:Ljava/lang/Object;

    iget-object v3, p0, Ld0/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Ln1/g;

    iget-object v0, v1, Ln1/g;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v1, Ln1/g;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Ln1/g;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    invoke-static {v2, p0}, Lg0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    iget-boolean v0, v2, Lcom/google/android/material/appbar/AppBarLayout;->m:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->d(Z)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    :try_start_0
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    check-cast v2, Lf0/a;

    check-cast v1, Landroid/os/Handler;

    new-instance v3, Ld0/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v0, v4}, Ld0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    check-cast v3, Lf0/a;

    check-cast v3, Ld0/e;

    invoke-virtual {v3, v2}, Ld0/e;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast v3, Ld0/j;

    check-cast v2, Landroid/graphics/Typeface;

    check-cast v3, Ly/e;

    iget-object v0, v3, Ly/e;->a:Lx/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lx/k;->d(Landroid/graphics/Typeface;)V

    :cond_2
    return-void

    :goto_2
    check-cast v1, Lo1/a;

    check-cast v3, Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v2}, Lo1/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
