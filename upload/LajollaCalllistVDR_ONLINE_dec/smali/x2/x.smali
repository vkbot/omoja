.class public final Lx2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/l;


# instance fields
.field public final b:Lx2/k;

.field public c:Z

.field public final d:Lx2/b0;


# direct methods
.method public constructor <init>(Lx2/b0;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/x;->d:Lx2/b0;

    new-instance p1, Lx2/k;

    invoke-direct {p1}, Lx2/k;-><init>()V

    iput-object p1, p0, Lx2/x;->b:Lx2/k;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lx2/l;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->k0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B(J)Lx2/l;
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1, p2}, Lx2/k;->d0(J)Lx2/k;

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(I)Lx2/l;
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->c0(I)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Lx2/d0;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    iget-object v4, p0, Lx2/x;->b:Lx2/k;

    move-object v5, p1

    check-cast v5, Lx2/e;

    invoke-virtual {v5, v4, v2, v3}, Lx2/e;->read(Lx2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    goto :goto_0
.end method

.method public final a()Lx2/k;
    .locals 1

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    return-object v0
.end method

.method public final b([B)Lx2/l;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->a0([B)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BII)Lx2/l;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1, p2, p3}, Lx2/k;->b0([BII)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lx2/x;->d:Lx2/b0;

    iget-boolean v1, p0, Lx2/x;->c:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lx2/x;->b:Lx2/k;

    iget-wide v2, v1, Lx2/k;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-interface {v0, v1, v2, v3}, Lx2/b0;->write(Lx2/k;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Lx2/b0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx2/x;->c:Z

    if-nez v1, :cond_3

    :goto_2
    return-void

    :cond_3
    throw v1
.end method

.method public final e(Lokio/ByteString;)Lx2/l;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->Z(Lokio/ByteString;)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    iget-wide v1, v0, Lx2/k;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object v4, p0, Lx2/x;->d:Lx2/b0;

    if-lez v3, :cond_0

    invoke-interface {v4, v0, v1, v2}, Lx2/b0;->write(Lx2/k;J)V

    :cond_0
    invoke-interface {v4}, Lx2/b0;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lx2/l;
    .locals 5

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->M()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lx2/x;->d:Lx2/b0;

    invoke-interface {v3, v0, v1, v2}, Lx2/b0;->write(Lx2/k;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(J)Lx2/l;
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1, p2}, Lx2/k;->e0(J)Lx2/k;

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final o()Lx2/l;
    .locals 5

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    iget-wide v1, v0, Lx2/k;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lx2/x;->d:Lx2/b0;

    invoke-interface {v3, v0, v1, v2}, Lx2/b0;->write(Lx2/k;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(I)Lx2/l;
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->h0(I)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(I)Lx2/l;
    .locals 1

    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    invoke-virtual {v0, p1}, Lx2/k;->f0(I)V

    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    iget-object v0, p0, Lx2/x;->d:Lx2/b0;

    invoke-interface {v0}, Lx2/b0;->timeout()Lx2/g0;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx2/x;->d:Lx2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    .line 3
    invoke-virtual {v0, p1}, Lx2/k;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Lx2/k;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lx2/x;->c:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lx2/x;->b:Lx2/k;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lx2/k;->write(Lx2/k;J)V

    .line 9
    invoke-virtual {p0}, Lx2/x;->g()Lx2/l;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
