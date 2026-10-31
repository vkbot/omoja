.class public final Lo7/q;
.super Lo7/d0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:Ln7/f1;

.field public final synthetic e:Ln7/v0;

.field public final synthetic f:La5/h;


# direct methods
.method public constructor <init>(La5/h;Ln7/f1;Ln7/v0;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lo7/q;->f:La5/h;

    .line 2
    .line 3
    iput-object p2, p0, Lo7/q;->d:Ln7/f1;

    .line 4
    .line 5
    iput-object p3, p0, Lo7/q;->e:Ln7/v0;

    .line 6
    .line 7
    iget-object p1, p1, La5/h;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lo7/t;

    .line 10
    .line 11
    iget-object p1, p1, Lo7/t;->h:Ln7/n;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p2, p1}, Lo7/d0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_3
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lo7/q;->c()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    :try_start_13
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    goto :goto_1d

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_1d
    throw v0
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/q;->d:Ln7/f1;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/q;->e:Ln7/v0;

    .line 4
    .line 5
    iget-object v2, p0, Lo7/q;->f:La5/h;

    .line 6
    .line 7
    iget-object v2, v2, La5/h;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ln7/f1;

    .line 10
    .line 11
    if-eqz v2, :cond_12

    .line 12
    .line 13
    new-instance v1, Ln7/v0;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    move-object v0, v2

    .line 19
    :cond_12
    iget-object v2, p0, Lo7/q;->f:La5/h;

    .line 20
    .line 21
    iget-object v2, v2, La5/h;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lo7/t;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iput-boolean v3, v2, Lo7/t;->m:Z

    .line 27
    .line 28
    :try_start_1b
    iget-object v2, p0, Lo7/q;->f:La5/h;

    .line 29
    .line 30
    iget-object v2, v2, La5/h;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ln7/e;

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Ln7/e;->o(Ln7/f1;Ln7/v0;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_4b

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lo7/q;->f:La5/h;

    .line 38
    .line 39
    iget-object v1, v1, La5/h;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lo7/t;

    .line 42
    .line 43
    invoke-virtual {v1}, Lo7/t;->s()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lo7/q;->f:La5/h;

    .line 47
    .line 48
    iget-object v1, v1, La5/h;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lo7/t;

    .line 51
    .line 52
    iget-object v1, v1, Lo7/t;->g:Lb1/m;

    .line 53
    .line 54
    invoke-virtual {v0}, Ln7/f1;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_43

    .line 59
    .line 60
    iget-object v0, v1, Lb1/m;->e:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lo7/r1;

    .line 63
    .line 64
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    iget-object v0, v1, Lb1/m;->f:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lo7/r1;

    .line 71
    .line 72
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_4b
    move-exception v1

    .line 77
    iget-object v2, p0, Lo7/q;->f:La5/h;

    .line 78
    .line 79
    iget-object v2, v2, La5/h;->e:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lo7/t;

    .line 82
    .line 83
    invoke-virtual {v2}, Lo7/t;->s()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lo7/q;->f:La5/h;

    .line 87
    .line 88
    iget-object v2, v2, La5/h;->e:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Lo7/t;

    .line 91
    .line 92
    iget-object v2, v2, Lo7/t;->g:Lb1/m;

    .line 93
    .line 94
    invoke-virtual {v0}, Ln7/f1;->f()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6b

    .line 99
    .line 100
    iget-object v0, v2, Lb1/m;->e:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lo7/r1;

    .line 103
    .line 104
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 105
    .line 106
    .line 107
    goto :goto_72

    .line 108
    :cond_6b
    iget-object v0, v2, Lb1/m;->f:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lo7/r1;

    .line 111
    .line 112
    invoke-interface {v0}, Lo7/r1;->a()V

    .line 113
    .line 114
    .line 115
    :goto_72
    throw v1
.end method
