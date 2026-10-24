.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/a;


# instance fields
.field public final a:Ln/j;

.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:Ln/b;

.field public e:Lg/a;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Ln/d;->d:Ln/b;

    iput-object p1, p0, Ln/d;->b:Ljava/io/File;

    iput-wide p2, p0, Ln/d;->c:J

    new-instance p1, Ln/j;

    invoke-direct {p1}, Ln/j;-><init>()V

    iput-object p1, p0, Ln/d;->a:Ln/j;

    return-void
.end method


# virtual methods
.method public final a(Li/f;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Ln/d;->a:Ln/j;

    invoke-virtual {v0, p1}, Ln/j;->a(Li/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ln/d;->c()Lg/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg/a;->i(Ljava/lang/String;)Lg/a$e;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lg/a$e;->a:[Ljava/io/File;

    const/4 v0, 0x0

    aget-object p1, p0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to get from disk cache"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Li/f;Ll/g;)V
    .locals 7

    const-string v0, "Had two simultaneous puts for: "

    const-string v1, "Put: Obtained: "

    iget-object v2, p0, Ln/d;->a:Ln/j;

    invoke-virtual {v2, p1}, Ln/j;->a(Li/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ln/d;->d:Ln/b;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Ln/b;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/b$a;

    if-nez v4, :cond_1

    iget-object v4, v3, Ln/b;->b:Ln/b$b;

    iget-object v5, v4, Ln/b$b;->a:Ljava/util/ArrayDeque;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Ln/b$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/b$a;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_0

    :try_start_2
    new-instance v4, Ln/b$a;

    invoke-direct {v4}, Ln/b$a;-><init>()V

    :cond_0
    iget-object v5, v3, Ln/b;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_1
    :goto_0
    iget v5, v4, Ln/b$a;->b:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Ln/b$a;->b:I

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v3, v4, Ln/b$a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v3, "DiskLruCacheWrapper"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DiskLruCacheWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for for Key: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Ln/d;->c()Lg/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg/a;->i(Ljava/lang/String;)Lg/a$e;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    iget-object p0, p0, Ln/d;->d:Ln/b;

    invoke-virtual {p0, v2}, Ln/b;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_7
    invoke-virtual {p1, v2}, Lg/a;->d(Ljava/lang/String;)Lg/a$c;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Lg/a$c;->b()Ljava/io/File;

    move-result-object v0

    iget-object v1, p2, Ll/g;->b:Ljava/lang/Object;

    iget-object v3, p2, Ll/g;->c:Li/h;

    iget-object p2, p2, Ll/g;->a:Li/d;

    invoke-interface {p2, v1, v0, v3}, Li/d;->b(Ljava/lang/Object;Ljava/io/File;Li/h;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lg/a$c;->d:Lg/a;

    invoke-static {p2, p1, v6}, Lg/a;->a(Lg/a;Lg/a$c;Z)V

    iput-boolean v6, p1, Lg/a$c;->c:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :try_start_9
    iget-boolean p2, p1, Lg/a$c;->c:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez p2, :cond_7

    :try_start_a
    invoke-virtual {p1}, Lg/a$c;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_3
    move-exception p2

    :try_start_b
    iget-boolean v0, p1, Lg/a$c;->c:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v0, :cond_5

    :try_start_c
    invoke-virtual {p1}, Lg/a$c;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_0
    :cond_5
    :try_start_d
    throw p2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_2
    :try_start_e
    const-string p2, "DiskLruCacheWrapper"

    const/4 v0, 0x5

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "DiskLruCacheWrapper"

    const-string v0, "Unable to put to disk cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catch_2
    :cond_7
    :goto_3
    iget-object p0, p0, Ln/d;->d:Ln/b;

    invoke-virtual {p0, v2}, Ln/b;->a(Ljava/lang/String;)V

    return-void

    :goto_4
    iget-object p0, p0, Ln/d;->d:Ln/b;

    invoke-virtual {p0, v2}, Ln/b;->a(Ljava/lang/String;)V

    throw p1

    :goto_5
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw p0
.end method

.method public final declared-synchronized c()Lg/a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln/d;->e:Lg/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/d;->b:Ljava/io/File;

    iget-wide v1, p0, Ln/d;->c:J

    invoke-static {v0, v1, v2}, Lg/a;->l(Ljava/io/File;J)Lg/a;

    move-result-object v0

    iput-object v0, p0, Ln/d;->e:Lg/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ln/d;->e:Lg/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
