.class public final La3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/j;


# instance fields
.field public b:Ljava/util/LinkedList;

.field public volatile c:Z


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    iget-boolean v0, p0, La3/a;->c:Z

    return v0
.end method

.method public final unsubscribe()V
    .locals 4

    iget-boolean v0, p0, La3/a;->c:Z

    if-nez v0, :cond_7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La3/a;->c:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La3/a;->c:Z

    iget-object v1, p0, La3/a;->b:Ljava/util/LinkedList;

    const/4 v2, 0x0

    iput-object v2, p0, La3/a;->b:Ljava/util/LinkedList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/j;

    :try_start_1
    invoke-interface {v3}, Lz2/j;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_6
    new-instance v0, Lrx/exceptions/CompositeException;

    const-string v1, "Multiple exceptions"

    invoke-direct {v0, v1, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    :goto_1
    return-void
.end method
