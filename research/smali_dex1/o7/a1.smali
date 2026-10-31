.class public final Lo7/a1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lj4/g;


# direct methods
.method public constructor <init>(IJLjava/util/Set;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo7/a1;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lo7/a1;->b:J

    .line 7
    .line 8
    sget p1, Lj4/g;->d:I

    .line 9
    .line 10
    instance-of p1, p4, Lj4/g;

    .line 11
    .line 12
    if-eqz p1, :cond_1b

    .line 13
    .line 14
    instance-of p1, p4, Ljava/util/SortedSet;

    .line 15
    .line 16
    if-nez p1, :cond_1b

    .line 17
    .line 18
    move-object p1, p4

    .line 19
    check-cast p1, Lj4/g;

    .line 20
    .line 21
    invoke-virtual {p1}, Lj4/a;->h()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1b

    .line 26
    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    invoke-interface {p4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    invoke-static {p2, p1}, Lj4/g;->j(I[Ljava/lang/Object;)Lj4/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_24
    iput-object p1, p0, Lo7/a1;->c:Lj4/g;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-ne p0, p1, :cond_3

    .line 2
    .line 3
    goto :goto_28

    .line 4
    :cond_3
    if-eqz p1, :cond_2a

    .line 5
    .line 6
    const-class v0, Lo7/a1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_e

    .line 13
    .line 14
    goto :goto_2a

    .line 15
    :cond_e
    check-cast p1, Lo7/a1;

    .line 16
    .line 17
    iget v0, p0, Lo7/a1;->a:I

    .line 18
    .line 19
    iget v1, p1, Lo7/a1;->a:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_2a

    .line 22
    .line 23
    iget-wide v0, p0, Lo7/a1;->b:J

    .line 24
    .line 25
    iget-wide v2, p1, Lo7/a1;->b:J

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-nez v0, :cond_2a

    .line 30
    .line 31
    iget-object v0, p0, Lo7/a1;->c:Lj4/g;

    .line 32
    .line 33
    iget-object p1, p1, Lo7/a1;->c:Lj4/g;

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2a

    .line 40
    .line 41
    :goto_28
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lo7/a1;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lo7/a1;->b:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lo7/a1;->c:Lj4/g;

    .line 14
    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
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
    iget v1, p0, Lo7/a1;->a:I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "maxAttempts"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "hedgingDelayNanos"

    .line 17
    .line 18
    iget-wide v2, p0, Lo7/a1;->b:J

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/manager/s;->b(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "nonFatalStatusCodes"

    .line 24
    .line 25
    iget-object v2, p0, Lo7/a1;->c:Lj4/g;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
