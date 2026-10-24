.class public final Lt0/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final b:[Lt0/b;

.field public final c:Ls0/b;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lt0/b;Ls0/b;)V
    .locals 6

    const/4 v3, 0x0

    iget v4, p4, Ls0/b;->a:I

    new-instance v5, Lt0/c;

    invoke-direct {v5, p4, p3}, Lt0/c;-><init>(Ls0/b;[Lt0/b;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p4, p0, Lt0/d;->c:Ls0/b;

    iput-object p3, p0, Lt0/d;->b:[Lt0/b;

    return-void
.end method


# virtual methods
.method public final declared-synchronized J()Ls0/a;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lt0/d;->d:Z

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-boolean v1, p0, Lt0/d;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lt0/d;->close()V

    invoke-virtual {p0}, Lt0/d;->J()Ls0/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Lt0/d;->b:[Lt0/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    iget-object p1, p0, Lt0/d;->c:Ls0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    invoke-virtual {p0, p1}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    move-result-object p1

    iget-object v0, p0, Lt0/d;->c:Ls0/b;

    check-cast v0, Landroidx/room/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-virtual {p1, v1}, Lt0/b;->N(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, v0, Landroidx/room/t;->c:Landroidx/room/r;

    invoke-virtual {v1, p1}, Landroidx/room/r;->createAllTables(Ls0/a;)V

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Landroidx/room/r;->onValidateSchema(Ls0/a;)Landroidx/room/s;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/room/s;->a:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/room/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/room/t;->c(Lt0/b;)V

    invoke-virtual {v1, p1}, Landroidx/room/r;->onCreate(Ls0/a;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/d;->d:Z

    invoke-virtual {p0, p1}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    move-result-object p1

    iget-object v0, p0, Lt0/d;->c:Ls0/b;

    check-cast v0, Landroidx/room/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/t;->b(Lt0/b;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    iget-boolean v0, p0, Lt0/d;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    move-result-object p1

    iget-object v0, p0, Lt0/d;->c:Ls0/b;

    check-cast v0, Landroidx/room/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v1}, Lt0/b;->N(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    iget-object v4, v0, Landroidx/room/t;->c:Landroidx/room/r;

    if-eqz v2, :cond_3

    new-instance v2, Landroidx/appcompat/widget/d0;

    const-string v5, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v2, v5}, Landroidx/appcompat/widget/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lt0/b;->O(Ls0/f;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, "c103703e120ae8cc73c9248622f3cd1e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "49f946663a8deb7054212b8adda248c6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    invoke-virtual {v4, p1}, Landroidx/room/r;->onValidateSchema(Ls0/a;)Landroidx/room/s;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/room/s;->a:Z

    if-eqz v3, :cond_5

    invoke-virtual {v4, p1}, Landroidx/room/r;->onPostMigrate(Ls0/a;)V

    invoke-virtual {v0, p1}, Landroidx/room/t;->c(Lt0/b;)V

    :cond_4
    :goto_2
    invoke-virtual {v4, p1}, Landroidx/room/r;->onOpen(Ls0/a;)V

    iput-object v1, v0, Landroidx/room/t;->b:Landroidx/room/a;

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-packaged database has an invalid schema: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/room/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/d;->d:Z

    iget-object v0, p0, Lt0/d;->c:Ls0/b;

    invoke-virtual {p0, p1}, Lt0/d;->z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Ls0/b;->b(Lt0/b;II)V

    return-void
.end method

.method public final z(Landroid/database/sqlite/SQLiteDatabase;)Lt0/b;
    .locals 3

    iget-object v0, p0, Lt0/d;->b:[Lt0/b;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, v2, Lt0/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lt0/b;

    invoke-direct {v2, p1}, Lt0/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v2, v0, v1

    :cond_2
    aget-object p1, v0, v1

    return-object p1
.end method
