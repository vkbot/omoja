.class public final Landroidx/work/impl/model/WorkTagDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkTagDao;


# instance fields
.field private final __db:Landroidx/room/q;

.field private final __insertionAdapterOfWorkTag:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkTagDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Landroidx/room/b;

    return-void
.end method


# virtual methods
.method public getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getWorkSpecIdsWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT work_spec_id FROM worktag WHERE tag=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public insert(Landroidx/work/impl/model/WorkTag;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertionAdapterOfWorkTag:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method
