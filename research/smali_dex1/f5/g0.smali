.class public final synthetic Lf5/g0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/c;
.implements Lb8/d;


# instance fields
.field public final synthetic b:Lf5/i0;

.field public final synthetic c:Lj5/b;


# direct methods
.method public synthetic constructor <init>(Lf5/i0;Lj5/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf5/g0;->b:Lf5/i0;

    .line 2
    .line 3
    iput-object p2, p0, Lf5/g0;->c:Lj5/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lf5/f0;

    .line 2
    .line 3
    iget-object v0, p0, Lf5/g0;->b:Lf5/i0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf5/g0;->c:Lj5/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lf5/d0;->s()Lf5/c0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/protobuf/w;->c()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 21
    .line 22
    check-cast v2, Lf5/d0;

    .line 23
    .line 24
    invoke-static {v2}, Lf5/d0;->n(Lf5/d0;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lf5/i0;->b:Li5/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v1}, Lcom/google/protobuf/w;->c()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 40
    .line 41
    check-cast v0, Lf5/d0;

    .line 42
    .line 43
    invoke-static {v0, v2, v3}, Lf5/d0;->o(Lf5/d0;J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/y;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lf5/d0;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lf5/f0;->o(Lf5/d0;)Lf5/d0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    check-cast p1, Lf5/d0;

    .line 2
    .line 3
    iget-object v0, p0, Lf5/g0;->b:Lf5/i0;

    .line 4
    .line 5
    iget-object v0, v0, Lf5/i0;->b:Li5/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p1}, Lf5/d0;->q()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long/2addr v0, v2

    .line 19
    iget-object v2, p0, Lf5/g0;->c:Lj5/b;

    .line 20
    .line 21
    iget-wide v3, v2, Lj5/b;->b:J

    .line 22
    .line 23
    cmp-long v0, v0, v3

    .line 24
    .line 25
    if-lez v0, :cond_1b

    .line 26
    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lf5/d0;->r()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v2, v2, Lj5/b;->a:J

    .line 33
    .line 34
    cmp-long p1, v0, v2

    .line 35
    .line 36
    if-gez p1, :cond_27

    .line 37
    .line 38
    :goto_25
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
    return p1
.end method
