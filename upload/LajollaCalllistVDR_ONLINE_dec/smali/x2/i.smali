.class public final Lx2/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lx2/m;


# direct methods
.method public synthetic constructor <init>(Lx2/m;I)V
    .locals 0

    iput p2, p0, Lx2/i;->b:I

    iput-object p1, p0, Lx2/i;->c:Lx2/m;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lx2/i;->b:I

    const v1, 0x7fffffff

    iget-object v2, p0, Lx2/i;->c:Lx2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v2, Lx2/k;

    iget-wide v2, v2, Lx2/k;->c:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    return v0

    :goto_1
    check-cast v2, Lx2/y;

    iget-boolean v0, v2, Lx2/y;->c:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lx2/y;->b:Lx2/k;

    iget-wide v2, v0, Lx2/k;->c:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lx2/i;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object v0, p0, Lx2/i;->c:Lx2/m;

    check-cast v0, Lx2/y;

    invoke-virtual {v0}, Lx2/y;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 7

    iget v0, p0, Lx2/i;->b:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lx2/i;->c:Lx2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    check-cast v4, Lx2/k;

    .line 11
    iget-wide v5, v4, Lx2/k;->c:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_0

    .line 12
    invoke-virtual {v4}, Lx2/k;->L()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    :cond_0
    return v1

    .line 13
    :goto_0
    check-cast v4, Lx2/y;

    iget-boolean v0, v4, Lx2/y;->c:Z

    if-nez v0, :cond_2

    .line 14
    iget-object v0, v4, Lx2/y;->b:Lx2/k;

    iget-wide v5, v0, Lx2/k;->c:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_1

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 15
    iget-object v4, v4, Lx2/y;->d:Lx2/d0;

    invoke-interface {v4, v0, v2, v3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lx2/k;->L()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    :goto_1
    return v1

    .line 17
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Lx2/i;->b:I

    iget-object v1, p0, Lx2/i;->c:Lx2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "sink"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast v1, Lx2/k;

    invoke-virtual {v1, p1, p2, p3}, Lx2/k;->R([BII)I

    move-result p1

    return p1

    :goto_0
    const-string v0, "data"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v1, Lx2/y;

    iget-boolean v0, v1, Lx2/y;->c:Z

    if-nez v0, :cond_1

    .line 5
    array-length v0, p1

    int-to-long v2, v0

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/slider/h;->z(JJJ)V

    .line 6
    iget-object v0, v1, Lx2/y;->b:Lx2/k;

    iget-wide v2, v0, Lx2/k;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 7
    iget-object v1, v1, Lx2/y;->d:Lx2/d0;

    invoke-interface {v1, v0, v2, v3}, Lx2/d0;->read(Lx2/k;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lx2/k;->R([BII)I

    move-result p1

    :goto_1
    return p1

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lx2/i;->b:I

    const-string v1, ".inputStream()"

    iget-object v2, p0, Lx2/i;->c:Lx2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lx2/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lx2/y;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
