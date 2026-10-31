.class public final Lo7/w1;
.super Ln7/s;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Ln7/y;

.field public final e:Ln7/d;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ln7/x0;

.field public final h:Ln7/n;

.field public i:Ln7/c;

.field public j:Ln7/t;


# direct methods
.method public constructor <init>(Ln7/y;Lo7/a2;Ljava/util/concurrent/Executor;Ln7/x0;Ln7/c;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/w1;->d:Ln7/y;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/w1;->e:Ln7/d;

    .line 7
    .line 8
    iput-object p4, p0, Lo7/w1;->g:Ln7/x0;

    .line 9
    .line 10
    iget-object p1, p5, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    if-nez p1, :cond_e

    .line 13
    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-object p3, p1

    .line 16
    :goto_f
    iput-object p3, p0, Lo7/w1;->f:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-static {p5}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p3, p1, Lc2/k;->d:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance p2, Ln7/c;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ln7/c;-><init>(Lc2/k;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lo7/w1;->i:Ln7/c;

    .line 30
    .line 31
    invoke-static {}, Ln7/n;->b()Ln7/n;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lo7/w1;->h:Ln7/n;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/w1;->j:Ln7/t;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ln7/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final o(Ln7/e;Ln7/v0;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo7/w1;->i:Ln7/c;

    .line 2
    .line 3
    const-string v1, "method"

    .line 4
    .line 5
    iget-object v2, p0, Lo7/w1;->g:Ln7/x0;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "callOptions"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lo7/w1;->d:Ln7/y;

    .line 16
    .line 17
    invoke-virtual {v0}, Ln7/y;->a()Ll/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Ll/d;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ln7/f1;

    .line 24
    .line 25
    invoke-virtual {v1}, Ln7/f1;->f()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_31

    .line 30
    .line 31
    invoke-static {v1}, Lo7/y0;->h(Ln7/f1;)Ln7/f1;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Lo7/h0;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, p2}, Lo7/h0;-><init>(Lo7/w1;Ln7/e;Ln7/f1;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lo7/w1;->f:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lo7/f2;->i0:Lo7/g0;

    .line 46
    .line 47
    iput-object p1, p0, Lo7/w1;->j:Ln7/t;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    iget-object v0, v0, Ll/d;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lo7/l2;

    .line 53
    .line 54
    iget-object v1, v0, Lo7/l2;->b:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v3, v2, Ln7/x0;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lo7/j2;

    .line 63
    .line 64
    if-nez v1, :cond_4b

    .line 65
    .line 66
    iget-object v1, v2, Ln7/x0;->c:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, v0, Lo7/l2;->c:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lo7/j2;

    .line 75
    .line 76
    :cond_4b
    if-nez v1, :cond_4f

    .line 77
    .line 78
    iget-object v1, v0, Lo7/l2;->a:Lo7/j2;

    .line 79
    .line 80
    :cond_4f
    if-eqz v1, :cond_5b

    .line 81
    .line 82
    iget-object v0, p0, Lo7/w1;->i:Ln7/c;

    .line 83
    .line 84
    sget-object v3, Lo7/j2;->g:La9/w;

    .line 85
    .line 86
    invoke-virtual {v0, v3, v1}, Ln7/c;->c(La9/w;Ljava/lang/Object;)Ln7/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lo7/w1;->i:Ln7/c;

    .line 91
    .line 92
    :cond_5b
    iget-object v0, p0, Lo7/w1;->i:Ln7/c;

    .line 93
    .line 94
    iget-object v1, p0, Lo7/w1;->e:Ln7/d;

    .line 95
    .line 96
    invoke-virtual {v1, v2, v0}, Ln7/d;->f(Ln7/x0;Ln7/c;)Ln7/t;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lo7/w1;->j:Ln7/t;

    .line 101
    .line 102
    invoke-virtual {v0, p1, p2}, Ln7/t;->o(Ln7/e;Ln7/v0;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final r()Ln7/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/w1;->j:Ln7/t;

    .line 2
    .line 3
    return-object v0
.end method
