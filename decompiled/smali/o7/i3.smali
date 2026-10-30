.class public final Lo7/i3;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/d0;


# instance fields
.field public b:Lo7/c;


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/c;->f0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lo7/c;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/c;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final read()I
    .locals 2

    .line 23
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    invoke-virtual {v0}, Lo7/c;->f0()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lo7/c;->e0()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/c;->f0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lo7/c;->f0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lo7/c;->d0([BII)V

    .line 20
    .line 21
    .line 22
    return p3
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/c;->g0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lo7/i3;->b:Lo7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo7/c;->f0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    long-to-int p1, p1

    .line 13
    invoke-virtual {v0, p1}, Lo7/c;->h0(I)V

    .line 14
    .line 15
    .line 16
    int-to-long p1, p1

    .line 17
    return-wide p1
.end method
