.class public Lorg/apache/commons/io/output/g;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/g;->a(I)V

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1

    .line 1
    sget-object v0, Li4/c;->a:[B

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/g;->a(I)V

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 5
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/g;->a(I)V

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
