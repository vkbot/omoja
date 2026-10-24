.class public final Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lp2/g0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp2/d;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp2/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp2/f;Lp2/b0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp2/d;->a:I

    .line 2
    iput-object p1, p0, Lp2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp2/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget v0, p0, Lp2/d;->a:I

    iget-object v1, p0, Lp2/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lp2/f;

    invoke-virtual {v1}, Lp2/f;->enter()V

    :try_start_0
    iget-object p0, p0, Lp2/d;->c:Ljava/lang/Object;

    check-cast p0, Lp2/b0;

    invoke-interface {p0}, Lp2/b0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lp2/f;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lp2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lp2/f;->exit()Z

    throw p0

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
    .locals 2

    iget v0, p0, Lp2/d;->a:I

    iget-object v1, p0, Lp2/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lp2/f;

    invoke-virtual {v1}, Lp2/f;->enter()V

    :try_start_0
    iget-object p0, p0, Lp2/d;->c:Ljava/lang/Object;

    check-cast p0, Lp2/b0;

    invoke-interface {p0}, Lp2/b0;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lp2/f;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Lp2/f;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lp2/f;->exit()Z

    throw p0

    :goto_2
    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lp2/g0;
    .locals 1

    iget v0, p0, Lp2/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lp2/d;->b:Ljava/lang/Object;

    check-cast p0, Lp2/f;

    return-object p0

    :goto_0
    iget-object p0, p0, Lp2/d;->c:Ljava/lang/Object;

    check-cast p0, Lp2/g0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lp2/d;->a:I

    const/16 v1, 0x29

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AsyncTimeout.sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lp2/d;->c:Ljava/lang/Object;

    check-cast p0, Lp2/b0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sink("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lp2/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lp2/k;J)V
    .locals 11

    iget v0, p0, Lp2/d;->a:I

    iget-object v1, p0, Lp2/d;->c:Ljava/lang/Object;

    iget-object p0, p0, Lp2/d;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const-string v4, "source"

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-static {p1, v4}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v5, p1, Lp2/k;->b:J

    const-wide/16 v7, 0x0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Ly1/l;->z(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_4

    iget-object v0, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    move-wide v4, v2

    :goto_1
    const/high16 v6, 0x10000

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    iget v6, v0, Lp2/z;->c:I

    iget v7, v0, Lp2/z;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v4, p2

    if-ltz v6, :cond_0

    move-wide v4, p2

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lp2/z;->f:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    move-object v0, p0

    check-cast v0, Lp2/f;

    invoke-virtual {v0}, Lp2/f;->enter()V

    :try_start_0
    move-object v6, v1

    check-cast v6, Lp2/b0;

    invoke-interface {v6, p1, v4, v5}, Lp2/b0;->write(Lp2/k;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lp2/f;->exit()Z

    move-result v6

    if-nez v6, :cond_2

    sub-long/2addr p2, v4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lp2/f;->exit()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p0}, Lp2/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_3
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v0}, Lp2/f;->exit()Z

    throw p0

    :cond_4
    return-void

    :goto_5
    invoke-static {p1, v4}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p1, Lp2/k;->b:J

    const-wide/16 v6, 0x0

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Ly1/l;->z(JJJ)V

    :cond_5
    :goto_6
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    move-object v0, v1

    check-cast v0, Lp2/g0;

    invoke-virtual {v0}, Lp2/g0;->throwIfReached()V

    iget-object v0, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v4, v0, Lp2/z;->c:I

    iget v5, v0, Lp2/z;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    move-object v5, p0

    check-cast v5, Ljava/io/OutputStream;

    iget-object v6, v0, Lp2/z;->a:[B

    iget v7, v0, Lp2/z;->b:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    iget v5, v0, Lp2/z;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Lp2/z;->b:I

    int-to-long v6, v4

    sub-long/2addr p2, v6

    iget-wide v8, p1, Lp2/k;->b:J

    sub-long/2addr v8, v6

    iput-wide v8, p1, Lp2/k;->b:J

    iget v4, v0, Lp2/z;->c:I

    if-ne v5, v4, :cond_5

    invoke-virtual {v0}, Lp2/z;->a()Lp2/z;

    move-result-object v4

    iput-object v4, p1, Lp2/k;->a:Lp2/z;

    invoke-static {v0}, Lp2/a0;->a(Lp2/z;)V

    goto :goto_6

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
