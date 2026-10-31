.class public final Lt5/e;
.super Lt5/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lu5/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu5/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lu5/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lt5/e;->b:Lu5/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-eq p1, p0, :cond_15

    .line 2
    .line 3
    instance-of v0, p1, Lt5/e;

    .line 4
    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    check-cast p1, Lt5/e;

    .line 8
    .line 9
    iget-object p1, p1, Lt5/e;->b:Lu5/e;

    .line 10
    .line 11
    iget-object v0, p0, Lt5/e;->b:Lu5/e;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final h(Ljava/lang/String;Lt5/b;)V
    .registers 4

    .line 1
    if-nez p2, :cond_4

    .line 2
    .line 3
    sget-object p2, Lt5/d;->b:Lt5/d;

    .line 4
    .line 5
    :cond_4
    iget-object v0, p0, Lt5/e;->b:Lu5/e;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lu5/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lt5/e;->b:Lu5/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    if-nez p2, :cond_5

    .line 2
    .line 3
    sget-object p2, Lt5/d;->b:Lt5/d;

    .line 4
    .line 5
    goto :goto_b

    .line 6
    :cond_5
    new-instance v0, Lt5/f;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lt5/f;-><init>(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_b
    invoke-virtual {p0, p1, p2}, Lt5/e;->h(Ljava/lang/String;Lt5/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    .line 1
    if-nez p2, :cond_5

    .line 2
    .line 3
    sget-object p2, Lt5/d;->b:Lt5/d;

    .line 4
    .line 5
    goto :goto_b

    .line 6
    :cond_5
    new-instance v0, Lt5/f;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lt5/f;-><init>(Ljava/lang/Number;)V

    .line 9
    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :goto_b
    invoke-virtual {p0, p1, p2}, Lt5/e;->h(Ljava/lang/String;Lt5/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lt5/f;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lt5/f;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lt5/e;->h(Ljava/lang/String;Lt5/b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(Ljava/lang/String;)Lt5/b;
    .registers 3

    .line 1
    iget-object v0, p0, Lt5/e;->b:Lu5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu5/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lt5/b;

    .line 8
    .line 9
    return-object p1
.end method
