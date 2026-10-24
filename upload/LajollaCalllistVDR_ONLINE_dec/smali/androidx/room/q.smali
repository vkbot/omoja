.class public abstract Landroidx/room/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private mAllowMainThreadQueries:Z

.field private final mBackingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/o;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected volatile mDatabase:Ls0/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mInvalidationTracker:Landroidx/room/i;

.field private mOpenHelper:Ls0/e;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private final mSuspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/q;->mBackingFieldMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/room/q;->createInvalidationTracker()Landroidx/room/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/room/q;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/room/q;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/room/q;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    invoke-virtual {v1, v0}, Landroidx/room/i;->g(Ls0/a;)V

    check-cast v0, Lt0/b;

    invoke-virtual {v0}, Lt0/b;->z()V

    return-void
.end method

.method public abstract clearAllTables()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/q;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Ls0/g;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/room/q;->assertNotMainThread()V

    invoke-virtual {p0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    check-cast v0, Lt0/b;

    new-instance v1, Lt0/g;

    iget-object v0, v0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v1, p1}, Lt0/g;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v1
.end method

.method public abstract createInvalidationTracker()Landroidx/room/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createOpenHelper(Landroidx/room/a;)Ls0/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public endTransaction()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    check-cast v0, Lt0/b;

    invoke-virtual {v0}, Lt0/b;->J()V

    invoke-virtual {p0}, Landroidx/room/q;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    iget-object v1, v0, Landroidx/room/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/room/i;->d:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Landroidx/room/i;->k:Landroidx/room/v;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getBackingFieldMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mBackingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Landroidx/room/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidationTracker()Landroidx/room/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    return-object v0
.end method

.method public getOpenHelper()Ls0/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    check-cast v0, Lt0/b;

    iget-object v0, v0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroidx/room/a;)V
    .locals 3
    .param p1    # Landroidx/room/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/room/q;->createOpenHelper(Landroidx/room/a;)Ls0/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    instance-of v1, v0, Landroidx/room/x;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/room/x;

    iput-object p1, v1, Landroidx/room/x;->g:Landroidx/room/a;

    :cond_0
    iget-object v1, p1, Landroidx/room/a;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ls0/e;->setWriteAheadLoggingEnabled(Z)V

    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/q;->mCallbacks:Ljava/util/List;

    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/q;->mQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/room/z;

    iget-object v2, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Landroidx/room/z;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/q;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    iget-boolean p1, p1, Landroidx/room/a;->f:Z

    iput-boolean p1, p0, Landroidx/room/q;->mAllowMainThreadQueries:Z

    iput-boolean v1, p0, Landroidx/room/q;->mWriteAheadLoggingEnabled:Z

    return-void
.end method

.method public internalInitInvalidationTracker(Ls0/a;)V
    .locals 3
    .param p1    # Ls0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/room/q;->mInvalidationTracker:Landroidx/room/i;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Landroidx/room/i;->f:Z

    if-eqz v1, :cond_0

    const-string p1, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    check-cast p1, Lt0/b;

    invoke-virtual {p1, v1}, Lt0/b;->M(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    invoke-virtual {p1, v1}, Lt0/b;->M(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v1}, Lt0/b;->M(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/room/i;->g(Ls0/a;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    new-instance v2, Lt0/g;

    iget-object p1, p1, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v2, p1}, Lt0/g;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    iput-object v2, v0, Landroidx/room/i;->g:Lt0/g;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/room/i;->f:Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/q;->mDatabase:Ls0/a;

    if-eqz v0, :cond_0

    check-cast v0, Lt0/b;

    iget-object v0, v0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/d0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1, p2}, Landroidx/appcompat/widget/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lt0/b;

    invoke-virtual {v0, v1}, Lt0/b;->O(Ls0/f;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ls0/f;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Ls0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/room/q;->query(Ls0/f;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ls0/f;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .param p1    # Ls0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroidx/room/q;->assertNotMainThread()V

    .line 4
    invoke-virtual {p0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    check-cast v0, Lt0/b;

    .line 6
    iget-object v1, v0, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    new-instance v2, Lt0/a;

    const/4 v0, 0x1

    invoke-direct {v2, p1, v0}, Lt0/a;-><init>(Ls0/f;I)V

    .line 8
    invoke-interface {p1}, Ls0/f;->z()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lt0/b;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, p2

    .line 9
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object p2, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {p2}, Ls0/e;->C()Ls0/a;

    move-result-object p2

    check-cast p2, Lt0/b;

    invoke-virtual {p2, p1}, Lt0/b;->O(Ls0/f;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Landroidx/room/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1

    :catch_1
    move-exception p1

    .line 11
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    .line 13
    throw p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/room/q;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p0}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    .line 5
    throw p1
.end method

.method public setTransactionSuccessful()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/room/q;->mOpenHelper:Ls0/e;

    invoke-interface {v0}, Ls0/e;->C()Ls0/a;

    move-result-object v0

    check-cast v0, Lt0/b;

    invoke-virtual {v0}, Lt0/b;->P()V

    return-void
.end method
