.class public final Lb7/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb7/l;


# static fields
.field public static f:Lb7/p;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lb7/p;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lb7/p;->b:I

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb7/p;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 35
    iput p1, p0, Lb7/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp7/n;Lp7/d;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lb7/p;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 10
    .line 11
    const p1, 0xffff

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lb7/p;->b:I

    .line 15
    .line 16
    new-instance p2, Lp7/v;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Lp7/v;-><init>(Lb7/p;IILp7/j;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lb7/p;->e:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ls6/a;Ls6/c;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lb7/p;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 31
    iget p1, p1, Ls6/a;->b:I

    .line 32
    iput p1, p0, Lb7/p;->b:I

    .line 33
    iput-object p2, p0, Lb7/p;->e:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    .line 34
    new-array p1, p1, [Ll/d;

    iput-object p1, p0, Lb7/p;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ll/d;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    check-cast p1, Ls6/e;

    .line 4
    .line 5
    iget-object v0, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ls6/a;

    .line 8
    .line 9
    iget-object v1, p1, Ll/d;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [Ls6/a;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_1

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Ls6/a;->b()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1, v1, v0}, Ls6/e;->T([Ls6/a;Ls6/a;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Ll/d;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ls6/c;

    .line 34
    .line 35
    iget-boolean v4, p1, Ls6/e;->e:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v5, v2, Ls6/c;->b:Lz5/o;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v5, v2, Ls6/c;->d:Lz5/o;

    .line 43
    .line 44
    :goto_1
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget-object v2, v2, Ls6/c;->c:Lz5/o;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v2, v2, Ls6/c;->e:Lz5/o;

    .line 50
    .line 51
    :goto_2
    iget v4, v5, Lz5/o;->b:F

    .line 52
    .line 53
    float-to-int v4, v4

    .line 54
    invoke-virtual {p1, v4}, Ll/d;->x(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget v2, v2, Lz5/o;->b:F

    .line 59
    .line 60
    float-to-int v2, v2

    .line 61
    invoke-virtual {p1, v2}, Ll/d;->x(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v2, 0x1

    .line 66
    const/4 v5, -0x1

    .line 67
    move v7, v2

    .line 68
    move v6, v3

    .line 69
    :goto_3
    if-ge v4, p1, :cond_e

    .line 70
    .line 71
    aget-object v8, v1, v4

    .line 72
    .line 73
    if-eqz v8, :cond_d

    .line 74
    .line 75
    iget v9, v8, Ls6/a;->f:I

    .line 76
    .line 77
    sub-int v10, v9, v5

    .line 78
    .line 79
    if-nez v10, :cond_4

    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_9

    .line 84
    :cond_4
    if-ne v10, v2, :cond_5

    .line 85
    .line 86
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v5, v8, Ls6/a;->f:I

    .line 91
    .line 92
    :goto_4
    move v6, v2

    .line 93
    goto :goto_9

    .line 94
    :cond_5
    const/4 v11, 0x0

    .line 95
    if-ltz v10, :cond_c

    .line 96
    .line 97
    iget v12, v0, Ls6/a;->f:I

    .line 98
    .line 99
    if-ge v9, v12, :cond_c

    .line 100
    .line 101
    if-le v10, v4, :cond_6

    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_6
    const/4 v9, 0x2

    .line 105
    if-le v7, v9, :cond_7

    .line 106
    .line 107
    add-int/lit8 v9, v7, -0x2

    .line 108
    .line 109
    mul-int/2addr v10, v9

    .line 110
    :cond_7
    if-lt v10, v4, :cond_8

    .line 111
    .line 112
    move v9, v2

    .line 113
    goto :goto_5

    .line 114
    :cond_8
    move v9, v3

    .line 115
    :goto_5
    move v12, v2

    .line 116
    :goto_6
    if-gt v12, v10, :cond_a

    .line 117
    .line 118
    if-nez v9, :cond_a

    .line 119
    .line 120
    sub-int v9, v4, v12

    .line 121
    .line 122
    aget-object v9, v1, v9

    .line 123
    .line 124
    if-eqz v9, :cond_9

    .line 125
    .line 126
    move v9, v2

    .line 127
    goto :goto_7

    .line 128
    :cond_9
    move v9, v3

    .line 129
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_a
    if-eqz v9, :cond_b

    .line 133
    .line 134
    aput-object v11, v1, v4

    .line 135
    .line 136
    goto :goto_9

    .line 137
    :cond_b
    iget v5, v8, Ls6/a;->f:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_c
    :goto_8
    aput-object v11, v1, v4

    .line 141
    .line 142
    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_e
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb7/p;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget v1, p0, Lb7/p;->b:I

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/os/HandlerThread;

    .line 15
    .line 16
    const-string v2, "CameraThread"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v2, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "CameraThread is not open"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v1
.end method

.method public c(ZLp7/v;Ll9/l;Z)V
    .locals 6

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p2, Lp7/v;->c:I

    .line 7
    .line 8
    iget-object v1, p2, Lp7/v;->g:Lb7/p;

    .line 9
    .line 10
    iget-object v1, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lp7/v;

    .line 13
    .line 14
    iget v1, v1, Lp7/v;->c:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p2, Lp7/v;->a:Ll9/l;

    .line 21
    .line 22
    iget-wide v2, v1, Ll9/l;->c:J

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    :goto_0
    iget-wide v4, p3, Ll9/l;->c:J

    .line 35
    .line 36
    long-to-int v4, v4

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    if-lt v0, v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, v4, p1, p3}, Lp7/v;->b(IZLl9/l;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-nez v2, :cond_2

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, v0, v3, p3}, Lp7/v;->b(IZLl9/l;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-wide v2, p3, Ll9/l;->c:J

    .line 53
    .line 54
    long-to-int v0, v2

    .line 55
    int-to-long v2, v0

    .line 56
    invoke-virtual {v1, p3, v2, v3}, Ll9/l;->write(Ll9/l;J)V

    .line 57
    .line 58
    .line 59
    iget-boolean p3, p2, Lp7/v;->f:Z

    .line 60
    .line 61
    or-int/2addr p1, p3

    .line 62
    iput-boolean p1, p2, Lp7/v;->f:Z

    .line 63
    .line 64
    :goto_1
    if-eqz p4, :cond_3

    .line 65
    .line 66
    :try_start_0
    iget-object p1, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lp7/d;

    .line 69
    .line 70
    invoke-virtual {p1}, Lp7/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/p;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lb7/p;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public e(Lp7/v;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lb7/p;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lp7/v;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lp7/v;->a(I)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lb7/p;->f()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Lp7/v;->a(I)I

    .line 15
    .line 16
    .line 17
    new-instance p2, Lc9/i;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iget v0, p1, Lp7/v;->c:I

    .line 23
    .line 24
    iget-object v1, p1, Lp7/v;->g:Lb7/p;

    .line 25
    .line 26
    iget-object v1, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lp7/v;

    .line 29
    .line 30
    iget v1, v1, Lp7/v;->c:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0, p2}, Lp7/v;->c(ILc9/i;)V

    .line 37
    .line 38
    .line 39
    iget p1, p2, Lc9/i;->b:I

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    :try_start_0
    iget-object p1, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lp7/d;

    .line 46
    .line 47
    invoke-virtual {p1}, Lp7/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public f()V
    .locals 13

    .line 1
    iget-object v0, p0, Lb7/p;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp7/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp7/n;->i()[Lp7/v;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lb7/p;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp7/v;

    .line 19
    .line 20
    iget v2, v2, Lp7/v;->c:I

    .line 21
    .line 22
    array-length v3, v1

    .line 23
    :goto_0
    const/4 v4, 0x0

    .line 24
    if-lez v3, :cond_3

    .line 25
    .line 26
    if-lez v2, :cond_3

    .line 27
    .line 28
    int-to-float v5, v2

    .line 29
    int-to-float v6, v3

    .line 30
    div-float/2addr v5, v6

    .line 31
    float-to-double v5, v5

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    double-to-int v5, v5

    .line 37
    move v6, v4

    .line 38
    move v7, v6

    .line 39
    :goto_1
    if-ge v7, v3, :cond_2

    .line 40
    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    aget-object v8, v1, v7

    .line 44
    .line 45
    iget v9, v8, Lp7/v;->c:I

    .line 46
    .line 47
    iget-object v10, v8, Lp7/v;->a:Ll9/l;

    .line 48
    .line 49
    iget-wide v11, v10, Ll9/l;->c:J

    .line 50
    .line 51
    long-to-int v11, v11

    .line 52
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    iget v11, v8, Lp7/v;->d:I

    .line 61
    .line 62
    sub-int/2addr v9, v11

    .line 63
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-lez v9, :cond_0

    .line 72
    .line 73
    iget v11, v8, Lp7/v;->d:I

    .line 74
    .line 75
    add-int/2addr v11, v9

    .line 76
    iput v11, v8, Lp7/v;->d:I

    .line 77
    .line 78
    sub-int/2addr v2, v9

    .line 79
    :cond_0
    iget v9, v8, Lp7/v;->c:I

    .line 80
    .line 81
    iget-wide v10, v10, Ll9/l;->c:J

    .line 82
    .line 83
    long-to-int v10, v10

    .line 84
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    iget v10, v8, Lp7/v;->d:I

    .line 93
    .line 94
    sub-int/2addr v9, v10

    .line 95
    if-lez v9, :cond_1

    .line 96
    .line 97
    add-int/lit8 v9, v6, 0x1

    .line 98
    .line 99
    aput-object v8, v1, v6

    .line 100
    .line 101
    move v6, v9

    .line 102
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move v3, v6

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    new-instance v1, Lc9/i;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lp7/n;->i()[Lp7/v;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    array-length v2, v0

    .line 117
    move v3, v4

    .line 118
    :goto_2
    if-ge v3, v2, :cond_4

    .line 119
    .line 120
    aget-object v5, v0, v3

    .line 121
    .line 122
    iget v6, v5, Lp7/v;->d:I

    .line 123
    .line 124
    invoke-virtual {v5, v6, v1}, Lp7/v;->c(ILc9/i;)V

    .line 125
    .line 126
    .line 127
    iput v4, v5, Lp7/v;->d:I

    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget v0, v1, Lc9/i;->b:I

    .line 133
    .line 134
    if-lez v0, :cond_5

    .line 135
    .line 136
    :try_start_0
    iget-object v0, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lp7/d;

    .line 139
    .line 140
    invoke-virtual {v0}, Lp7/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lb7/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget v0, p0, Lb7/p;->b:I

    .line 12
    .line 13
    iget-object v1, p0, Lb7/p;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [Ll/d;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget-object v3, v1, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x1

    .line 23
    .line 24
    aget-object v3, v1, v3

    .line 25
    .line 26
    :cond_0
    new-instance v4, Ljava/util/Formatter;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 29
    .line 30
    .line 31
    move v5, v2

    .line 32
    :goto_0
    :try_start_0
    iget-object v6, v3, Ll/d;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, [Ls6/a;

    .line 35
    .line 36
    array-length v6, v6

    .line 37
    if-ge v5, v6, :cond_4

    .line 38
    .line 39
    const-string v6, "CW %3d:"

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 50
    .line 51
    .line 52
    move v6, v2

    .line 53
    :goto_1
    add-int/lit8 v7, v0, 0x2

    .line 54
    .line 55
    if-ge v6, v7, :cond_3

    .line 56
    .line 57
    aget-object v7, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const-string v8, "    |   "

    .line 60
    .line 61
    if-nez v7, :cond_1

    .line 62
    .line 63
    :try_start_1
    new-array v7, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v4, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    iget-object v7, v7, Ll/d;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v7, [Ls6/a;

    .line 74
    .line 75
    aget-object v7, v7, v5

    .line 76
    .line 77
    if-nez v7, :cond_2

    .line 78
    .line 79
    new-array v7, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {v4, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const-string v8, " %3d|%3d"

    .line 86
    .line 87
    iget v9, v7, Ls6/a;->f:I

    .line 88
    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    iget v7, v7, Ls6/a;->e:I

    .line 94
    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    filled-new-array {v9, v7}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v4, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 104
    .line 105
    .line 106
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const-string v6, "%n"

    .line 110
    .line 111
    new-array v7, v2, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    :catchall_1
    move-exception v1

    .line 129
    :try_start_3
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_2
    move-exception v2

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :goto_4
    throw v1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
