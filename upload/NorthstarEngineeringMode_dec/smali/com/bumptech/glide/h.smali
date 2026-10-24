.class public final Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Ly/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Ly/h;"
    }
.end annotation


# static fields
.field public static final l:Lb0/f;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Ly/g;

.field public final d:Ly/l;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final e:Ly/k;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final f:Ly/m;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final g:Lcom/bumptech/glide/h$a;

.field public final h:Landroid/os/Handler;

.field public final i:Ly/c;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb0/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Lb0/f;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/f;

    invoke-direct {v0}, Lb0/f;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lb0/a;->c(Ljava/lang/Class;)Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb0/a;->p1:Z

    sput-object v0, Lcom/bumptech/glide/h;->l:Lb0/f;

    new-instance v0, Lb0/f;

    invoke-direct {v0}, Lb0/f;-><init>()V

    const-class v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0, v2}, Lb0/a;->c(Ljava/lang/Class;)Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    iput-boolean v1, v0, Lb0/a;->p1:Z

    sget-object v0, Ll/l;->b:Ll/l$c;

    new-instance v1, Lb0/f;

    invoke-direct {v1}, Lb0/f;-><init>()V

    invoke-virtual {v1, v0}, Lb0/a;->d(Ll/l;)Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    invoke-virtual {v0}, Lb0/a;->g()Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    invoke-virtual {v0}, Lb0/a;->j()Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ly/g;Ly/k;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ly/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ly/l;

    invoke-direct {v0}, Ly/l;-><init>()V

    iget-object v1, p1, Lcom/bumptech/glide/b;->g:Ly/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ly/m;

    invoke-direct {v2}, Ly/m;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    new-instance v2, Lcom/bumptech/glide/h$a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/h$a;-><init>(Lcom/bumptech/glide/h;)V

    iput-object v2, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/h$a;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/bumptech/glide/h;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/h;->c:Ly/g;

    iput-object p3, p0, Lcom/bumptech/glide/h;->e:Ly/k;

    iput-object v0, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    iput-object p4, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/h$b;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/h$b;-><init>(Lcom/bumptech/glide/h;Ly/l;)V

    check-cast v1, Ly/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v5, "ConnectivityMonitor"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_1

    const-string v6, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v6, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Ly/e;

    invoke-direct {v0, p3, p4}, Ly/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/h$b;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ly/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/h;->i:Ly/c;

    sget-object p3, Lf0/j;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_4

    move v1, v4

    :cond_4
    xor-int/lit8 p3, v1, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    invoke-interface {p2, p0}, Ly/g;->a(Ly/h;)V

    :goto_3
    invoke-interface {p2, v0}, Ly/g;->a(Ly/h;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iget-object p3, p3, Lcom/bumptech/glide/d;->d:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lcom/bumptech/glide/d;->i:Lb0/f;

    if-nez p3, :cond_6

    iget-object p3, p2, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/b$a;

    check-cast p3, Lcom/bumptech/glide/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lb0/f;

    invoke-direct {p3}, Lb0/f;-><init>()V

    iput-boolean v4, p3, Lb0/a;->p1:Z

    iput-object p3, p2, Lcom/bumptech/glide/d;->i:Lb0/f;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_6
    :goto_4
    iget-object p3, p2, Lcom/bumptech/glide/d;->i:Lb0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Lb0/a;->b()Lb0/a;

    move-result-object p2

    check-cast p2, Lb0/f;

    iget-boolean p3, p2, Lb0/a;->p1:Z

    if-eqz p3, :cond_8

    iget-boolean p3, p2, Lb0/a;->r1:Z

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iput-boolean v4, p2, Lb0/a;->r1:Z

    iput-boolean v4, p2, Lb0/a;->p1:Z

    iput-object p2, p0, Lcom/bumptech/glide/h;->k:Lb0/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    iget-object p2, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_2
    iget-object p3, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p1, p1, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register already registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :goto_7
    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    invoke-virtual {v0}, Ly/m;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    iget-object v0, v0, Ly/m;->a:Ljava/util/Set;

    invoke-static {v0}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc0/c;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    iget-object v0, v0, Ly/m;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    iget-object v1, v0, Ly/l;->a:Ljava/util/Set;

    invoke-static {v1}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b;

    invoke-virtual {v0, v2}, Ly/l;->a(Lb0/b;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Ly/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Ly/g;

    invoke-interface {v0, p0}, Ly/g;->b(Ly/h;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Ly/g;

    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Ly/c;

    invoke-interface {v0, v1}, Ly/g;->b(Ly/h;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/h$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->c(Lcom/bumptech/glide/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->l()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    invoke-virtual {v0}, Ly/m;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k(Lc0/c;)V
    .locals 3
    .param p1    # Lc0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc0/c<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->n(Lc0/c;)Z

    move-result v0

    invoke-interface {p1}, Lc0/c;->d()Lb0/b;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->n(Lc0/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lc0/c;->e(Lb0/h;)V

    invoke-interface {v1}, Lb0/b;->clear()V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized l()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ly/l;->c:Z

    iget-object v1, v0, Ly/l;->a:Ljava/util/Set;

    invoke-static {v1}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b;

    invoke-interface {v2}, Lb0/b;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lb0/b;->a()V

    iget-object v3, v0, Ly/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ly/l;->c:Z

    iget-object v1, v0, Ly/l;->a:Ljava/util/Set;

    invoke-static {v1}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b;

    invoke-interface {v2}, Lb0/b;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lb0/b;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lb0/b;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ly/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n(Lc0/c;)Z
    .locals 3
    .param p1    # Lc0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc0/c<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lc0/c;->d()Lb0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    invoke-virtual {v2, v0}, Ly/l;->a(Lb0/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    iget-object v0, v0, Ly/m;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc0/c;->e(Lb0/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Ly/m;

    invoke-virtual {v0}, Ly/m;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->d:Ly/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->e:Ly/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
