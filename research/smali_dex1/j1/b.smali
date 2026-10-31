.class public final Lj1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/v;


# instance fields
.field public a:Lc5/e;

.field public b:Lp2/e;


# virtual methods
.method public final a(Landroid/content/Context;Li0/a;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_42

    .line 2
    .line 3
    sget-object v0, Li0/a;->c:Li0/a;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_42

    .line 10
    .line 11
    new-instance p2, Lcom/example/navistart/MyCarReceiver;

    .line 12
    .line 13
    invoke-direct {p2}, Lcom/example/navistart/MyCarReceiver;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const/16 v1, 0x1f

    .line 19
    .line 20
    new-array v1, v1, [B

    .line 21
    .line 22
    fill-array-data v1, :array_44

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    new-array v3, v2, [B

    .line 28
    .line 29
    fill-array-data v3, :array_58

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Lcom/example/navistart/MyCarReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-static {p1, p2}, Lm7/k;->c(Landroid/content/Context;Z)V

    .line 44
    .line 45
    .line 46
    const/16 p1, 0x19

    .line 47
    .line 48
    new-array p1, p1, [B

    .line 49
    .line 50
    fill-array-data p1, :array_60

    .line 51
    .line 52
    .line 53
    new-array p2, v2, [B

    .line 54
    .line 55
    fill-array-data p2, :array_72

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object p2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    return-void

    .line 68
    nop

    .line 69
    :array_44
    .array-data 1
        0x14t
        0x28t
        -0x6et
        -0x59t
        0x1et
        0x19t
        0x5et
        0x11t
        0x1ct
        0x28t
        -0x7et
        -0x50t
        0x1ft
        0x4t
        0x14t
        0x5et
        0x16t
        0x32t
        -0x61t
        -0x46t
        0x1ft
        0x5et
        0x69t
        0x7ct
        0x27t
        0x3t
        -0x4dt
        -0x65t
        0x2et
        0x3ft
        0x74t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_58
    .array-data 1
        0x75t
        0x46t
        -0xat
        -0x2bt
        0x71t
        0x70t
        0x3at
        0x3ft
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        -0x3dt
        0x60t
        0xbt
        0x51t
        -0x7ft
        0x16t
        0x24t
        -0x57t
        -0x2ct
        0x7ct
        0x13t
        0x7bt
        -0x31t
        0x69t
        0x61t
        -0x63t
        -0x28t
        0x73t
        0xct
        0x5bt
        -0x7ft
        0x25t
        0x23t
        -0x5at
        -0x2ct
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    nop

    .line 115
    :array_72
    .array-data 1
        -0x4ft
        0x15t
        0x65t
        0x1et
        -0x11t
        0x44t
        0x41t
        -0x36t
    .end array-data
.end method

.method public final b()Lz0/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/b;->a:Lc5/e;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Lc5/e;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lj1/b;->a:Lc5/e;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lj1/b;->a:Lc5/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final d()Lj1/w;
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/b;->b:Lp2/e;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Lp2/e;

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lj1/b;->b:Lp2/e;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lj1/b;->b:Lp2/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
