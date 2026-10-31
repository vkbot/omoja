.class public final Lc0/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lc0/i;


# instance fields
.field public b:Ljava/lang/Object;

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ll/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll/a;

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ll/a;

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lr5/c;

    .line 17
    .line 18
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/bumptech/glide/manager/o;

    .line 21
    .line 22
    const-string v1, "image_manager_disk_cache"

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bumptech/glide/manager/o;->c:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :cond_2
    new-instance v2, Ll/e;

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ll/e;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    iput-object v2, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    :goto_2
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ll/a;

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    new-instance v0, Lw7/c;

    .line 72
    .line 73
    const/16 v1, 0xd

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lw7/c;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 79
    .line 80
    :cond_5
    monitor-exit p0

    .line 81
    goto :goto_4

    .line 82
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw v0

    .line 84
    :cond_6
    :goto_4
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ll/a;

    .line 87
    .line 88
    return-object v0
.end method

.method public b(Lo7/g3;)Lo7/x;
    .locals 2

    .line 1
    iget-object v0, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/f2;

    .line 4
    .line 5
    iget-object v0, v0, Lo7/f2;->y:Ln7/h0;

    .line 6
    .line 7
    iget-object v1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo7/f2;

    .line 10
    .line 11
    iget-object v1, v1, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lo7/f2;

    .line 22
    .line 23
    iget-object p1, p1, Lo7/f2;->E:Lo7/l0;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lo7/f2;

    .line 31
    .line 32
    iget-object p1, p1, Lo7/f2;->m:Ln7/k1;

    .line 33
    .line 34
    new-instance v0, Lcom/bumptech/glide/m;

    .line 35
    .line 36
    const/16 v1, 0xd

    .line 37
    .line 38
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lo7/f2;

    .line 47
    .line 48
    iget-object p1, p1, Lo7/f2;->E:Lo7/l0;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    invoke-virtual {v0, p1}, Ln7/h0;->a(Lo7/g3;)Ln7/f0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object p1, p1, Lo7/g3;->a:Ln7/c;

    .line 56
    .line 57
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object p1, p1, Ln7/c;->e:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {v0, p1}, Lo7/y0;->f(Ln7/f0;Z)Lo7/x;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_2
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lo7/f2;

    .line 75
    .line 76
    iget-object p1, p1, Lo7/f2;->E:Lo7/l0;

    .line 77
    .line 78
    return-object p1
.end method

.method public c(Ln7/j;)V
    .locals 2

    .line 1
    const-string v0, "newState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln7/j;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ln7/j;

    .line 15
    .line 16
    sget-object v1, Ln7/j;->f:Ln7/j;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    iput-object p1, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1

    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lc0/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc0/i;

    .line 13
    .line 14
    invoke-interface {v0}, Lc0/i;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Argument must not be null"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_2
    iget-object v0, p0, Lc0/h;->c:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0
.end method
