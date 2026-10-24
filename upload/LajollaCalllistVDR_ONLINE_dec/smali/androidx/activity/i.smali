.class public final Landroidx/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Landroidx/activity/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/i;->b:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/activity/i;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/fragment/app/f0;)V
    .locals 2

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/p;

    iget-object v0, v0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/i;Landroidx/lifecycle/i;Landroidx/fragment/app/f0;)V

    iget-object p1, p2, Landroidx/fragment/app/f0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/f0;

    iget-boolean v2, v1, Landroidx/fragment/app/f0;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/k0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->x(Z)Z

    iget-object v1, v0, Landroidx/fragment/app/k0;->h:Landroidx/fragment/app/f0;

    iget-boolean v1, v1, Landroidx/fragment/app/f0;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/k0;->P()Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/k0;->g:Landroidx/activity/i;

    invoke-virtual {v0}, Landroidx/activity/i;->b()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/activity/i;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
