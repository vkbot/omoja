.class public final Landroidx/work/impl/model/PreferenceDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/PreferenceDao;


# instance fields
.field private final __db:Landroidx/room/q;

.field private final __insertionAdapterOfPreference:Landroidx/room/b;
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

    iput-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    new-instance v0, Landroidx/work/impl/model/PreferenceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/PreferenceDao_Impl$1;-><init>(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/room/q;)V

    iput-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertionAdapterOfPreference:Landroidx/room/b;

    return-void
.end method

.method public static synthetic access$000(Landroidx/work/impl/model/PreferenceDao_Impl;)Landroidx/room/q;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    return-object p0
.end method


# virtual methods
.method public getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Ls0/c;->a(Landroidx/room/q;Lt0/f;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/u;->B()V

    throw p1
.end method

.method public getObservableLongValue(Ljava/lang/String;)Landroidx/lifecycle/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/t;"
        }
    .end annotation

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/u;->p(ILjava/lang/String;)Landroidx/room/u;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/u;->u(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/u;->v(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->getInvalidationTracker()Landroidx/room/i;

    move-result-object p1

    const-string v1, "Preference"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/PreferenceDao_Impl$2;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/model/PreferenceDao_Impl$2;-><init>(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/room/u;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroidx/room/i;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/room/w;

    move-result-object p0

    return-object p0
.end method

.method public insertPreference(Landroidx/work/impl/model/Preference;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertionAdapterOfPreference:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p1}, Landroidx/room/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/q;

    invoke-virtual {p0}, Landroidx/room/q;->endTransaction()V

    throw p1
.end method
