.class public final Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lt0/b;

.field public final d:Z

.field public final e:Ljava/lang/Object;

.field public f:Lu0/d;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lt0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lu0/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lu0/e;->c:Lt0/b;

    iput-boolean p4, p0, Lu0/e;->d:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J()Lt0/a;
    .locals 0

    invoke-virtual {p0}, Lu0/e;->d()Lu0/d;

    move-result-object p0

    invoke-virtual {p0}, Lu0/d;->g()Lt0/a;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lu0/e;->d()Lu0/d;

    move-result-object p0

    invoke-virtual {p0}, Lu0/d;->close()V

    return-void
.end method

.method public final d()Lu0/d;
    .locals 6

    iget-object v0, p0, Lu0/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu0/e;->f:Lu0/d;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lu0/b;

    iget-object v2, p0, Lu0/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lu0/e;->d:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lu0/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lu0/e;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lu0/d;

    iget-object v4, p0, Lu0/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lu0/e;->c:Lt0/b;

    invoke-direct {v3, v4, v2, v1, v5}, Lu0/d;-><init>(Landroid/content/Context;Ljava/lang/String;[Lu0/b;Lt0/b;)V

    iput-object v3, p0, Lu0/e;->f:Lu0/d;

    goto :goto_0

    :cond_0
    new-instance v2, Lu0/d;

    iget-object v3, p0, Lu0/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lu0/e;->b:Ljava/lang/String;

    iget-object v5, p0, Lu0/e;->c:Lt0/b;

    invoke-direct {v2, v3, v4, v1, v5}, Lu0/d;-><init>(Landroid/content/Context;Ljava/lang/String;[Lu0/b;Lt0/b;)V

    iput-object v2, p0, Lu0/e;->f:Lu0/d;

    :goto_0
    iget-object v1, p0, Lu0/e;->f:Lu0/d;

    iget-boolean v2, p0, Lu0/e;->g:Z

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lu0/e;->f:Lu0/d;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu0/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lu0/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu0/e;->f:Lu0/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lu0/e;->g:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
