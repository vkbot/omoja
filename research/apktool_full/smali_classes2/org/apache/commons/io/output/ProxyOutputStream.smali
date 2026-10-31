.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/ProxyOutputStream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/output/ProxyOutputStream$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterWrite(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeWrite(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/io/input/j;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, v2, p0}, Lorg/apache/commons/io/input/j;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;Lorg/apache/commons/io/function/IOConsumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public handleIOException(Ljava/io/IOException;)V
    .locals 0

    .line 1
    throw p1
.end method

.method public setReference(Ljava/io/OutputStream;)Lorg/apache/commons/io/output/ProxyOutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public unwrap()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(I)V
    .locals 2

    const/4 v0, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 27
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 28
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->length([B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 22
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 23
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 24
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method public writeRepeat(IJ)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write(I)V

    move-wide p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeRepeat([BIIJ)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    sub-long v0, p4, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p4, p4, v2

    .line 8
    .line 9
    if-lez p4, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    .line 12
    .line 13
    .line 14
    move-wide p4, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public writeRepeat([BJ)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-lez p2, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([B)V

    move-wide p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
