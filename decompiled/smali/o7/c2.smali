.class public final Lo7/c2;
.super Ln7/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/lang/String;

.field public final c:Lo7/a2;

.field public final synthetic d:Lo7/f2;


# direct methods
.method public constructor <init>(Lo7/f2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/c2;->d:Lo7/f2;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    sget-object v0, Lo7/f2;->h0:Lo7/s1;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    new-instance p1, Lo7/a2;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lo7/a2;-><init>(Lo7/c2;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lo7/c2;->c:Lo7/a2;

    .line 21
    .line 22
    const-string p1, "authority"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lo7/c2;->b:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/c2;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ln7/x0;Ln7/c;)Ln7/t;
    .locals 6

    .line 1
    iget-object v0, p0, Lo7/c2;->d:Lo7/f2;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/f2;->m:Ln7/k1;

    .line 4
    .line 5
    iget-object v2, p0, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lo7/f2;->h0:Lo7/s1;

    .line 12
    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lo7/c2;->g(Ln7/x0;Ln7/c;)Ln7/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v3, Lcom/bumptech/glide/m;

    .line 21
    .line 22
    const/16 v5, 0x10

    .line 23
    .line 24
    invoke-direct {v3, v5, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lo7/c2;->g(Ln7/x0;Ln7/c;)Ln7/t;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    iget-object v0, v0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance p1, Lo7/g0;

    .line 50
    .line 51
    const/4 p2, 0x2

    .line 52
    invoke-direct {p1, p2}, Lo7/g0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    invoke-static {}, Ln7/n;->b()Ln7/n;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v2, Lo7/b2;

    .line 61
    .line 62
    invoke-direct {v2, p0, v0, p1, p2}, Lo7/b2;-><init>(Lo7/c2;Ln7/n;Ln7/x0;Ln7/c;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lo7/e0;

    .line 66
    .line 67
    invoke-direct {p1, p0, v2}, Lo7/e0;-><init>(Lo7/c2;Lo7/b2;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method

.method public final g(Ln7/x0;Ln7/c;)Ln7/t;
    .locals 7

    .line 1
    iget-object v0, p0, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Ln7/y;

    .line 9
    .line 10
    iget-object v3, p0, Lo7/c2;->c:Lo7/a2;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p1, p2}, Lo7/a2;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    instance-of v0, v2, Lo7/k2;

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    check-cast v2, Lo7/k2;

    .line 24
    .line 25
    iget-object v0, v2, Lo7/k2;->b:Lo7/l2;

    .line 26
    .line 27
    iget-object v1, v0, Lo7/l2;->b:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v2, p1, Ln7/x0;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lo7/j2;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p1, Ln7/x0;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, v0, Lo7/l2;->c:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lo7/j2;

    .line 48
    .line 49
    :cond_1
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, v0, Lo7/l2;->a:Lo7/j2;

    .line 52
    .line 53
    :cond_2
    if-eqz v1, :cond_3

    .line 54
    .line 55
    sget-object v0, Lo7/j2;->g:La9/w;

    .line 56
    .line 57
    invoke-virtual {p2, v0, v1}, Ln7/c;->c(La9/w;Ljava/lang/Object;)Ln7/c;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :cond_3
    invoke-virtual {v3, p1, p2}, Lo7/a2;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_4
    new-instance v1, Lo7/w1;

    .line 67
    .line 68
    iget-object v0, p0, Lo7/c2;->d:Lo7/f2;

    .line 69
    .line 70
    iget-object v4, v0, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    move-object v5, p1

    .line 73
    move-object v6, p2

    .line 74
    invoke-direct/range {v1 .. v6}, Lo7/w1;-><init>(Ln7/y;Lo7/a2;Ljava/util/concurrent/Executor;Ln7/x0;Ln7/c;)V

    .line 75
    .line 76
    .line 77
    return-object v1
.end method

.method public final h(Ln7/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ln7/y;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lo7/f2;->h0:Lo7/s1;

    .line 13
    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lo7/c2;->d:Lo7/f2;

    .line 17
    .line 18
    iget-object p1, p1, Lo7/f2;->B:Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lo7/b2;

    .line 37
    .line 38
    invoke-virtual {v0}, Lo7/b2;->u()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method
