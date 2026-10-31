.class public final Ln7/w;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln7/v;

.field public final c:J

.field public final d:Ln7/z;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln7/v;JLo7/k1;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln7/w;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ln7/w;->b:Ln7/v;

    .line 7
    .line 8
    iput-wide p3, p0, Ln7/w;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Ln7/w;->d:Ln7/z;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ln7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_35

    .line 4
    .line 5
    check-cast p1, Ln7/w;

    .line 6
    .line 7
    iget-object v0, p0, Ln7/w;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Ln7/w;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_35

    .line 16
    .line 17
    iget-object v0, p0, Ln7/w;->b:Ln7/v;

    .line 18
    .line 19
    iget-object v1, p1, Ln7/w;->b:Ln7/v;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_35

    .line 26
    .line 27
    iget-wide v0, p0, Ln7/w;->c:J

    .line 28
    .line 29
    iget-wide v2, p1, Ln7/w;->c:J

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_35

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v0, v0}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_35

    .line 41
    .line 42
    iget-object v0, p0, Ln7/w;->d:Ln7/z;

    .line 43
    .line 44
    iget-object p1, p1, Ln7/w;->d:Ln7/z;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_35

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-wide v0, p0, Ln7/w;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Ln7/w;->d:Ln7/z;

    .line 9
    .line 10
    iget-object v3, p0, Ln7/w;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Ln7/w;->b:Ln7/v;

    .line 13
    .line 14
    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "description"

    .line 6
    .line 7
    iget-object v2, p0, Ln7/w;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "severity"

    .line 13
    .line 14
    iget-object v2, p0, Ln7/w;->b:Ln7/v;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "timestampNanos"

    .line 20
    .line 21
    iget-wide v2, p0, Ln7/w;->c:J

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/manager/s;->b(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "channelRef"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "subchannelRef"

    .line 33
    .line 34
    iget-object v2, p0, Ln7/w;->d:Ln7/z;

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
