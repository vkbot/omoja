.class public final Lp2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/d0;


# instance fields
.field public final a:Lp2/k;

.field public b:Lp2/z;

.field public c:I

.field public d:Z

.field public e:J

.field public final f:Lp2/m;


# direct methods
.method public constructor <init>(Lp2/m;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/w;->f:Lp2/m;

    invoke-interface {p1}, Lp2/m;->a()Lp2/k;

    move-result-object p1

    iput-object p1, p0, Lp2/w;->a:Lp2/k;

    iget-object p1, p1, Lp2/k;->a:Lp2/z;

    iput-object p1, p0, Lp2/w;->b:Lp2/z;

    if-eqz p1, :cond_0

    iget p1, p1, Lp2/z;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lp2/w;->c:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/w;->d:Z

    return-void
.end method

.method public final read(Lp2/k;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lp2/w;->d:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_7

    iget-object v5, p0, Lp2/w;->b:Lp2/z;

    iget-object v6, p0, Lp2/w;->a:Lp2/k;

    if-eqz v5, :cond_1

    iget-object v7, v6, Lp2/k;->a:Lp2/z;

    if-ne v5, v7, :cond_2

    iget v5, p0, Lp2/w;->c:I

    invoke-static {v7}, Ly1/l;->w(Ljava/lang/Object;)V

    iget v7, v7, Lp2/z;->b:I

    if-ne v5, v7, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_6

    if-nez v2, :cond_3

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lp2/w;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lp2/w;->f:Lp2/m;

    invoke-interface {v2, v0, v1}, Lp2/m;->request(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_4
    iget-object v0, p0, Lp2/w;->b:Lp2/z;

    if-nez v0, :cond_5

    iget-object v0, v6, Lp2/k;->a:Lp2/z;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lp2/w;->b:Lp2/z;

    iget v0, v0, Lp2/z;->b:I

    iput v0, p0, Lp2/w;->c:I

    :cond_5
    iget-wide v0, v6, Lp2/k;->b:J

    iget-wide v2, p0, Lp2/w;->e:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Lp2/w;->a:Lp2/k;

    iget-wide v3, p0, Lp2/w;->e:J

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lp2/k;->q(JLp2/k;J)V

    iget-wide v0, p0, Lp2/w;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lp2/w;->e:J

    return-wide p2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, La/a;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lp2/g0;
    .locals 0

    iget-object p0, p0, Lp2/w;->f:Lp2/m;

    invoke-interface {p0}, Lp2/d0;->timeout()Lp2/g0;

    move-result-object p0

    return-object p0
.end method
