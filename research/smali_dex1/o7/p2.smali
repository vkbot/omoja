.class public final Lo7/p2;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:I

.field public final c:Lo7/t4;

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILo7/t4;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lo7/p2;->f:J

    .line 7
    .line 8
    iput p2, p0, Lo7/p2;->b:I

    .line 9
    .line 10
    iput-object p3, p0, Lo7/p2;->c:Lo7/t4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lo7/p2;->e:J

    .line 2
    .line 3
    iget-wide v2, p0, Lo7/p2;->d:J

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_1d

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-object v2, p0, Lo7/p2;->c:Lo7/t4;

    .line 11
    .line 12
    iget-object v2, v2, Lo7/t4;->a:[Ln7/e;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_f
    if-ge v4, v3, :cond_19

    .line 17
    .line 18
    aget-object v5, v2, v4

    .line 19
    .line 20
    invoke-virtual {v5, v0, v1}, Ln7/e;->k(J)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_f

    .line 26
    :cond_19
    iget-wide v0, p0, Lo7/p2;->e:J

    .line 27
    .line 28
    iput-wide v0, p0, Lo7/p2;->d:J

    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public final c()V
    .registers 6

    .line 1
    iget-wide v0, p0, Lo7/p2;->e:J

    .line 2
    .line 3
    iget v2, p0, Lo7/p2;->b:I

    .line 4
    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v0, v0, v3

    .line 7
    .line 8
    if-gtz v0, :cond_a

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v0, Ln7/f1;->j:Ln7/f1;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Decompressed gRPC message exceeds maximum size "

    .line 16
    .line 17
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ln7/f1;->a()Ln7/h1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    throw v0
.end method

.method public final declared-synchronized mark(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lo7/p2;->e:J

    .line 8
    .line 9
    iput-wide v0, p0, Lo7/p2;->f:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    .line 15
    throw p1
.end method

.method public final read()I
    .registers 6

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_10

    .line 9
    .line 10
    iget-wide v1, p0, Lo7/p2;->e:J

    .line 11
    .line 12
    const-wide/16 v3, 0x1

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    iput-wide v1, p0, Lo7/p2;->e:J

    .line 16
    .line 17
    :cond_10
    invoke-virtual {p0}, Lo7/p2;->c()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lo7/p2;->b()V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public final read([BII)I
    .registers 6

    .line 24
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    .line 25
    iget-wide p2, p0, Lo7/p2;->e:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo7/p2;->e:J

    .line 26
    :cond_f
    invoke-virtual {p0}, Lo7/p2;->c()V

    .line 27
    invoke-virtual {p0}, Lo7/p2;->b()V

    return p1
.end method

.method public final declared-synchronized reset()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_26

    .line 9
    .line 10
    iget-wide v0, p0, Lo7/p2;->f:J

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_1e

    .line 17
    .line 18
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lo7/p2;->f:J

    .line 24
    .line 25
    iput-wide v0, p0, Lo7/p2;->e:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    goto :goto_2e

    .line 31
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v1, "Mark not set"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_26
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v1, "Mark not supported"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_1c

    .line 48
    throw v0
.end method

.method public final skip(J)J
    .registers 5

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-wide v0, p0, Lo7/p2;->e:J

    .line 8
    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lo7/p2;->e:J

    .line 11
    .line 12
    invoke-virtual {p0}, Lo7/p2;->c()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lo7/p2;->b()V

    .line 16
    .line 17
    .line 18
    return-wide p1
.end method
