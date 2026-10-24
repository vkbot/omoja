.class public final Ls/p;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/p$a;
    }
.end annotation


# instance fields
.field public Z:I

.field public final b1:Lm/b;

.field public volatile c:[B

.field public r:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lm/b;)V
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Ls/p;->y:I

    iput-object p2, p0, Ls/p;->b1:Lm/b;

    const-class p1, [B

    const/high16 v0, 0x10000

    invoke-interface {p2, p1, v0}, Lm/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Ls/p;->c:[B

    return-void
.end method

.method public static c()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;[B)I
    .locals 5

    iget v0, p0, Ls/p;->y:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v3, p0, Ls/p;->Z:I

    sub-int/2addr v3, v0

    iget v4, p0, Ls/p;->x:I

    if-lt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_2

    array-length v2, p2

    if-le v4, v2, :cond_2

    iget v2, p0, Ls/p;->r:I

    array-length v3, p2

    if-ne v2, v3, :cond_2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    iget-object v0, p0, Ls/p;->b1:Lm/b;

    const-class v2, [B

    invoke-interface {v0, v2, v4}, Lm/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ls/p;->c:[B

    iget-object v2, p0, Ls/p;->b1:Lm/b;

    invoke-interface {v2, p2}, Lm/b;->d(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    iget v0, p0, Ls/p;->Z:I

    iget v2, p0, Ls/p;->y:I

    sub-int/2addr v0, v2

    iput v0, p0, Ls/p;->Z:I

    iput v1, p0, Ls/p;->y:I

    iput v1, p0, Ls/p;->r:I

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget p2, p0, Ls/p;->Z:I

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p2, p1

    :goto_2
    iput p2, p0, Ls/p;->r:I

    return p1

    :cond_5
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_6

    iput v2, p0, Ls/p;->y:I

    iput v1, p0, Ls/p;->Z:I

    iput p1, p0, Ls/p;->r:I

    :cond_6
    return p1
.end method

.method public final declared-synchronized available()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ls/p;->c:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Ls/p;->r:I

    iget v2, p0, Ls/p;->Z:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Ls/p;->c()V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls/p;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/p;->b1:Lm/b;

    iget-object v1, p0, Ls/p;->c:[B

    invoke-interface {v0, v1}, Lm/b;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/p;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Ls/p;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/p;->b1:Lm/b;

    iget-object v2, p0, Ls/p;->c:[B

    invoke-interface {v0, v2}, Lm/b;->d(Ljava/lang/Object;)V

    iput-object v1, p0, Ls/p;->c:[B

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ls/p;->x:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ls/p;->x:I

    iget p1, p0, Ls/p;->Z:I

    iput p1, p0, Ls/p;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized read()I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls/p;->c:[B

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v3, p0, Ls/p;->Z:I

    iget v4, p0, Ls/p;->r:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_0

    .line 1
    invoke-virtual {p0, v1, v0}, Ls/p;->a(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_0

    .line 2
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ls/p;->c:[B

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ls/p;->c:[B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ls/p;->c()V

    throw v2

    :cond_2
    :goto_0
    iget v1, p0, Ls/p;->r:I

    iget v2, p0, Ls/p;->Z:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Ls/p;->Z:I

    .line 4
    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 5
    :cond_3
    monitor-exit p0

    return v5

    .line 6
    :cond_4
    :try_start_2
    invoke-static {}, Ls/p;->c()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 6
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls/p;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-nez p3, :cond_0

    .line 7
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    iget v3, p0, Ls/p;->Z:I

    iget v4, p0, Ls/p;->r:I

    if-ge v3, v4, :cond_4

    sub-int/2addr v4, v3

    if-lt v4, p3, :cond_1

    move v4, p3

    .line 8
    :cond_1
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Ls/p;->Z:I

    add-int/2addr v3, v4

    iput v3, p0, Ls/p;->Z:I

    if-eq v4, p3, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p2, v4

    sub-int v3, p3, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 10
    :cond_3
    :goto_0
    monitor-exit p0

    return v4

    :cond_4
    move v3, p3

    :goto_1
    :try_start_2
    iget v4, p0, Ls/p;->y:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 11
    array-length v4, v0

    if-lt v3, v4, :cond_6

    .line 12
    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_c

    if-ne v3, p3, :cond_5

    goto :goto_2

    :cond_5
    sub-int v5, p3, v3

    .line 13
    :goto_2
    monitor-exit p0

    return v5

    .line 14
    :cond_6
    :try_start_3
    invoke-virtual {p0, v2, v0}, Ls/p;->a(Ljava/io/InputStream;[B)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_8

    if-ne v3, p3, :cond_7

    goto :goto_3

    :cond_7
    sub-int v5, p3, v3

    .line 15
    :goto_3
    monitor-exit p0

    return v5

    :cond_8
    :try_start_4
    iget-object v4, p0, Ls/p;->c:[B

    if-eq v0, v4, :cond_a

    iget-object v0, p0, Ls/p;->c:[B

    if-eqz v0, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    invoke-static {}, Ls/p;->c()V

    throw v1

    :cond_a
    :goto_4
    iget v4, p0, Ls/p;->r:I

    iget v5, p0, Ls/p;->Z:I

    sub-int/2addr v4, v5

    if-lt v4, v3, :cond_b

    move v4, v3

    .line 17
    :cond_b
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Ls/p;->Z:I

    add-int/2addr v5, v4

    iput v5, p0, Ls/p;->Z:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    sub-int/2addr v3, v4

    if-nez v3, :cond_d

    .line 18
    monitor-exit p0

    return p3

    .line 19
    :cond_d
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_e

    sub-int/2addr p3, v3

    .line 20
    monitor-exit p0

    return p3

    :cond_e
    add-int/2addr p2, v4

    goto :goto_1

    .line 21
    :cond_f
    :try_start_6
    invoke-static {}, Ls/p;->c()V

    throw v1

    .line 22
    :cond_10
    invoke-static {}, Ls/p;->c()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 23
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    const-string v0, "Mark has been invalidated, pos: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ls/p;->c:[B

    if-eqz v1, :cond_1

    iget v1, p0, Ls/p;->y:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    iput v1, p0, Ls/p;->Z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ls/p$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Ls/p;->Z:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " markLimit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ls/p;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 8

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    monitor-exit p0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ls/p;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_5

    iget v1, p0, Ls/p;->r:I

    iget v3, p0, Ls/p;->Z:I

    sub-int v4, v1, v3

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ls/p;->Z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    int-to-long v4, v1

    int-to-long v6, v3

    sub-long/2addr v4, v6

    :try_start_1
    iput v1, p0, Ls/p;->Z:I

    iget v1, p0, Ls/p;->y:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    iget v1, p0, Ls/p;->x:I

    int-to-long v6, v1

    cmp-long v1, p1, v6

    if-gtz v1, :cond_4

    invoke-virtual {p0, v2, v0}, Ls/p;->a(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_2

    monitor-exit p0

    return-wide v4

    :cond_2
    :try_start_2
    iget v0, p0, Ls/p;->r:I

    iget v1, p0, Ls/p;->Z:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    sub-long v6, p1, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    int-to-long v0, v1

    add-long/2addr v0, p1

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ls/p;->Z:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    int-to-long p1, v0

    add-long/2addr v4, p1

    int-to-long p1, v1

    sub-long/2addr v4, p1

    :try_start_3
    iput v0, p0, Ls/p;->Z:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v4

    :cond_4
    sub-long/2addr p1, v4

    :try_start_4
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v4, p1

    monitor-exit p0

    return-wide v4

    :cond_5
    :try_start_5
    invoke-static {}, Ls/p;->c()V

    throw v1

    :cond_6
    invoke-static {}, Ls/p;->c()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
