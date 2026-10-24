.class public final Lx2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/d0;


# instance fields
.field public final b:Lx2/k;

.field public c:Lx2/z;

.field public d:I

.field public e:Z

.field public f:J

.field public final g:Lx2/m;


# direct methods
.method public constructor <init>(Lx2/m;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/w;->g:Lx2/m;

    invoke-interface {p1}, Lx2/m;->a()Lx2/k;

    move-result-object p1

    iput-object p1, p0, Lx2/w;->b:Lx2/k;

    iget-object p1, p1, Lx2/k;->b:Lx2/z;

    iput-object p1, p0, Lx2/w;->c:Lx2/z;

    if-eqz p1, :cond_0

    iget p1, p1, Lx2/z;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lx2/w;->d:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx2/w;->e:Z

    return-void
.end method

.method public final read(Lx2/k;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-boolean v5, p0, Lx2/w;->e:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_7

    iget-object v5, p0, Lx2/w;->c:Lx2/z;

    iget-object v6, p0, Lx2/w;->b:Lx2/k;

    if-eqz v5, :cond_1

    iget-object v7, v6, Lx2/k;->b:Lx2/z;

    if-ne v5, v7, :cond_2

    iget v5, p0, Lx2/w;->d:I

    invoke-static {v7}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v7, v7, Lx2/z;->b:I

    if-ne v5, v7, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_6

    if-nez v2, :cond_3

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lx2/w;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lx2/w;->g:Lx2/m;

    invoke-interface {v2, v0, v1}, Lx2/m;->request(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_4
    iget-object v0, p0, Lx2/w;->c:Lx2/z;

    if-nez v0, :cond_5

    iget-object v0, v6, Lx2/k;->b:Lx2/z;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lx2/w;->c:Lx2/z;

    iget v0, v0, Lx2/z;->b:I

    iput v0, p0, Lx2/w;->d:I

    :cond_5
    iget-wide v0, v6, Lx2/k;->c:J

    iget-wide v2, p0, Lx2/w;->f:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Lx2/w;->b:Lx2/k;

    iget-wide v3, p0, Lx2/w;->f:J

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lx2/k;->N(JLx2/k;J)V

    iget-wide v0, p0, Lx2/w;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lx2/w;->f:J

    return-wide p2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    iget-object v0, p0, Lx2/w;->g:Lx2/m;

    invoke-interface {v0}, Lx2/d0;->timeout()Lx2/g0;

    move-result-object v0

    return-object v0
.end method
