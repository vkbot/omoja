.class public final Lj1/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/v;


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# instance fields
.field public a:Lc5/e;

.field public b:Lc5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lj1/o;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xe

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lj1/o;->d:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v0, 0x14

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_4

    .line 44
    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_5

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lj1/o;->e:Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 1
        -0x69t
        -0x61t
        0x12t
        0x5t
        -0x5et
        0xat
        0x0t
        0x6dt
        -0x73t
        -0x78t
        0x2at
        0x14t
        -0x59t
        0x8t
        0x31t
        0x79t
        -0x69t
        -0x7ct
        0x10t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 1
        -0x1dt
        -0x10t
        0x75t
        0x62t
        -0x32t
        0x6ft
        0x5ft
        0x1ct
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_2
    .array-data 1
        -0x50t
        -0x4dt
        0x29t
        0x49t
        0x9t
        -0x14t
        0x37t
        0x6bt
        -0x4dt
        -0x56t
        0x21t
        0x46t
        0x22t
        -0x1dt
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_3
    .array-data 1
        -0x21t
        -0x3dt
        0x4ct
        0x27t
        0x56t
        -0x7at
        0x68t
        0x8t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_4
    .array-data 1
        -0x7et
        -0x4bt
        0x7et
        0x7ct
        0x7ct
        0x5bt
        -0xat
        -0x62t
        -0x6at
        -0x51t
        0x72t
        0x46t
        0x55t
        0x50t
        -0x2t
        -0x61t
        -0x61t
        -0x42t
        0x67t
        0x4dt
    .end array-data

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
    .line 115
    :array_5
    .array-data 1
        -0xdt
        -0x25t
        0x6t
        0x23t
        0xat
        0x32t
        -0x6ft
        -0x10t
    .end array-data
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

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
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    new-array p1, p1, [B

    .line 28
    .line 29
    fill-array-data p1, :array_2

    .line 30
    .line 31
    .line 32
    new-array v1, v2, [B

    .line 33
    .line 34
    fill-array-data v1, :array_3

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v0}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :catchall_0
    return-void

    .line 55
    :array_0
    .array-data 1
        0x3ct
        0x7et
        0x45t
        -0x26t
        -0x4t
        -0x34t
        0x70t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 1
        0x5ft
        0x11t
        0x28t
        -0x49t
        -0x63t
        -0x5et
        0x14t
        -0x34t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_2
    .array-data 1
        -0x63t
        0x74t
        -0x34t
        0x41t
        -0x73t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :array_3
    .array-data 1
        -0x15t
        0x15t
        -0x60t
        0x34t
        -0x18t
        0x9t
        -0x5ct
        0x7ft
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/Context;Li0/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lz0/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lj1/o;->a:Lc5/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    iput-object v0, p0, Lj1/o;->a:Lc5/e;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lj1/o;->a:Lc5/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final d()Lj1/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lj1/o;->b:Lc5/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    iput-object v0, p0, Lj1/o;->b:Lc5/e;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lj1/o;->b:Lc5/e;

    .line 15
    .line 16
    return-object v0
.end method

.method public final e()[Lj1/t;
    .locals 10

    .line 1
    invoke-static {}, Lj1/n;->values()[Lj1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lj1/m;->values()[Lj1/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v0

    .line 10
    array-length v3, v1

    .line 11
    add-int/2addr v2, v3

    .line 12
    add-int/lit8 v3, v2, 0x2

    .line 13
    .line 14
    new-array v3, v3, [Lj1/t;

    .line 15
    .line 16
    new-instance v4, Lj1/t;

    .line 17
    .line 18
    new-instance v9, Lj1/i;

    .line 19
    .line 20
    const/16 v5, 0xe

    .line 21
    .line 22
    invoke-direct {v9, v5}, Lj1/i;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    sget-object v5, Lj1/o;->d:Ljava/lang/String;

    .line 27
    .line 28
    const v7, 0x7f1303dc

    .line 29
    .line 30
    .line 31
    const v8, 0x7f07011e

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v4 .. v9}, Lj1/t;-><init>(Ljava/lang/String;Ljava/lang/String;IILj1/u;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    aput-object v4, v3, v5

    .line 39
    .line 40
    move v4, v5

    .line 41
    :goto_0
    array-length v6, v0

    .line 42
    if-ge v4, v6, :cond_0

    .line 43
    .line 44
    add-int/lit8 v6, v4, 0x1

    .line 45
    .line 46
    aget-object v4, v0, v4

    .line 47
    .line 48
    iget-object v4, v4, Lj1/n;->b:Lj1/t;

    .line 49
    .line 50
    aput-object v4, v3, v6

    .line 51
    .line 52
    move v4, v6

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    array-length v0, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    :goto_1
    array-length v4, v1

    .line 58
    if-ge v5, v4, :cond_1

    .line 59
    .line 60
    add-int v4, v0, v5

    .line 61
    .line 62
    aget-object v6, v1, v5

    .line 63
    .line 64
    iget-object v6, v6, Lj1/m;->b:Lj1/t;

    .line 65
    .line 66
    aput-object v6, v3, v4

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    new-instance v4, Lj1/t;

    .line 74
    .line 75
    new-instance v9, Lj1/i;

    .line 76
    .line 77
    const/16 v0, 0xf

    .line 78
    .line 79
    invoke-direct {v9, v0}, Lj1/i;-><init>(I)V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    sget-object v5, Lj1/o;->c:Ljava/lang/String;

    .line 84
    .line 85
    const v7, 0x7f1301c1

    .line 86
    .line 87
    .line 88
    const v8, 0x7f07023b

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v4 .. v9}, Lj1/t;-><init>(Ljava/lang/String;Ljava/lang/String;IILj1/u;)V

    .line 92
    .line 93
    .line 94
    aput-object v4, v3, v2

    .line 95
    .line 96
    return-object v3
.end method
