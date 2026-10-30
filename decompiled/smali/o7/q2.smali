.class public final Lo7/q2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Lo7/b1;

.field public c:I

.field public final d:Lo7/t4;

.field public final e:Lo7/w4;

.field public f:Ln7/h;

.field public g:[B

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lo7/b0;

.field public m:Lo7/b0;

.field public n:J

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public volatile s:Z


# direct methods
.method public constructor <init>(Lo7/b1;ILo7/t4;Lo7/w4;)V
    .locals 3

    .line 1
    sget-object v0, Ln7/h;->c:Ln7/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lo7/q2;->i:I

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    iput v1, p0, Lo7/q2;->j:I

    .line 11
    .line 12
    new-instance v1, Lo7/b0;

    .line 13
    .line 14
    invoke-direct {v1}, Lo7/b0;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lo7/q2;->m:Lo7/b0;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lo7/q2;->o:Z

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lo7/q2;->p:I

    .line 24
    .line 25
    iput-boolean v1, p0, Lo7/q2;->r:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lo7/q2;->s:Z

    .line 28
    .line 29
    iput-object p1, p0, Lo7/q2;->b:Lo7/b1;

    .line 30
    .line 31
    iput-object v0, p0, Lo7/q2;->f:Ln7/h;

    .line 32
    .line 33
    iput p2, p0, Lo7/q2;->c:I

    .line 34
    .line 35
    iput-object p3, p0, Lo7/q2;->d:Lo7/t4;

    .line 36
    .line 37
    const-string p1, "transportTracer"

    .line 38
    .line 39
    invoke-static {p4, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p4, p0, Lo7/q2;->e:Lo7/w4;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lo7/q2;->d:Lo7/t4;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lo7/q2;->l:Lo7/b0;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    new-instance v3, Lo7/b0;

    .line 10
    .line 11
    invoke-direct {v3}, Lo7/b0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v3, p0, Lo7/q2;->l:Lo7/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v3

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    move v3, v2

    .line 20
    :goto_1
    :try_start_1
    iget v4, p0, Lo7/q2;->j:I

    .line 21
    .line 22
    iget-object v5, p0, Lo7/q2;->l:Lo7/b0;

    .line 23
    .line 24
    iget v5, v5, Lo7/b0;->d:I

    .line 25
    .line 26
    sub-int/2addr v4, v5

    .line 27
    if-lez v4, :cond_3

    .line 28
    .line 29
    iget-object v5, p0, Lo7/q2;->m:Lo7/b0;

    .line 30
    .line 31
    iget v5, v5, Lo7/b0;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    iget-object v4, p0, Lo7/q2;->b:Lo7/b1;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Lo7/b1;->a(I)V

    .line 40
    .line 41
    .line 42
    iget v4, p0, Lo7/q2;->i:I

    .line 43
    .line 44
    if-ne v4, v1, :cond_1

    .line 45
    .line 46
    :goto_2
    int-to-long v4, v3

    .line 47
    invoke-virtual {v0, v4, v5}, Lo7/t4;->a(J)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lo7/q2;->q:I

    .line 51
    .line 52
    add-int/2addr v0, v3

    .line 53
    iput v0, p0, Lo7/q2;->q:I

    .line 54
    .line 55
    :cond_1
    return v2

    .line 56
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr v3, v4

    .line 61
    iget-object v5, p0, Lo7/q2;->l:Lo7/b0;

    .line 62
    .line 63
    iget-object v6, p0, Lo7/q2;->m:Lo7/b0;

    .line 64
    .line 65
    invoke-virtual {v6, v4}, Lo7/b0;->S(I)Lo7/c;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v5, v4}, Lo7/b0;->i0(Lo7/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception v2

    .line 74
    move v7, v3

    .line 75
    move-object v3, v2

    .line 76
    move v2, v7

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v2, 0x1

    .line 79
    if-lez v3, :cond_4

    .line 80
    .line 81
    iget-object v4, p0, Lo7/q2;->b:Lo7/b1;

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Lo7/b1;->a(I)V

    .line 84
    .line 85
    .line 86
    iget v4, p0, Lo7/q2;->i:I

    .line 87
    .line 88
    if-ne v4, v1, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    return v2

    .line 92
    :goto_3
    if-lez v2, :cond_5

    .line 93
    .line 94
    iget-object v4, p0, Lo7/q2;->b:Lo7/b1;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Lo7/b1;->a(I)V

    .line 97
    .line 98
    .line 99
    iget v4, p0, Lo7/q2;->i:I

    .line 100
    .line 101
    if-ne v4, v1, :cond_5

    .line 102
    .line 103
    int-to-long v4, v2

    .line 104
    invoke-virtual {v0, v4, v5}, Lo7/t4;->a(J)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lo7/q2;->q:I

    .line 108
    .line 109
    add-int/2addr v0, v2

    .line 110
    iput v0, p0, Lo7/q2;->q:I

    .line 111
    .line 112
    :cond_5
    throw v3
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo7/q2;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lo7/q2;->o:Z

    .line 8
    .line 9
    :goto_0
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-boolean v2, p0, Lo7/q2;->s:Z

    .line 11
    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    iget-wide v2, p0, Lo7/q2;->n:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-lez v2, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0}, Lo7/q2;->S()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    iget v2, p0, Lo7/q2;->i:I

    .line 29
    .line 30
    invoke-static {v2}, Lcom/bumptech/glide/g;->c(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-ne v2, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lo7/q2;->c()V

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Lo7/q2;->n:J

    .line 42
    .line 43
    const-wide/16 v4, 0x1

    .line 44
    .line 45
    sub-long/2addr v2, v4

    .line 46
    iput-wide v2, p0, Lo7/q2;->n:J

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "Invalid state: "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v3, p0, Lo7/q2;->i:I

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    if-eq v3, v4, :cond_3

    .line 67
    .line 68
    const/4 v4, 0x2

    .line 69
    if-eq v3, v4, :cond_2

    .line 70
    .line 71
    const-string v3, "null"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v3, "BODY"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string v3, "HEADER"

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_4
    invoke-virtual {p0}, Lo7/q2;->y()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-boolean v2, p0, Lo7/q2;->s:Z

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lo7/q2;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    iput-boolean v1, p0, Lo7/q2;->o:Z

    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    :try_start_1
    iget-boolean v2, p0, Lo7/q2;->r:Z

    .line 105
    .line 106
    if-eqz v2, :cond_8

    .line 107
    .line 108
    iget-object v2, p0, Lo7/q2;->m:Lo7/b0;

    .line 109
    .line 110
    iget v2, v2, Lo7/b0;->d:I

    .line 111
    .line 112
    if-nez v2, :cond_7

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    move v0, v1

    .line 116
    :goto_2
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {p0}, Lo7/q2;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    :cond_8
    iput-boolean v1, p0, Lo7/q2;->o:Z

    .line 122
    .line 123
    return-void

    .line 124
    :goto_3
    iput-boolean v1, p0, Lo7/q2;->o:Z

    .line 125
    .line 126
    throw v0
.end method

.method public final c()V
    .locals 9

    .line 1
    iget v0, p0, Lo7/q2;->p:I

    .line 2
    .line 3
    iget v1, p0, Lo7/q2;->q:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    iget-object v3, p0, Lo7/q2;->d:Lo7/t4;

    .line 7
    .line 8
    iget-object v4, v3, Lo7/t4;->a:[Ln7/e;

    .line 9
    .line 10
    array-length v5, v4

    .line 11
    const/4 v6, 0x0

    .line 12
    move v7, v6

    .line 13
    :goto_0
    if-ge v7, v5, :cond_0

    .line 14
    .line 15
    aget-object v8, v4, v7

    .line 16
    .line 17
    invoke-virtual {v8, v0, v1, v2}, Ln7/e;->i(IJ)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v7, v7, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v6, p0, Lo7/q2;->q:I

    .line 24
    .line 25
    iget-boolean v0, p0, Lo7/q2;->k:Z

    .line 26
    .line 27
    const-string v1, "buffer"

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lo7/q2;->f:Ln7/h;

    .line 32
    .line 33
    sget-object v2, Ln7/h;->c:Ln7/h;

    .line 34
    .line 35
    if-eq v0, v2, :cond_1

    .line 36
    .line 37
    :try_start_0
    iget-object v2, p0, Lo7/q2;->l:Lo7/b0;

    .line 38
    .line 39
    sget-object v4, Lo7/k3;->a:Lo7/j3;

    .line 40
    .line 41
    new-instance v4, Lo7/i3;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/io/InputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v4, Lo7/i3;->b:Lo7/c;

    .line 50
    .line 51
    iget v0, v0, Ln7/h;->b:I

    .line 52
    .line 53
    packed-switch v0, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 57
    .line 58
    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    move-object v4, v0

    .line 62
    :pswitch_0
    new-instance v0, Lo7/p2;

    .line 63
    .line 64
    iget v1, p0, Lo7/q2;->c:I

    .line 65
    .line 66
    invoke-direct {v0, v4, v1, v3}, Lo7/p2;-><init>(Ljava/io/InputStream;ILo7/t4;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 76
    .line 77
    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ln7/f1;->a()Ln7/h1;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    throw v0

    .line 88
    :cond_2
    iget-object v0, p0, Lo7/q2;->l:Lo7/b0;

    .line 89
    .line 90
    iget v0, v0, Lo7/b0;->d:I

    .line 91
    .line 92
    int-to-long v4, v0

    .line 93
    iget-object v0, v3, Lo7/t4;->a:[Ln7/e;

    .line 94
    .line 95
    array-length v2, v0

    .line 96
    :goto_1
    if-ge v6, v2, :cond_3

    .line 97
    .line 98
    aget-object v3, v0, v6

    .line 99
    .line 100
    invoke-virtual {v3, v4, v5}, Ln7/e;->k(J)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lo7/q2;->l:Lo7/b0;

    .line 107
    .line 108
    sget-object v2, Lo7/k3;->a:Lo7/j3;

    .line 109
    .line 110
    new-instance v2, Lo7/i3;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, v2, Lo7/i3;->b:Lo7/c;

    .line 119
    .line 120
    move-object v0, v2

    .line 121
    :goto_2
    iget-object v1, p0, Lo7/q2;->l:Lo7/b0;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lo7/q2;->l:Lo7/b0;

    .line 128
    .line 129
    iget-object v1, p0, Lo7/q2;->b:Lo7/b1;

    .line 130
    .line 131
    new-instance v2, Lo7/o2;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v0, v2, Lo7/o2;->b:Ljava/io/InputStream;

    .line 137
    .line 138
    iget-object v0, v1, Lo7/b1;->j:Lo7/w;

    .line 139
    .line 140
    invoke-interface {v0, v2}, Lo7/w;->k(Lo7/o2;)V

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lo7/q2;->i:I

    .line 145
    .line 146
    const/4 v0, 0x5

    .line 147
    iput v0, p0, Lo7/q2;->j:I

    .line 148
    .line 149
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo7/q2;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lo7/q2;->l:Lo7/b0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, v0, Lo7/b0;->d:I

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v2, p0, Lo7/q2;->m:Lo7/b0;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Lo7/b0;->close()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    iget-object v2, p0, Lo7/q2;->l:Lo7/b0;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2}, Lo7/b0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lo7/q2;->m:Lo7/b0;

    .line 38
    .line 39
    iput-object v1, p0, Lo7/q2;->l:Lo7/b0;

    .line 40
    .line 41
    iget-object v1, p0, Lo7/q2;->b:Lo7/b1;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lo7/b1;->c(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_2
    iput-object v1, p0, Lo7/q2;->m:Lo7/b0;

    .line 48
    .line 49
    iput-object v1, p0, Lo7/q2;->l:Lo7/b0;

    .line 50
    .line 51
    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/q2;->m:Lo7/b0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo7/q2;->l:Lo7/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/b0;->e0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit16 v1, v0, 0xfe

    .line 8
    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    iput-boolean v0, p0, Lo7/q2;->k:Z

    .line 20
    .line 21
    iget-object v0, p0, Lo7/q2;->l:Lo7/b0;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-virtual {v0, v3}, Lo7/c;->b(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lo7/b0;->e0()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Lo7/b0;->e0()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Lo7/b0;->e0()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Lo7/b0;->e0()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    shl-int/lit8 v3, v3, 0x18

    .line 44
    .line 45
    shl-int/lit8 v4, v4, 0x10

    .line 46
    .line 47
    or-int/2addr v3, v4

    .line 48
    shl-int/lit8 v4, v5, 0x8

    .line 49
    .line 50
    or-int/2addr v3, v4

    .line 51
    or-int/2addr v0, v3

    .line 52
    iput v0, p0, Lo7/q2;->j:I

    .line 53
    .line 54
    if-ltz v0, :cond_2

    .line 55
    .line 56
    iget v3, p0, Lo7/q2;->c:I

    .line 57
    .line 58
    if-gt v0, v3, :cond_2

    .line 59
    .line 60
    iget v0, p0, Lo7/q2;->p:I

    .line 61
    .line 62
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lo7/q2;->p:I

    .line 64
    .line 65
    iget-object v1, p0, Lo7/q2;->d:Lo7/t4;

    .line 66
    .line 67
    iget-object v1, v1, Lo7/t4;->a:[Ln7/e;

    .line 68
    .line 69
    array-length v3, v1

    .line 70
    :goto_1
    if-ge v2, v3, :cond_1

    .line 71
    .line 72
    aget-object v4, v1, v2

    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ln7/e;->h(I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v0, p0, Lo7/q2;->e:Lo7/w4;

    .line 81
    .line 82
    iget-object v1, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lo7/r1;

    .line 85
    .line 86
    invoke-interface {v1}, Lo7/r1;->a()V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Lo7/w4;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lo7/u2;

    .line 92
    .line 93
    invoke-virtual {v0}, Lo7/u2;->q()J

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lo7/q2;->i:I

    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    sget-object v1, Ln7/f1;->j:Ln7/f1;

    .line 101
    .line 102
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    .line 104
    iget v2, p0, Lo7/q2;->c:I

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "gRPC message exceeds maximum size "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, ": "

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ln7/f1;->a()Ln7/h1;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    throw v0

    .line 137
    :cond_3
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 138
    .line 139
    const-string v1, "gRPC frame header malformed: reserved bits not zero"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ln7/f1;->a()Ln7/h1;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    throw v0
.end method
