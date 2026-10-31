.class public final Lj8/l;
.super Lx7/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Le0/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le0/g;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/l;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/l;->c:Le0/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/h;)V
    .registers 5

    .line 1
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lj8/l;->c:Le0/g;

    .line 4
    .line 5
    iget-object v2, p0, Lj8/l;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Le0/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lx7/g;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_3a

    .line 12
    .line 13
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 14
    .line 15
    if-eqz v2, :cond_36

    .line 16
    .line 17
    :try_start_10
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2b

    .line 23
    if-nez v1, :cond_1f

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lx7/h;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v0, Lj8/k;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Lj8/k;-><init>(Lx7/h;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lj8/k;->run()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    invoke-virtual {v1, p1}, Lx7/g;->c(Lx7/h;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception v1

    .line 60
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
