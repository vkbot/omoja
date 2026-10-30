.class public abstract Lo7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract S(I)Lo7/c;
.end method

.method public abstract V(Ljava/io/OutputStream;I)V
.end method

.method public final b(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo7/c;->f0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract c0(Ljava/nio/ByteBuffer;)V
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d0([BII)V
.end method

.method public abstract e0()I
.end method

.method public abstract f0()I
.end method

.method public g0()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public abstract h0(I)V
.end method

.method public y()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lo7/j3;

    .line 2
    .line 3
    return v0
.end method
