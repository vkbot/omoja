.class public final Lj1/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/v;


# instance fields
.field public a:Lc5/e;

.field public b:Lc5/e;


# direct methods
.method public static i(II)V
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_58

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_60

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v3, 0x13

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_68

    .line 28
    .line 29
    .line 30
    new-array v4, v2, [B

    .line 31
    .line 32
    fill-array-data v4, :array_76

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_7e

    .line 46
    .line 47
    .line 48
    new-array v3, v2, [B

    .line 49
    .line 50
    fill-array-data v3, :array_86

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x5

    .line 61
    new-array p0, p0, [B

    .line 62
    .line 63
    fill-array-data p0, :array_8e

    .line 64
    .line 65
    .line 66
    new-array v1, v2, [B

    .line 67
    .line 68
    fill-array-data v1, :array_96

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-interface {p0, v0}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_57

    .line 86
    .line 87
    .line 88
    :catchall_57
    return-void

    .line 89
    :array_58
    .array-data 1
        0x75t
        0x18t
        0x71t
        0x30t
        0x9t
        0x19t
        -0x7bt
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
        0x16t
        0x77t
        0x1ct
        0x5dt
        0x68t
        0x77t
        -0x1ft
        0x44t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_68
    .array-data 1
        0xbt
        -0x50t
        0x4et
        0x6et
        -0x4ft
        0x36t
        -0x50t
        0x26t
        0x19t
        -0x53t
        0x7ft
        0x7at
        -0x4ft
        0x32t
        -0x7at
        0x21t
        0x15t
        -0x4at
        0x4et
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_76
    .array-data 1
        0x7ct
        -0x27t
        0x20t
        0xat
        -0x22t
        0x41t
        -0x11t
        0x55t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_7e
    .array-data 1
        0x4t
        0x7bt
        0x59t
        0x11t
        0x23t
        -0x3ct
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0x73t
        0x12t
        0x37t
        0x75t
        0x4ct
        -0x4dt
        0x2at
        -0x61t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_8e
    .array-data 1
        -0x63t
        0x68t
        0x78t
        0x5ft
        -0x8t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_96
    .array-data 1
        -0x15t
        0x9t
        0x14t
        0x2at
        -0x63t
        0x17t
        0x46t
        -0x47t
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/Context;Li0/a;)V
    .registers 4

    .line 1
    if-eqz p2, :cond_25

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
    if-eqz p2, :cond_25

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lm7/k;->c(Landroid/content/Context;Z)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x19

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    fill-array-data p1, :array_26

    .line 20
    .line 21
    .line 22
    const/16 p2, 0x8

    .line 23
    .line 24
    new-array p2, p2, [B

    .line 25
    .line 26
    fill-array-data p2, :array_38

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 34
    .line 35
    invoke-static {p1, p2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void

    .line 39
    :array_26
    .array-data 1
        0x28t
        -0x35t
        -0x7et
        0x55t
        0x75t
        -0x2ft
        -0x70t
        -0x56t
        0x3ft
        -0x29t
        -0x66t
        0x7ft
        0x3bt
        -0x52t
        -0x2bt
        -0x62t
        0x33t
        -0x28t
        -0x7bt
        0x5ft
        0x75t
        -0x1et
        -0x69t
        -0x5bt
        0x3ft
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_38
    .array-data 1
        0x5at
        -0x42t
        -0x14t
        0x1at
        0x1bt
        -0x7dt
        -0xbt
        -0x37t
    .end array-data
.end method

.method public final b()Lz0/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/k;->a:Lc5/e;

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
    iput-object v0, p0, Lj1/k;->a:Lc5/e;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lj1/k;->a:Lc5/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final d()Lj1/w;
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/k;->b:Lc5/e;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Lc5/e;

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lj1/k;->b:Lc5/e;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lj1/k;->b:Lc5/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final e()[Lj1/t;
    .registers 5

    .line 1
    invoke-static {}, Lj1/j;->values()[Lj1/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    new-array v1, v1, [Lj1/t;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_14

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    iget-object v3, v3, Lj1/j;->b:Lj1/t;

    .line 15
    .line 16
    aput-object v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_8

    .line 21
    :cond_14
    return-object v1
.end method

.method public final h()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
