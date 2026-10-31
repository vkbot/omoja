.class public final Lp7/v;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ll9/l;

.field public final b:I

.field public c:I

.field public d:I

.field public final e:Lp7/j;

.field public f:Z

.field public final synthetic g:Lb7/p;


# direct methods
.method public constructor <init>(Lb7/p;IILp7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/v;->g:Lb7/p;

    .line 5
    .line 6
    new-instance p1, Ll9/l;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lp7/v;->a:Ll9/l;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lp7/v;->f:Z

    .line 15
    .line 16
    iput p2, p0, Lp7/v;->b:I

    .line 17
    .line 18
    iput p3, p0, Lp7/v;->c:I

    .line 19
    .line 20
    iput-object p4, p0, Lp7/v;->e:Lp7/j;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    sub-int/2addr v0, p1

    .line 7
    iget v1, p0, Lp7/v;->c:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "Window size overflow for stream: "

    .line 13
    .line 14
    iget v0, p0, Lp7/v;->b:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/navigation/b;->b(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    iget v0, p0, Lp7/v;->c:I

    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    iput v0, p0, Lp7/v;->c:I

    .line 25
    .line 26
    return v0
.end method

.method public final b(IZLl9/l;)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lp7/v;->g:Lb7/p;

    .line 2
    .line 3
    iget-object v0, v0, Lb7/p;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lp7/d;

    .line 6
    .line 7
    iget-object v0, v0, Lp7/d;->c:Lp7/b;

    .line 8
    .line 9
    iget-object v0, v0, Lp7/b;->b:Lr7/i;

    .line 10
    .line 11
    iget v0, v0, Lr7/i;->e:I

    .line 12
    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lp7/v;->g:Lb7/p;

    .line 18
    .line 19
    iget-object v1, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lp7/v;

    .line 22
    .line 23
    neg-int v2, v0

    .line 24
    invoke-virtual {v1, v2}, Lp7/v;->a(I)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lp7/v;->a(I)I

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-wide v1, p3, Ll9/l;->c:J

    .line 31
    .line 32
    int-to-long v3, v0

    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_0
    iget-object v4, p0, Lp7/v;->g:Lb7/p;

    .line 45
    .line 46
    iget-object v4, v4, Lb7/p;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Lp7/d;

    .line 49
    .line 50
    iget v5, p0, Lp7/v;->b:I

    .line 51
    .line 52
    invoke-virtual {v4, v1, v5, p3, v0}, Lp7/d;->b(ZILl9/l;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lp7/v;->e:Lp7/j;

    .line 56
    .line 57
    iget-object v4, v1, Lo7/b1;->b:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v4

    .line 60
    :try_start_1
    iget-boolean v5, v1, Lo7/b1;->f:Z

    .line 61
    .line 62
    const-string v6, "onStreamAllocated was not called, but it seems the stream is active"

    .line 63
    .line 64
    invoke-static {v5, v6}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v5, v1, Lo7/b1;->e:I

    .line 68
    .line 69
    const v6, 0x8000

    .line 70
    .line 71
    .line 72
    if-ge v5, v6, :cond_2

    .line 73
    .line 74
    move v7, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v7, v2

    .line 77
    :goto_1
    sub-int/2addr v5, v0

    .line 78
    iput v5, v1, Lo7/b1;->e:I

    .line 79
    .line 80
    if-ge v5, v6, :cond_3

    .line 81
    .line 82
    move v5, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v5, v2

    .line 85
    :goto_2
    if-nez v7, :cond_4

    .line 86
    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    move v2, v3

    .line 90
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    iget-object v2, v1, Lo7/b1;->b:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v2

    .line 96
    :try_start_2
    invoke-virtual {v1}, Lo7/b1;->f()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    iget-object v1, v1, Lo7/b1;->j:Lo7/w;

    .line 104
    .line 105
    invoke-interface {v1}, Lo7/w;->j()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    throw p1

    .line 112
    :cond_5
    :goto_3
    sub-int/2addr p1, v0

    .line 113
    if-gtz p1, :cond_0

    .line 114
    .line 115
    return-void

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    throw p1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final c(ILc9/i;)V
    .locals 9

    .line 1
    iget v0, p0, Lp7/v;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lp7/v;->g:Lb7/p;

    .line 4
    .line 5
    iget-object v2, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lp7/v;

    .line 8
    .line 9
    iget v2, v2, Lp7/v;->c:I

    .line 10
    .line 11
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    iget-object v4, p0, Lp7/v;->a:Ll9/l;

    .line 22
    .line 23
    iget-wide v5, v4, Ll9/l;->c:J

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v7, v5, v7

    .line 28
    .line 29
    if-lez v7, :cond_1

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    int-to-long v7, v0

    .line 34
    cmp-long v7, v7, v5

    .line 35
    .line 36
    if-ltz v7, :cond_0

    .line 37
    .line 38
    long-to-int v0, v5

    .line 39
    add-int/2addr v3, v0

    .line 40
    iget-boolean v5, p0, Lp7/v;->f:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0, v5, v4}, Lp7/v;->b(IZLl9/l;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/2addr v3, v0

    .line 47
    invoke-virtual {p0, v0, v2, v4}, Lp7/v;->b(IZLl9/l;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget v0, p2, Lc9/i;->b:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    iput v0, p2, Lc9/i;->b:I

    .line 55
    .line 56
    sub-int v0, p1, v3

    .line 57
    .line 58
    iget v4, p0, Lp7/v;->c:I

    .line 59
    .line 60
    iget-object v5, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Lp7/v;

    .line 63
    .line 64
    iget v5, v5, Lp7/v;->c:I

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
