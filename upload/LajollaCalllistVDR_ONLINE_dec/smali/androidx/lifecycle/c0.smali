.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/savedstate/e;)V
    .locals 8

    instance-of v0, p1, Landroidx/lifecycle/h0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/h0;

    invoke-interface {v0}, Landroidx/lifecycle/h0;->d()Landroidx/lifecycle/g0;

    move-result-object v0

    invoke-interface {p1}, Landroidx/savedstate/e;->a()Landroidx/savedstate/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/f0;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object v4

    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v6, v3, Landroidx/lifecycle/f0;->a:Ljava/util/HashMap;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v3, v7

    goto :goto_0

    :cond_1
    monitor-enter v6

    :try_start_0
    iget-object v3, v3, Landroidx/lifecycle/f0;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast v3, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v5, :cond_0

    if-eqz v5, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached to lifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {v4, v3}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/m;)V

    throw v7

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroidx/savedstate/c;->c()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
