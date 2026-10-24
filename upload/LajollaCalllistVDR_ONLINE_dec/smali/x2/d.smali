.class public final Lx2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b0;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lx2/g0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx2/d;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lx2/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx2/f;Lx2/b0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx2/d;->b:I

    .line 2
    iput-object p1, p0, Lx2/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lx2/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget v0, p0, Lx2/d;->b:I

    iget-object v1, p0, Lx2/d;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lx2/f;

    invoke-virtual {v1}, Lx2/f;->enter()V

    :try_start_0
    iget-object v0, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v0, Lx2/b0;

    invoke-interface {v0}, Lx2/b0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lx2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Lx2/f;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lx2/f;->exit()Z

    throw v0

    :goto_2
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 3

    iget v0, p0, Lx2/d;->b:I

    iget-object v1, p0, Lx2/d;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lx2/f;

    invoke-virtual {v1}, Lx2/f;->enter()V

    :try_start_0
    iget-object v0, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v0, Lx2/b0;

    invoke-interface {v0}, Lx2/b0;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lx2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Lx2/f;->exit()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lx2/f;->exit()Z

    throw v0

    :goto_2
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    iget v0, p0, Lx2/d;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lx2/d;->c:Ljava/lang/Object;

    check-cast v0, Lx2/f;

    return-object v0

    :goto_0
    iget-object v0, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v0, Lx2/g0;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lx2/d;->b:I

    const/16 v1, 0x29

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AsyncTimeout.sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx2/d;->d:Ljava/lang/Object;

    check-cast v2, Lx2/b0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx2/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lx2/k;J)V
    .locals 12

    iget v0, p0, Lx2/d;->b:I

    iget-object v1, p0, Lx2/d;->d:Ljava/lang/Object;

    iget-object v2, p0, Lx2/d;->c:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const-string v5, "source"

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {p1, v5}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v6, p1, Lx2/k;->c:J

    const-wide/16 v8, 0x0

    move-wide v10, p2

    invoke-static/range {v6 .. v11}, Lcom/google/android/material/slider/h;->z(JJJ)V

    :goto_0
    cmp-long v0, p2, v3

    if-lez v0, :cond_4

    iget-object v0, p1, Lx2/k;->b:Lx2/z;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    move-wide v5, v3

    :goto_1
    const/high16 v7, 0x10000

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    iget v7, v0, Lx2/z;->c:I

    iget v8, v0, Lx2/z;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v7, v5, p2

    if-ltz v7, :cond_0

    move-wide v5, p2

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lx2/z;->f:Lx2/z;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    move-object v0, v2

    check-cast v0, Lx2/f;

    invoke-virtual {v0}, Lx2/f;->enter()V

    :try_start_0
    move-object v7, v1

    check-cast v7, Lx2/b0;

    invoke-interface {v7, p1, v5, v6}, Lx2/b0;->write(Lx2/k;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lx2/f;->exit()Z

    move-result v7

    if-nez v7, :cond_2

    sub-long/2addr p2, v5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lx2/f;->exit()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p1}, Lx2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v0}, Lx2/f;->exit()Z

    throw p1

    :cond_4
    return-void

    :goto_5
    invoke-static {p1, v5}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v5, p1, Lx2/k;->c:J

    const-wide/16 v7, 0x0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/android/material/slider/h;->z(JJJ)V

    :cond_5
    :goto_6
    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    move-object v0, v1

    check-cast v0, Lx2/g0;

    invoke-virtual {v0}, Lx2/g0;->throwIfReached()V

    iget-object v0, p1, Lx2/k;->b:Lx2/z;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v5, v0, Lx2/z;->c:I

    iget v6, v0, Lx2/z;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    move-object v6, v2

    check-cast v6, Ljava/io/OutputStream;

    iget-object v7, v0, Lx2/z;->a:[B

    iget v8, v0, Lx2/z;->b:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    iget v6, v0, Lx2/z;->b:I

    add-int/2addr v6, v5

    iput v6, v0, Lx2/z;->b:I

    int-to-long v7, v5

    sub-long/2addr p2, v7

    iget-wide v9, p1, Lx2/k;->c:J

    sub-long/2addr v9, v7

    iput-wide v9, p1, Lx2/k;->c:J

    iget v5, v0, Lx2/z;->c:I

    if-ne v6, v5, :cond_5

    invoke-virtual {v0}, Lx2/z;->a()Lx2/z;

    move-result-object v5

    iput-object v5, p1, Lx2/k;->b:Lx2/z;

    invoke-static {v0}, Lx2/a0;->a(Lx2/z;)V

    goto :goto_6

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
