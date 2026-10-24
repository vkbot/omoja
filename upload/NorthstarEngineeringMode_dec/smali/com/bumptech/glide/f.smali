.class public final Lcom/bumptech/glide/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f$b;,
        Lcom/bumptech/glide/f$a;,
        Lcom/bumptech/glide/f$e;,
        Lcom/bumptech/glide/f$d;,
        Lcom/bumptech/glide/f$c;
    }
.end annotation


# instance fields
.field public final a:Lp/s;

.field public final b:La0/a;

.field public final c:La0/e;

.field public final d:La0/f;

.field public final e:Lj/f;

.field public final f:Lx/f;

.field public final g:La0/b;

.field public final h:La0/d;

.field public final i:La0/c;

.field public final j:Lg0/a$c;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0/d;

    invoke-direct {v0}, La0/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->h:La0/d;

    new-instance v0, La0/c;

    invoke-direct {v0}, La0/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->i:La0/c;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance v1, Lg0/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lg0/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lg0/a$c;

    invoke-direct {v3, v0, v1, v2}, Lg0/a$c;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Lg0/a$b;Lg0/a$e;)V

    iput-object v3, p0, Lcom/bumptech/glide/f;->j:Lg0/a$c;

    new-instance v0, Lp/s;

    invoke-direct {v0, v3}, Lp/s;-><init>(Lg0/a$c;)V

    iput-object v0, p0, Lcom/bumptech/glide/f;->a:Lp/s;

    new-instance v0, La0/a;

    invoke-direct {v0}, La0/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->b:La0/a;

    new-instance v0, La0/e;

    invoke-direct {v0}, La0/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->c:La0/e;

    new-instance v1, La0/f;

    invoke-direct {v1}, La0/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->d:La0/f;

    new-instance v1, Lj/f;

    invoke-direct {v1}, Lj/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->e:Lj/f;

    new-instance v1, Lx/f;

    invoke-direct {v1}, Lx/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->f:Lx/f;

    new-instance v1, La0/b;

    invoke-direct {v1}, La0/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->g:La0/b;

    const-string p0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    filled-new-array {p0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    const-string v2, "legacy_prepend_all"

    invoke-virtual {v1, p0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p0, "legacy_append"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-enter v0

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    iget-object v2, v0, La0/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, La0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, La0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, La0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1    # Li/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->c:La0/e;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p4}, La0/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    new-instance v0, La0/e$a;

    invoke-direct {v0, p2, p3, p1}, La0/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Li/j;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/Class;Li/d;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->b:La0/a;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La0/a;->a:Ljava/util/ArrayList;

    new-instance v1, La0/a$a;

    invoke-direct {v1, p1, p2}, La0/a$a;-><init>(Ljava/lang/Class;Li/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/Class;Li/k;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->d:La0/f;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La0/f;->a:Ljava/util/ArrayList;

    new-instance v1, La0/f$a;

    invoke-direct {v1, p1, p2}, La0/f$a;-><init>(Ljava/lang/Class;Li/k;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lp/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->a:Lp/s;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp/s;->a:Lp/u;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lp/u$b;

    invoke-direct {v1, p1, p2, p3}, Lp/u$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    iget-object p1, v0, Lp/u;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    iget-object p1, p0, Lp/s;->b:Lp/s$a;

    iget-object p1, p1, Lp/s$a;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->g:La0/b;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La0/b;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/bumptech/glide/f$b;

    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lp/q<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->a:Lp/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lp/s;->b:Lp/s$a;

    iget-object v1, v1, Lp/s$a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/s$a$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lp/s$a$a;->a:Ljava/util/List;

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lp/s;->a:Lp/u;

    invoke-virtual {v1, v0}, Lp/u;->a(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lp/s;->b:Lp/s$a;

    iget-object v2, v2, Lp/s$a;->a:Ljava/util/HashMap;

    new-instance v3, Lp/s$a$a;

    invoke-direct {v3, v1}, Lp/s$a$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/s$a$a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already cached loaders for model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit p0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, p0, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/q;

    invoke-interface {v5, p1}, Lp/q;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    sub-int v2, p0, v4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    new-instance p0, Lcom/bumptech/glide/f$c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found ModelLoaders for model class: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but none that handle this specific model instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/bumptech/glide/f$c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find any ModelLoaders registered for model class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final g(Lj/e$a;)V
    .locals 2
    .param p1    # Lj/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->e:Lj/f;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj/f;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lj/e$a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lx/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->f:Lx/f;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx/f;->a:Ljava/util/ArrayList;

    new-instance v1, Lx/f$a;

    invoke-direct {v1, p1, p2, p3}, Lx/f$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
