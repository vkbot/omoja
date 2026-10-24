.class public final Landroidx/room/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/room/v;->b:I

    iput-object p2, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/room/i;

    iget-object v1, v1, Landroidx/room/i;->d:Landroidx/room/q;

    new-instance v2, Landroidx/appcompat/widget/d0;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/room/q;->query(Ls0/f;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/room/i;

    iget-object v1, v1, Landroidx/room/i;->g:Lt0/g;

    invoke-virtual {v1}, Lt0/g;->Q()I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/room/v;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/room/w;

    iget v1, v0, Landroidx/lifecycle/t;->c:I

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, v0, Landroidx/room/w;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/room/w;->m:Z

    iget-object v2, v0, Landroidx/room/w;->l:Landroidx/room/q;

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroidx/room/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/room/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    :goto_1
    iget-object v0, v0, Landroidx/room/w;->t:Landroidx/room/v;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/room/w;

    iget-object v5, v4, Landroidx/room/w;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/room/w;->l:Landroidx/room/q;

    invoke-virtual {v5}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object v5

    iget-object v6, v4, Landroidx/room/w;->p:Landroidx/room/k;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/room/h;

    invoke-direct {v7, v5, v6}, Landroidx/room/h;-><init>(Landroidx/room/i;Landroidx/room/k;)V

    invoke-virtual {v5, v7}, Landroidx/room/i;->a(Landroidx/room/f;)V

    :cond_3
    iget-object v5, v4, Landroidx/room/w;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v6, v1

    move v5, v2

    :goto_2
    :try_start_0
    move-object v7, v0

    check-cast v7, Landroidx/room/w;

    iget-object v7, v7, Landroidx/room/w;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    :try_start_1
    move-object v5, v0

    check-cast v5, Landroidx/room/w;

    iget-object v5, v5, Landroidx/room/w;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Exception while computing database live data."

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-eqz v5, :cond_5

    move-object v7, v0

    check-cast v7, Landroidx/room/w;

    invoke-virtual {v7, v6}, Landroidx/lifecycle/t;->g(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iget-object v6, v4, Landroidx/room/w;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, v4, Landroidx/room/w;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_6
    move v5, v2

    :goto_3
    if-eqz v5, :cond_7

    iget-object v5, v4, Landroidx/room/w;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_7
    return-void

    :goto_4
    iget-object v0, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/room/i;

    iget-object v0, v0, Landroidx/room/i;->d:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v4, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/room/i;

    invoke-virtual {v4}, Landroidx/room/i;->c()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v4, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/room/i;

    iget-object v4, v4, Landroidx/room/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v4, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/room/i;

    iget-object v4, v4, Landroidx/room/i;->d:Landroidx/room/q;

    invoke-virtual {v4}, Landroidx/room/q;->inTransaction()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_a

    :goto_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_d

    :cond_a
    :try_start_4
    iget-object v4, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroidx/room/i;

    iget-object v5, v5, Landroidx/room/i;->d:Landroidx/room/q;

    iget-boolean v5, v5, Landroidx/room/q;->mWriteAheadLoggingEnabled:Z

    if-eqz v5, :cond_b

    check-cast v4, Landroidx/room/i;

    iget-object v4, v4, Landroidx/room/i;->d:Landroidx/room/q;

    invoke-virtual {v4}, Landroidx/room/q;->getOpenHelper()Ls0/e;

    move-result-object v4

    invoke-interface {v4}, Ls0/e;->C()Ls0/a;

    move-result-object v4

    check-cast v4, Lt0/b;

    invoke-virtual {v4}, Lt0/b;->z()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {p0}, Landroidx/room/v;->a()Ljava/util/HashSet;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v4}, Lt0/b;->P()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v4}, Lt0/b;->J()V

    goto :goto_9

    :catch_1
    move-exception v4

    goto :goto_8

    :catch_2
    move-exception v4

    goto :goto_8

    :catchall_1
    move-exception v6

    goto :goto_6

    :catchall_2
    move-exception v6

    move-object v5, v1

    :goto_6
    invoke-virtual {v4}, Lt0/b;->J()V

    throw v6
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_b
    :try_start_8
    invoke-virtual {p0}, Landroidx/room/v;->a()Ljava/util/HashSet;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v1

    goto/16 :goto_e

    :catch_3
    move-exception v4

    goto :goto_7

    :catch_4
    move-exception v4

    :goto_7
    move-object v5, v1

    :goto_8
    :try_start_9
    const-string v6, "ROOM"

    const-string v7, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/room/i;

    iget-object v0, v0, Landroidx/room/i;->j:Lg/g;

    monitor-enter v0

    :try_start_a
    iget-object v4, p0, Landroidx/room/v;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/room/i;

    iget-object v4, v4, Landroidx/room/i;->j:Lg/g;

    invoke-virtual {v4}, Lg/g;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_a
    move-object v6, v4

    check-cast v6, Lg/e;

    invoke-virtual {v6}, Lg/e;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v6}, Lg/e;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/room/g;

    iget-object v7, v6, Landroidx/room/g;->a:[I

    array-length v8, v7

    move-object v10, v1

    move v9, v2

    :goto_b
    if-ge v9, v8, :cond_10

    aget v11, v7, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    if-ne v8, v3, :cond_d

    iget-object v10, v6, Landroidx/room/g;->d:Ljava/util/Set;

    goto :goto_c

    :cond_d
    if-nez v10, :cond_e

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v8}, Ljava/util/HashSet;-><init>(I)V

    :cond_e
    iget-object v11, v6, Landroidx/room/g;->b:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    if-eqz v10, :cond_c

    iget-object v6, v6, Landroidx/room/g;->c:Landroidx/room/f;

    invoke-virtual {v6, v10}, Landroidx/room/f;->a(Ljava/util/Set;)V

    goto :goto_a

    :cond_11
    monitor-exit v0

    goto :goto_d

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :cond_12
    :goto_d
    return-void

    :goto_e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
