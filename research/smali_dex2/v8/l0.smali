.class public abstract Lv8/l0;
.super Lv8/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:J

.field public c:Z

.field public d:Lkotlin/collections/ArrayDeque;


# virtual methods
.method public final S(Z)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lv8/l0;->b:J

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    :goto_c
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lv8/l0;->b:J

    .line 15
    .line 16
    if-nez p1, :cond_14

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lv8/l0;->c:Z

    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public final V()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirstOrNull()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv8/f0;

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    return v1

    .line 16
    :cond_f
    invoke-virtual {v0}, Lv8/f0;->run()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public final limitedParallelism(I)Lv8/t;
    .registers 2

    .line 1
    invoke-static {p1}, La9/a;->a(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public abstract shutdown()V
.end method

.method public final y()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lv8/l0;->b:J

    .line 2
    .line 3
    const-wide v2, 0x100000000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sub-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lv8/l0;->b:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_11

    .line 16
    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-boolean v0, p0, Lv8/l0;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_18

    .line 21
    .line 22
    invoke-virtual {p0}, Lv8/l0;->shutdown()V

    .line 23
    .line 24
    .line 25
    :cond_18
    :goto_18
    return-void
.end method
