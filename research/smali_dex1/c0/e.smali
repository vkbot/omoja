.class public final Lc0/e;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Ljava/util/ArrayDeque;


# instance fields
.field public b:Lq/x;

.field public c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lc0/p;->a:[C

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lc0/e;->d:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq/x;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq/x;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final mark(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq/x;->mark(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method

.method public final read()I
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq/x;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return v0

    .line 8
    :catch_7
    move-exception v0

    .line 9
    iput-object v0, p0, Lc0/e;->c:Ljava/io/IOException;

    .line 10
    .line 11
    throw v0
.end method

.method public final read([B)I
    .registers 3

    .line 12
    :try_start_0
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 13
    iput-object p1, p0, Lc0/e;->c:Ljava/io/IOException;

    .line 14
    throw p1
.end method

.method public final read([BII)I
    .registers 5

    .line 15
    :try_start_0
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    invoke-virtual {v0, p1, p2, p3}, Lq/x;->read([BII)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 16
    iput-object p1, p0, Lc0/e;->c:Ljava/io/IOException;

    .line 17
    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 3
    .line 4
    invoke-virtual {v0}, Lq/x;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    .line 11
    throw v0
.end method

.method public final skip(J)J
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lc0/e;->b:Lq/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lq/x;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-wide p1

    .line 8
    :catch_7
    move-exception p1

    .line 9
    iput-object p1, p0, Lc0/e;->c:Ljava/io/IOException;

    .line 10
    .line 11
    throw p1
.end method
