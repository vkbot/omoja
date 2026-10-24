.class public final Lx2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b0;


# instance fields
.field public b:Z

.field public final c:Lx2/l;

.field public final d:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Lx2/k;Ljava/util/zip/Deflater;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/material/slider/h;->q(Lx2/b0;)Lx2/x;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/o;->c:Lx2/l;

    iput-object p2, p0, Lx2/o;->d:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lx2/o;->d:Ljava/util/zip/Deflater;

    iget-boolean v1, p0, Lx2/o;->b:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lx2/o;->z(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lx2/o;->c:Lx2/l;

    invoke-interface {v0}, Lx2/b0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx2/o;->b:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    throw v1
.end method

.method public final flush()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lx2/o;->z(Z)V

    iget-object v0, p0, Lx2/o;->c:Lx2/l;

    invoke-interface {v0}, Lx2/l;->flush()V

    return-void
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    iget-object v0, p0, Lx2/o;->c:Lx2/l;

    invoke-interface {v0}, Lx2/b0;->timeout()Lx2/g0;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeflaterSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx2/o;->c:Lx2/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lx2/k;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p1, Lx2/k;->c:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/slider/h;->z(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lx2/k;->b:Lx2/z;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v1, v0, Lx2/z;->c:I

    iget v2, v0, Lx2/z;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lx2/z;->a:[B

    iget v3, v0, Lx2/z;->b:I

    iget-object v4, p0, Lx2/o;->d:Ljava/util/zip/Deflater;

    invoke-virtual {v4, v2, v3, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lx2/o;->z(Z)V

    iget-wide v2, p1, Lx2/k;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lx2/k;->c:J

    iget v2, v0, Lx2/z;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lx2/z;->b:I

    iget v1, v0, Lx2/z;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lx2/z;->a()Lx2/z;

    move-result-object v1

    iput-object v1, p1, Lx2/k;->b:Lx2/z;

    invoke-static {v0}, Lx2/a0;->a(Lx2/z;)V

    :cond_0
    sub-long/2addr p2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final z(Z)V
    .locals 8

    iget-object v0, p0, Lx2/o;->c:Lx2/l;

    invoke-interface {v0}, Lx2/l;->a()Lx2/k;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lx2/k;->Y(I)Lx2/z;

    move-result-object v2

    iget-object v3, p0, Lx2/o;->d:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lx2/z;->a:[B

    if-eqz p1, :cond_1

    iget v5, v2, Lx2/z;->c:I

    rsub-int v6, v5, 0x2000

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v4

    goto :goto_1

    :cond_1
    iget v5, v2, Lx2/z;->c:I

    rsub-int v6, v5, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v4

    :goto_1
    if-lez v4, :cond_2

    iget v3, v2, Lx2/z;->c:I

    add-int/2addr v3, v4

    iput v3, v2, Lx2/z;->c:I

    iget-wide v2, v1, Lx2/k;->c:J

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lx2/k;->c:J

    invoke-interface {v0}, Lx2/l;->g()Lx2/l;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Lx2/z;->b:I

    iget v0, v2, Lx2/z;->c:I

    if-ne p1, v0, :cond_3

    invoke-virtual {v2}, Lx2/z;->a()Lx2/z;

    move-result-object p1

    iput-object p1, v1, Lx2/k;->b:Lx2/z;

    invoke-static {v2}, Lx2/a0;->a(Lx2/z;)V

    :cond_3
    return-void
.end method
