.class public final Ls8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz7/a;
.implements Lb8/d;


# instance fields
.field public final b:Lx7/h;

.field public final c:Ls8/b;

.field public d:Z

.field public e:Z

.field public f:Lc7/l;

.field public g:Z

.field public volatile h:Z

.field public i:J


# direct methods
.method public constructor <init>(Lx7/h;Ls8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls8/a;->b:Lx7/h;

    .line 5
    .line 6
    iput-object p2, p0, Ls8/a;->c:Ls8/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls8/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Ls8/a;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Ls8/a;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-wide v0, p0, Ls8/a;->i:J

    .line 20
    .line 21
    cmp-long p2, v0, p2

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_2
    iget-boolean p2, p0, Ls8/a;->e:Z

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget-object p2, p0, Ls8/a;->f:Lc7/l;

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    new-instance p2, Lc7/l;

    .line 37
    .line 38
    invoke-direct {p2}, Lc7/l;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Ls8/a;->f:Lc7/l;

    .line 42
    .line 43
    :cond_3
    iget v0, p2, Lc7/l;->b:I

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    if-ne v0, v1, :cond_4

    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v2, p2, Lc7/l;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v0, v2, v1

    .line 56
    .line 57
    iput-object v0, p2, Lc7/l;->d:Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    :cond_4
    iget-object v1, p2, Lc7/l;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p1, v1, v0

    .line 65
    .line 66
    add-int/2addr v0, p3

    .line 67
    iput v0, p2, Lc7/l;->b:I

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_5
    iput-boolean p3, p0, Ls8/a;->d:Z

    .line 72
    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iput-boolean p3, p0, Ls8/a;->g:Z

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1

    .line 79
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Ls8/a;->test(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls8/a;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ls8/a;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Ls8/a;->c:Ls8/b;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ls8/b;->f(Ls8/a;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls8/a;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Ls8/a;->b:Lx7/h;

    .line 6
    .line 7
    sget-object v1, Lp8/f;->b:Lp8/f;

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lx7/h;->a()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v1, p1, Lp8/e;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast p1, Lp8/e;

    .line 20
    .line 21
    iget-object p1, p1, Lp8/e;->b:Ljava/lang/Throwable;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {v0, p1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1
.end method
