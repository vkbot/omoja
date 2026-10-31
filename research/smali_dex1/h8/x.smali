.class public final Lh8/x;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Lz7/a;


# instance fields
.field public final b:J

.field public final c:Lh8/y;

.field public final d:I

.field public final e:I

.field public volatile f:Z

.field public volatile g:Le8/g;

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(Lh8/y;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lh8/x;->b:J

    .line 5
    .line 6
    iput-object p1, p0, Lh8/x;->c:Lh8/y;

    .line 7
    .line 8
    iget p1, p1, Lh8/y;->e:I

    .line 9
    .line 10
    iput p1, p0, Lh8/x;->e:I

    .line 11
    .line 12
    shr-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    iput p1, p0, Lh8/x;->d:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/x;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lh8/x;->c:Lh8/y;

    .line 5
    .line 6
    invoke-virtual {v0}, Lh8/y;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 1
    iget v0, p0, Lh8/x;->i:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1f

    .line 5
    .line 6
    iget-wide v0, p0, Lh8/x;->h:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iget p1, p0, Lh8/x;->d:I

    .line 10
    .line 11
    int-to-long p1, p1

    .line 12
    cmp-long p1, v0, p1

    .line 13
    .line 14
    if-ltz p1, :cond_1d

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lh8/x;->h:J

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ln9/b;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    iput-wide v0, p0, Lh8/x;->h:J

    .line 31
    .line 32
    :cond_1f
    return-void
.end method

.method public final dispose()V
    .registers 1

    .line 1
    invoke-static {p0}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 9

    .line 1
    iget v0, p0, Lh8/x;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Lh8/x;->c:Lh8/y;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v0, v2, :cond_92

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "Inner queue full?!"

    .line 13
    .line 14
    if-nez v0, :cond_6b

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_6b

    .line 23
    .line 24
    iget-object v0, v1, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-object v0, p0, Lh8/x;->g:Le8/g;

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    cmp-long v5, v3, v5

    .line 35
    .line 36
    if-eqz v5, :cond_46

    .line 37
    .line 38
    if-eqz v0, :cond_2d

    .line 39
    .line 40
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_46

    .line 45
    .line 46
    :cond_2d
    iget-object v0, v1, Lh8/y;->b:Lx7/d;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-wide v5, 0x7fffffffffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    cmp-long p1, v3, v5

    .line 57
    .line 58
    if-eqz p1, :cond_40

    .line 59
    .line 60
    iget-object p1, v1, Lh8/y;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 63
    .line 64
    .line 65
    :cond_40
    const-wide/16 v2, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v2, v3}, Lh8/x;->b(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_64

    .line 71
    :cond_46
    if-nez v0, :cond_55

    .line 72
    .line 73
    iget-object v0, p0, Lh8/x;->g:Le8/g;

    .line 74
    .line 75
    if-nez v0, :cond_55

    .line 76
    .line 77
    new-instance v0, Ll8/a;

    .line 78
    .line 79
    iget v3, v1, Lh8/y;->e:I

    .line 80
    .line 81
    invoke-direct {v0, v3}, Ll8/a;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lh8/x;->g:Le8/g;

    .line 85
    .line 86
    :cond_55
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_64

    .line 91
    .line 92
    new-instance p1, La8/d;

    .line 93
    .line 94
    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Lh8/y;->onError(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    :goto_64
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_8e

    .line 106
    .line 107
    goto :goto_8d

    .line 108
    :cond_6b
    iget-object v0, p0, Lh8/x;->g:Le8/g;

    .line 109
    .line 110
    if-nez v0, :cond_78

    .line 111
    .line 112
    new-instance v0, Ll8/a;

    .line 113
    .line 114
    iget v3, v1, Lh8/y;->e:I

    .line 115
    .line 116
    invoke-direct {v0, v3}, Ll8/a;-><init>(I)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lh8/x;->g:Le8/g;

    .line 120
    .line 121
    :cond_78
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_87

    .line 126
    .line 127
    new-instance p1, La8/d;

    .line 128
    .line 129
    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Lh8/y;->onError(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_87
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_8e

    .line 141
    .line 142
    :goto_8d
    return-void

    .line 143
    :cond_8e
    invoke-virtual {v1}, Lh8/y;->h()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_92
    invoke-virtual {v1}, Lh8/y;->c()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lo8/f;->b(Ljava/util/concurrent/atomic/AtomicReference;Ln9/b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2e

    .line 6
    .line 7
    instance-of v0, p1, Le8/d;

    .line 8
    .line 9
    if-eqz v0, :cond_28

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Le8/d;

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    invoke-interface {v0, v1}, Le8/c;->h(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v2, :cond_21

    .line 21
    .line 22
    iput v1, p0, Lh8/x;->i:I

    .line 23
    .line 24
    iput-object v0, p0, Lh8/x;->g:Le8/g;

    .line 25
    .line 26
    iput-boolean v2, p0, Lh8/x;->f:Z

    .line 27
    .line 28
    iget-object p1, p0, Lh8/x;->c:Lh8/y;

    .line 29
    .line 30
    invoke-virtual {p1}, Lh8/y;->c()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    const/4 v2, 0x2

    .line 35
    if-ne v1, v2, :cond_28

    .line 36
    .line 37
    iput v1, p0, Lh8/x;->i:I

    .line 38
    .line 39
    iput-object v0, p0, Lh8/x;->g:Le8/g;

    .line 40
    .line 41
    :cond_28
    iget v0, p0, Lh8/x;->e:I

    .line 42
    .line 43
    int-to-long v0, v0

    .line 44
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    sget-object v0, Lo8/f;->b:Lo8/f;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/x;->c:Lh8/y;

    .line 7
    .line 8
    iget-object v1, v0, Lh8/y;->h:Lp8/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_37

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lh8/x;->f:Z

    .line 21
    .line 22
    iget-object p1, v0, Lh8/y;->l:Ln9/b;

    .line 23
    .line 24
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lh8/y;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    sget-object v1, Lh8/y;->s:[Lh8/x;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, [Lh8/x;

    .line 36
    .line 37
    array-length v1, p1

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_26
    if-ge v2, v1, :cond_33

    .line 40
    .line 41
    aget-object v3, p1, v2

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_26

    .line 52
    :cond_33
    invoke-virtual {v0}, Lh8/y;->c()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
