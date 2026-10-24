.class public Ln4/a;
.super Ln4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/a$b;,
        Ln4/a$a;
    }
.end annotation


# static fields
.field public static final synthetic Z:I


# instance fields
.field public c:J

.field public r:J

.field public final x:J

.field public final y:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln4/a;->c:J

    iput-wide p2, p0, Ln4/a;->x:J

    iput-boolean p4, p0, Ln4/a;->y:Z

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    invoke-virtual {p0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln4/a;->d()J

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized c(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Ln4/a;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln4/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Ln4/a;->y:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized d()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ln4/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ln4/a;->x:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-wide v0, p0, Ln4/a;->c:J

    iput-wide v0, p0, Ln4/a;->r:J
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

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln4/a;->d()J

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-super {p0}, Ln4/e;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln4/a;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 6

    .line 5
    invoke-virtual {p0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Ln4/a;->d()J

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v0, p3

    iget-wide v2, p0, Ln4/a;->x:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-ltz p3, :cond_1

    .line 7
    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    long-to-int p3, v0

    .line 8
    invoke-super {p0, p1, p2, p3}, Ln4/e;->read([BII)I

    move-result p0

    return p0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Ln4/a;->r:J

    iput-wide v0, p0, Ln4/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ln4/a;->x:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Ln4/a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ln4/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
