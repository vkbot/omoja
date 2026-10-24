.class public final Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/e;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ls0/b;

.field public final e:Z

.field public final f:Ljava/lang/Object;

.field public g:Lt0/d;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ls0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lt0/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lt0/e;->d:Ls0/b;

    iput-boolean p4, p0, Lt0/e;->e:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/e;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final C()Ls0/a;
    .locals 1

    invoke-virtual {p0}, Lt0/e;->z()Lt0/d;

    move-result-object v0

    invoke-virtual {v0}, Lt0/d;->J()Ls0/a;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lt0/e;->z()Lt0/d;

    move-result-object v0

    invoke-virtual {v0}, Lt0/d;->close()V

    return-void
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt0/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lt0/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt0/e;->g:Lt0/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lt0/e;->h:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final z()Lt0/d;
    .locals 6

    iget-object v0, p0, Lt0/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt0/e;->g:Lt0/d;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lt0/b;

    iget-object v2, p0, Lt0/e;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lt0/e;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lt0/e;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lt0/e;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lt0/d;

    iget-object v4, p0, Lt0/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lt0/e;->d:Ls0/b;

    invoke-direct {v3, v4, v2, v1, v5}, Lt0/d;-><init>(Landroid/content/Context;Ljava/lang/String;[Lt0/b;Ls0/b;)V

    iput-object v3, p0, Lt0/e;->g:Lt0/d;

    goto :goto_0

    :cond_0
    new-instance v2, Lt0/d;

    iget-object v3, p0, Lt0/e;->b:Landroid/content/Context;

    iget-object v4, p0, Lt0/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lt0/e;->d:Ls0/b;

    invoke-direct {v2, v3, v4, v1, v5}, Lt0/d;-><init>(Landroid/content/Context;Ljava/lang/String;[Lt0/b;Ls0/b;)V

    iput-object v2, p0, Lt0/e;->g:Lt0/d;

    :goto_0
    iget-object v1, p0, Lt0/e;->g:Lt0/d;

    iget-boolean v2, p0, Lt0/e;->h:Z

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lt0/e;->g:Lt0/d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
