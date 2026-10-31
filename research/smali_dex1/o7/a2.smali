.class public final Lo7/a2;
.super Ln7/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lo7/c2;


# direct methods
.method public constructor <init>(Lo7/c2;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/a2;->a:Lo7/c2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/a2;->a:Lo7/c2;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/c2;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final f(Ln7/x0;Ln7/c;)Ln7/t;
    .registers 10

    .line 1
    new-instance v0, Lo7/t;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/a2;->a:Lo7/c2;

    .line 4
    .line 5
    iget-object v1, v1, Lo7/c2;->d:Lo7/f2;

    .line 6
    .line 7
    sget-object v2, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 8
    .line 9
    iget-object v2, p2, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-nez v2, :cond_e

    .line 12
    .line 13
    iget-object v2, v1, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    :cond_e
    iget-object v4, v1, Lo7/f2;->Z:Lc0/h;

    .line 16
    .line 17
    iget-boolean v1, v1, Lo7/f2;->I:Z

    .line 18
    .line 19
    if-eqz v1, :cond_17

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_15
    move-object v5, v1

    .line 23
    goto :goto_22

    .line 24
    :cond_17
    iget-object v1, p0, Lo7/a2;->a:Lo7/c2;

    .line 25
    .line 26
    iget-object v1, v1, Lo7/c2;->d:Lo7/f2;

    .line 27
    .line 28
    iget-object v1, v1, Lo7/f2;->f:Lo7/l;

    .line 29
    .line 30
    iget-object v1, v1, Lo7/l;->b:Lp7/g;

    .line 31
    .line 32
    iget-object v1, v1, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    goto :goto_15

    .line 35
    :goto_22
    iget-object v1, p0, Lo7/a2;->a:Lo7/c2;

    .line 36
    .line 37
    iget-object v1, v1, Lo7/c2;->d:Lo7/f2;

    .line 38
    .line 39
    iget-object v6, v1, Lo7/f2;->L:Lb1/m;

    .line 40
    .line 41
    move-object v1, p1

    .line 42
    move-object v3, p2

    .line 43
    invoke-direct/range {v0 .. v6}, Lo7/t;-><init>(Ln7/x0;Ljava/util/concurrent/Executor;Ln7/c;Lc0/h;Ljava/util/concurrent/ScheduledExecutorService;Lb1/m;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lo7/a2;->a:Lo7/c2;

    .line 47
    .line 48
    iget-object p1, p1, Lo7/c2;->d:Lo7/f2;

    .line 49
    .line 50
    iget-object p1, p1, Lo7/f2;->n:Ln7/q;

    .line 51
    .line 52
    iput-object p1, v0, Lo7/t;->r:Ln7/q;

    .line 53
    .line 54
    return-object v0
.end method
