.class public final Lj8/h;
.super Lj8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:Le0/g;

.field public final d:I


# direct methods
.method public constructor <init>(Lx7/g;Le0/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj8/a;-><init>(Lx7/g;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lj8/h;->c:Le0/g;

    .line 5
    .line 6
    iput p3, p0, Lj8/h;->d:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/h;)V
    .locals 4

    .line 1
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 2
    .line 3
    iget-object v1, p0, Lj8/a;->b:Lx7/g;

    .line 4
    .line 5
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 6
    .line 7
    iget-object v3, p0, Lj8/h;->c:Le0/g;

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    :try_start_0
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lx7/h;->a()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Le0/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lx7/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    :try_start_2
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lx7/h;->a()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v0, Lj8/k;

    .line 52
    .line 53
    invoke-direct {v0, p1, v1}, Lj8/k;-><init>(Lx7/h;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lj8/k;->run()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1, p1}, Lx7/g;->c(Lx7/h;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception v1

    .line 79
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_2
    move-exception v1

    .line 90
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Lx7/h;->b(Lz7/a;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :cond_3
    new-instance v0, Lj8/g;

    .line 101
    .line 102
    iget v2, p0, Lj8/h;->d:I

    .line 103
    .line 104
    invoke-direct {v0, p1, v3, v2}, Lj8/g;-><init>(Lx7/h;Le0/g;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lx7/g;->c(Lx7/h;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
