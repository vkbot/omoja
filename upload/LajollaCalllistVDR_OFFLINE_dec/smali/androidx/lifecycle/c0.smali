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
    .locals 7

    instance-of p0, p1, Landroidx/lifecycle/h0;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Landroidx/lifecycle/h0;

    invoke-interface {p0}, Landroidx/lifecycle/h0;->d()Landroidx/lifecycle/g0;

    move-result-object p0

    invoke-interface {p1}, Landroidx/savedstate/e;->a()Landroidx/savedstate/c;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/f0;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object v3

    const-string v4, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v5, v2, Landroidx/lifecycle/f0;->a:Ljava/util/HashMap;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move-object v2, v6

    goto :goto_0

    :cond_1
    monitor-enter v5

    :try_start_0
    iget-object v2, v2, Landroidx/lifecycle/f0;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    check-cast v2, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v4, :cond_0

    if-eqz v4, :cond_2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached to lifecycleOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v2, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {v3, v2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/m;)V

    throw v6

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    iget-object p0, p0, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Landroidx/savedstate/c;->c()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
