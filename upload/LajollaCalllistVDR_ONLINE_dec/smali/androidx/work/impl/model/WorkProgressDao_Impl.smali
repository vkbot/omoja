.class public final Landroidx/work/impl/model/WorkProgressDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkProgressDao;


# instance fields
.field private final __db:Landroidx/room/q;

.field private final __insertionAdapterOfWorkProgress:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/y;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/y;


# direct methods
.method public constructor <init>(Landroidx/room/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/b;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/y;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Ls0/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move-object p1, v0

    check-cast p1, Lt0/f;

    invoke-virtual {p1, v1}, Lt0/f;->N(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Lt0/f;

    invoke-virtual {v2, v1, p1}, Lt0/f;->O(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object p1, v0

    check-cast p1, Lt0/g;

    invoke-virtual {p1}, Lt0/g;->Q()I

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {v0, p1}, Landroidx/room/y;->release(Ls0/g;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->endTransaction()V

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/y;

    invoke-virtual {v1, v0}, Landroidx/room/y;->release(Ls0/g;)V

    throw p1
.end method

.method public deleteAll()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/y;

    invoke-virtual {v0}, Landroidx/room/y;->acquire()Ls0/g;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v1}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    move-object v1, v0

    check-cast v1, Lt0/g;

    invoke-virtual {v1}, Lt0/g;->Q()I

    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/y;

    invoke-virtual {v0, v1}, Landroidx/room/y;->release(Ls0/g;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v2}, Landroidx/room/q;->endTransaction()V

    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/y;

    invoke-virtual {v2, v0}, Landroidx/room/y;->release(Ls0/g;)V

    throw v1
.end method

.method public getProgressForWorkSpecId(Ljava/lang/String;)Landroidx/work/Data;
    .locals 3

    const-string v0, "SELECT progress FROM WorkProgress WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->M(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->O(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->P(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lr0/c;->a(Landroidx/room/q;Ls0/f;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->Q()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->Q()V

    throw v1
.end method

.method public getProgressForWorkSpecIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT progress FROM WorkProgress WHERE work_spec_id IN ("

    invoke-static {v0}, Landroidx/activity/b;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lr0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Landroidx/room/u;->M(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->O(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroidx/room/u;->P(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-static {p1, v0, v2}, Lr0/c;->a(Landroidx/room/q;Ls0/f;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->Q()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->Q()V

    throw v1
.end method

.method public insert(Landroidx/work/impl/model/WorkProgress;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method
