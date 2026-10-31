.class public final Lo7/e3;
.super Ln7/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final f:Ln7/e;

.field public g:Ln7/t;

.field public h:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ln7/j;->e:Ln7/j;

    .line 5
    .line 6
    iput-object v0, p0, Lo7/e3;->h:Ln7/j;

    .line 7
    .line 8
    iput-object p1, p0, Lo7/e3;->f:Ln7/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ln7/g0;)Ln7/f1;
    .registers 6

    .line 1
    iget-object v0, p1, Ln7/g0;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2a

    .line 8
    .line 9
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "NameResolver returned no usable address. addrs="

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", attrs="

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Ln7/g0;->b:Ln7/b;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lo7/e3;->c(Ln7/f1;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2a
    iget-object p1, p1, Ln7/g0;->c:Ljava/lang/Object;

    .line 44
    .line 45
    instance-of v1, p1, Lo7/c3;

    .line 46
    .line 47
    if-eqz v1, :cond_4a

    .line 48
    .line 49
    check-cast p1, Lo7/c3;

    .line 50
    .line 51
    iget-object p1, p1, Lo7/c3;->a:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-eqz p1, :cond_4a

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4a

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/util/Random;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 72
    .line 73
    .line 74
    move-object v0, p1

    .line 75
    :cond_4a
    iget-object p1, p0, Lo7/e3;->g:Ln7/t;

    .line 76
    .line 77
    if-nez p1, :cond_7e

    .line 78
    .line 79
    invoke-static {}, Ln7/e0;->d()Ln7/e0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Ln7/e0;->e(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ln7/e0;->b()Ln7/e0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lo7/e3;->f:Ln7/e;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ln7/e;->b(Ln7/e0;)Ln7/t;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lo7/b3;

    .line 97
    .line 98
    invoke-direct {v1, p0, p1}, Lo7/b3;-><init>(Lo7/e3;Ln7/t;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ln7/t;->p(Ln7/i0;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lo7/e3;->g:Ln7/t;

    .line 105
    .line 106
    new-instance v1, Lo7/d3;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {p1, v2}, Ln7/f0;->b(Ln7/t;Lv7/r;)Ln7/f0;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2}, Lo7/d3;-><init>(Ln7/f0;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Ln7/j;->b:Ln7/j;

    .line 117
    .line 118
    iput-object v2, p0, Lo7/e3;->h:Ln7/j;

    .line 119
    .line 120
    invoke-virtual {v0, v2, v1}, Ln7/e;->D(Ln7/j;Ln7/h0;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ln7/t;->l()V

    .line 124
    .line 125
    .line 126
    goto :goto_81

    .line 127
    :cond_7e
    invoke-virtual {p1, v0}, Ln7/t;->q(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    :goto_81
    sget-object p1, Ln7/f1;->e:Ln7/f1;

    .line 131
    .line 132
    return-object p1
.end method

.method public final c(Ln7/f1;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/e3;->g:Ln7/t;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/t;->n()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo7/e3;->g:Ln7/t;

    .line 10
    .line 11
    :cond_a
    new-instance v0, Lo7/d3;

    .line 12
    .line 13
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lo7/d3;-><init>(Ln7/f0;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Ln7/j;->d:Ln7/j;

    .line 21
    .line 22
    iput-object p1, p0, Lo7/e3;->h:Ln7/j;

    .line 23
    .line 24
    iget-object v1, p0, Lo7/e3;->f:Ln7/e;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Ln7/e;->D(Ln7/j;Ln7/h0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/e3;->g:Ln7/t;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/t;->l()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/e3;->g:Ln7/t;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Ln7/t;->n()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method
