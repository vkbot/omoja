.class public final Lo7/b3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/i0;


# instance fields
.field public final synthetic a:Ln7/t;

.field public final synthetic b:Lo7/e3;


# direct methods
.method public constructor <init>(Lo7/e3;Ln7/t;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/b3;->b:Lo7/e3;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/b3;->a:Ln7/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ln7/k;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lo7/b3;->b:Lo7/e3;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/e3;->f:Ln7/e;

    .line 4
    .line 5
    iget-object v2, p1, Ln7/k;->a:Ln7/j;

    .line 6
    .line 7
    sget-object v3, Ln7/j;->f:Ln7/j;

    .line 8
    .line 9
    if-ne v2, v3, :cond_b

    .line 10
    .line 11
    goto :goto_1e

    .line 12
    :cond_b
    sget-object v3, Ln7/j;->e:Ln7/j;

    .line 13
    .line 14
    sget-object v4, Ln7/j;->d:Ln7/j;

    .line 15
    .line 16
    if-eq v2, v4, :cond_13

    .line 17
    .line 18
    if-ne v2, v3, :cond_16

    .line 19
    .line 20
    :cond_13
    invoke-virtual {v1}, Ln7/e;->y()V

    .line 21
    .line 22
    .line 23
    :cond_16
    iget-object v5, v0, Lo7/e3;->h:Ln7/j;

    .line 24
    .line 25
    if-ne v5, v4, :cond_25

    .line 26
    .line 27
    sget-object v4, Ln7/j;->b:Ln7/j;

    .line 28
    .line 29
    if-ne v2, v4, :cond_1f

    .line 30
    .line 31
    :goto_1e
    return-void

    .line 32
    :cond_1f
    if-ne v2, v3, :cond_25

    .line 33
    .line 34
    invoke-virtual {v0}, Lo7/e3;->e()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_5a

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    iget-object v5, p0, Lo7/b3;->a:Ln7/t;

    .line 46
    .line 47
    if-eq v3, v4, :cond_4f

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-eq v3, v4, :cond_42

    .line 51
    .line 52
    const/4 p1, 0x3

    .line 53
    if-ne v3, p1, :cond_3c

    .line 54
    .line 55
    new-instance p1, Lo7/y2;

    .line 56
    .line 57
    invoke-direct {p1, v0, v5}, Lo7/y2;-><init>(Lo7/e3;Ln7/t;)V

    .line 58
    .line 59
    .line 60
    goto :goto_61

    .line 61
    :cond_3c
    const-string p1, "Unsupported state:"

    .line 62
    .line 63
    invoke-static {v2, p1}, Landroidx/navigation/b;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    new-instance v3, Lo7/d3;

    .line 68
    .line 69
    iget-object p1, p1, Ln7/k;->b:Ln7/f1;

    .line 70
    .line 71
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v3, p1}, Lo7/d3;-><init>(Ln7/f0;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v3

    .line 79
    goto :goto_61

    .line 80
    :cond_4f
    new-instance p1, Lo7/d3;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-static {v5, v3}, Ln7/f0;->b(Ln7/t;Lv7/r;)Ln7/f0;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {p1, v3}, Lo7/d3;-><init>(Ln7/f0;)V

    .line 88
    .line 89
    .line 90
    goto :goto_61

    .line 91
    :cond_5a
    new-instance p1, Lo7/d3;

    .line 92
    .line 93
    sget-object v3, Ln7/f0;->e:Ln7/f0;

    .line 94
    .line 95
    invoke-direct {p1, v3}, Lo7/d3;-><init>(Ln7/f0;)V

    .line 96
    .line 97
    .line 98
    :goto_61
    iput-object v2, v0, Lo7/e3;->h:Ln7/j;

    .line 99
    .line 100
    invoke-virtual {v1, v2, p1}, Ln7/e;->D(Ln7/j;Ln7/h0;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
