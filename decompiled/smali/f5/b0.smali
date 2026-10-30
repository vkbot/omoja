.class public final Lf5/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public volatile a:Ljava/lang/Object;


# virtual methods
.method public final a(Lp2/e;)Lf5/a0;
    .locals 4

    .line 1
    iget-object v0, p0, Lf5/b0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lf5/b0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lf5/b0;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lf5/b0;->a(Lp2/e;)Lf5/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    check-cast v0, Lt4/n;

    .line 15
    .line 16
    new-instance v1, Lf5/a0;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, v1, Lf5/a0;->a:Ljava/util/HashSet;

    .line 27
    .line 28
    new-instance v2, Lf5/f;

    .line 29
    .line 30
    const/4 v3, 0x7

    .line 31
    invoke-direct {v2, v3, v1, p1}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lt4/n;->a(Lk5/a;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method
