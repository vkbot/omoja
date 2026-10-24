.class public Lorg/apache/commons/compress/archivers/zip/m;
.super Ljava/util/zip/InflaterInputStream;
.source "SourceFile"

# interfaces
.implements Lh4/f;


# instance fields
.field public c:J

.field public r:J


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/m;->c:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/m;->r:J

    return-wide v0
.end method

.method public final fill()V
    .locals 4

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/m;->c:J

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/m;->c:J

    return-void
.end method

.method public final read()I
    .locals 5

    .line 1
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/m;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/m;->r:J

    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/m;->r:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/m;->r:J

    :cond_0
    return p1
.end method
