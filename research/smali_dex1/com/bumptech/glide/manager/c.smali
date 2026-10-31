.class public final Lcom/bumptech/glide/manager/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/bumptech/glide/manager/b;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/o;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/manager/c;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/manager/c;->c:Lcom/bumptech/glide/o;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/t;->c(Landroid/content/Context;)Lcom/bumptech/glide/manager/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/c;->c:Lcom/bumptech/glide/o;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_37

    .line 20
    .line 21
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1f

    .line 30
    .line 31
    goto :goto_37

    .line 32
    :cond_1f
    iget-object v1, v0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/bumptech/glide/manager/s;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lc0/h;

    .line 39
    .line 40
    invoke-virtual {v2}, Lc0/h;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lcom/bumptech/glide/manager/r;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/t;->c:Z
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_39

    .line 55
    .line 56
    :cond_37
    :goto_37
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception v1

    .line 59
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .line 60
    throw v1
.end method

.method public final onStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/t;->c(Landroid/content/Context;)Lcom/bumptech/glide/manager/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/c;->c:Lcom/bumptech/glide/o;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/t;->g()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw v1
.end method
