.class public final Lp2/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp2/m;


# direct methods
.method public synthetic constructor <init>(Lp2/m;I)V
    .locals 0

    iput p2, p0, Lp2/i;->a:I

    iput-object p1, p0, Lp2/i;->b:Lp2/m;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lp2/i;->a:I

    const v1, 0x7fffffff

    iget-object p0, p0, Lp2/i;->b:Lp2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lp2/k;

    iget-wide v2, p0, Lp2/k;->b:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int p0, v0

    return p0

    :goto_1
    check-cast p0, Lp2/y;

    iget-boolean v0, p0, Lp2/y;->b:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lp2/y;->a:Lp2/k;

    iget-wide v2, p0, Lp2/k;->b:J

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lp2/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Lp2/i;->b:Lp2/m;

    check-cast p0, Lp2/y;

    invoke-virtual {p0}, Lp2/y;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 6

    iget v0, p0, Lp2/i;->a:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lp2/i;->b:Lp2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    check-cast p0, Lp2/k;

    .line 11
    iget-wide v4, p0, Lp2/k;->b:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lp2/k;->R()B

    move-result p0

    and-int/lit16 v1, p0, 0xff

    :cond_0
    return v1

    .line 13
    :goto_0
    check-cast p0, Lp2/y;

    iget-boolean v0, p0, Lp2/y;->b:Z

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    iget-wide v4, v0, Lp2/k;->b:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 15
    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0, v0, v2, v3}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lp2/k;->R()B

    move-result p0

    and-int/lit16 v1, p0, 0xff

    :goto_1
    return v1

    .line 17
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 7

    iget v0, p0, Lp2/i;->a:I

    iget-object p0, p0, Lp2/i;->b:Lp2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "sink"

    .line 1
    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p0, Lp2/k;

    invoke-virtual {p0, p1, p2, p3}, Lp2/k;->E([BII)I

    move-result p0

    return p0

    :goto_0
    const-string v0, "data"

    .line 3
    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p0, Lp2/y;

    iget-boolean v0, p0, Lp2/y;->b:Z

    if-nez v0, :cond_1

    .line 5
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ly1/l;->z(JJJ)V

    .line 6
    iget-object v0, p0, Lp2/y;->a:Lp2/k;

    iget-wide v1, v0, Lp2/k;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    int-to-long v1, v1

    .line 7
    iget-object p0, p0, Lp2/y;->c:Lp2/d0;

    invoke-interface {p0, v0, v1, v2}, Lp2/d0;->read(Lp2/k;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lp2/k;->E([BII)I

    move-result p0

    :goto_1
    return p0

    .line 9
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lp2/i;->a:I

    const-string v1, ".inputStream()"

    iget-object p0, p0, Lp2/i;->b:Lp2/m;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lp2/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lp2/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
