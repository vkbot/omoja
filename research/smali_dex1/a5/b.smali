.class public final La5/b;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:J


# virtual methods
.method public final write(I)V
    .registers 6

    .line 28
    iget-wide v0, p0, La5/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La5/b;->b:J

    return-void
.end method

.method public final write([B)V
    .registers 6

    .line 27
    iget-wide v0, p0, La5/b;->b:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, La5/b;->b:J

    return-void
.end method

.method public final write([BII)V
    .registers 6

    .line 1
    if-ltz p2, :cond_14

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-gt p2, v0, :cond_14

    .line 5
    .line 6
    if-ltz p3, :cond_14

    .line 7
    .line 8
    add-int/2addr p2, p3

    .line 9
    array-length p1, p1

    .line 10
    if-gt p2, p1, :cond_14

    .line 11
    .line 12
    if-ltz p2, :cond_14

    .line 13
    .line 14
    iget-wide p1, p0, La5/b;->b:J

    .line 15
    .line 16
    int-to-long v0, p3

    .line 17
    add-long/2addr p1, v0

    .line 18
    iput-wide p1, p0, La5/b;->b:J

    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
