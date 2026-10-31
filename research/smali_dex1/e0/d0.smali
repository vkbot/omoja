.class public final Le0/d0;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_16

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_32

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Le0/d0;->b:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        -0x16t
        0x6ft
        0x24t
        0x1at
        0x52t
        -0x50t
        -0x44t
        0x67t
        -0x1et
        0x6ft
        0x34t
        0xdt
        0x53t
        -0x53t
        -0xat
        0x28t
        -0x18t
        0x75t
        0x29t
        0x7t
        0x53t
        -0x9t
        -0x45t
        0x28t
        -0x7t
        0x5et
        0x33t
        0x11t
        0x4et
        -0x53t
        -0x43t
        0x24t
        -0x2ct
        0x66t
        0x25t
        0x1bt
        0x49t
        -0x54t
        -0x56t
        0x2ct
        -0x2ct
        0x6ct
        0x2ft
        0xct
        0x58t
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
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
    nop

    .line 51
    :array_32
    .array-data 1
        -0x75t
        0x1t
        0x40t
        0x68t
        0x3dt
        -0x27t
        -0x28t
        0x49t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)V
    .registers 5

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    fill-array-data v2, :array_6e

    .line 10
    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    fill-array-data v1, :array_76

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x3

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne p0, v3, :cond_44

    .line 29
    .line 30
    if-ne v0, v3, :cond_2a

    .line 31
    .line 32
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenCustomPPPri()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2a
    if-ne v0, v2, :cond_37

    .line 44
    .line 45
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProPri()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    if-ne v0, v1, :cond_6c

    .line 57
    .line 58
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProGu()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    if-ne p0, v2, :cond_6c

    .line 70
    .line 71
    if-ne v0, v3, :cond_53

    .line 72
    .line 73
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenCustomPPPri()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    if-ne v0, v2, :cond_60

    .line 85
    .line 86
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenCustomPPPri()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    if-ne v0, v1, :cond_6c

    .line 98
    .line 99
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p0}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProPri()V

    .line 107
    .line 108
    .line 109
    :cond_6c
    return-void

    .line 110
    nop

    .line 111
    :array_6e
    .array-data 1
        0x2bt
        -0x3at
        0x39t
        0x68t
        -0x73t
        0x9t
        -0x73t
        -0x25t
    .end array-data

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
        0x4at
        -0x4ct
        0x5ct
        0x9t
        -0x31t
        0x66t
        -0x1et
        -0x51t
    .end array-data
.end method

.method public static b()Ljava/lang/Boolean;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_7c

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_79

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, -0x6e

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_86

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_73

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v5, v8

    .line 117
    :goto_74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_7c
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
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
        -0x5et
        0x57t
        -0x2t
        0x34t
        0x3bt
        -0x36t
        -0xdt
        -0x45t
    .end array-data
.end method

.method public static c(IF)V
    .registers 4

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Lcom/example/navistart/cores/CarCmdProxy;->getCabinTemp(I)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_29

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_29

    .line 23
    .line 24
    const/high16 v1, -0x3db80000    # -50.0f

    .line 25
    .line 26
    cmpg-float v1, v0, v1

    .line 27
    .line 28
    if-gtz v1, :cond_1e

    .line 29
    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    add-float/2addr v0, p1

    .line 39
    invoke-interface {v1, p0, v0}, Lcom/example/navistart/cores/CarCmdProxy;->setCabinTemp(IF)V

    .line 40
    .line 41
    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_44

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/example/navistart/cores/InterC;->bi()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [I

    .line 17
    .line 18
    new-array v1, v1, [I

    .line 19
    .line 20
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v3, :cond_2b

    .line 26
    .line 27
    if-eqz v0, :cond_2b

    .line 28
    .line 29
    xor-int/lit8 v3, v0, 0x1

    .line 30
    .line 31
    if-eq v0, v3, :cond_22

    .line 32
    .line 33
    if-eqz v0, :cond_2b

    .line 34
    .line 35
    :cond_22
    aget v2, v2, v4

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lh0/b;->v(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    invoke-static {p0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_33

    .line 49
    .line 50
    if-nez v0, :cond_3b

    .line 51
    .line 52
    :cond_33
    if-eqz v0, :cond_44

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_44

    .line 59
    .line 60
    :cond_3b
    aget p0, v1, v4

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_44
    return-void
.end method


# virtual methods
.method public final e(ILjava/lang/Class;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 p2, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v0, p0, Le0/d0;->a:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v1, 0x7

    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_5a

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    new-array v2, v2, [B

    .line 25
    .line 26
    fill-array-data v2, :array_62

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 38
    .line 39
    if-nez v0, :cond_2c

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Landroid/view/Display;

    .line 43
    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v2, 0x1a

    .line 52
    .line 53
    if-lt v1, v2, :cond_53

    .line 54
    .line 55
    if-ltz p1, :cond_53

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    if-ge p1, v1, :cond_53

    .line 59
    .line 60
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    aget-object p1, v0, p1

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {v1, p1}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Le0/d0;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p2, p1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-static {p1, p2, v0}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :array_5a
    .array-data 1
        0x6at
        0x5bt
        0x15t
        -0x7ct
        -0xbt
        -0x6at
        0x4et
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_62
    .array-data 1
        0xet
        0x32t
        0x66t
        -0xct
        -0x67t
        -0x9t
        0x37t
        0x2ct
    .end array-data
.end method

.method public final f(ILjava/lang/Class;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_20

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_26

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p1, p2, v0}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_20
    .array-data 1
        -0x3ft
        0x28t
        -0x51t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_26
    .array-data 1
        -0x5bt
        0x41t
        -0x24t
        -0x25t
        0x2ft
        -0x24t
        -0x57t
        0x4dt
    .end array-data
.end method

.method public final g(II)V
    .registers 14

    .line 1
    invoke-static {}, Le0/d0;->b()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4ef

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/high16 v2, -0x40800000    # -1.0f

    .line 15
    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/high16 v4, 0x10000000

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x2

    .line 25
    const/4 v10, 0x1

    .line 26
    packed-switch p1, :pswitch_data_4f0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4ef

    .line 30
    .line 31
    :pswitch_1e
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 32
    .line 33
    const/16 p2, 0x64

    .line 34
    .line 35
    invoke-static {p2, p1}, Ly5/k;->a(ILandroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_26
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 40
    .line 41
    const/16 p2, -0x64

    .line 42
    .line 43
    invoke-static {p2, p1}, Ly5/k;->a(ILandroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2e
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 48
    .line 49
    const/16 p2, 0x65

    .line 50
    .line 51
    invoke-static {p2, p1}, Ly5/k;->a(ILandroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_36
    const-class p1, Lm0/n3;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Le0/d0;->f(ILjava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_3c
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Lcom/example/navistart/cores/ProLanProxy;->DisplayAreaOpenDef()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_47
    new-instance p1, Landroid/content/Intent;

    .line 73
    .line 74
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 75
    .line 76
    const-class v0, Lcom/example/navistart/home/WebLauncherActivity;

    .line 77
    .line 78
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    const/high16 p2, 0x34000000

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2, p1, v5}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_5c
    const-class p1, Lcom/woha/atir/RadarActivity;

    .line 94
    .line 95
    invoke-virtual {p0, p2, p1}, Le0/d0;->e(ILjava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_62
    const-class p1, Lm0/v;

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Le0/d0;->f(ILjava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_68
    const-class p1, Lm0/c3;

    .line 106
    .line 107
    invoke-virtual {p0, p2, p1}, Le0/d0;->f(ILjava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_6e
    const-class p1, Lcom/woha/wifim/MainWifiManadger;

    .line 112
    .line 113
    invoke-virtual {p0, p2, p1}, Le0/d0;->e(ILjava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_74
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 118
    .line 119
    sget-object p2, Lcom/example/navistart/MockGPS/MockGpsService;->r:Ljava/lang/String;

    .line 120
    .line 121
    :try_start_78
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p2, v7}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v7
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_80} :catch_80

    .line 129
    :catch_80
    xor-int/lit8 p2, v7, 0x1

    .line 130
    .line 131
    sget-object v0, Lcom/example/navistart/MockGPS/MockGpsService;->r:Ljava/lang/String;

    .line 132
    .line 133
    :try_start_84
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1, v0, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_8b

    .line 138
    .line 139
    .line 140
    :catch_8b
    if-nez v7, :cond_91

    .line 141
    .line 142
    invoke-static {p1}, Lcom/example/navistart/MockGPS/MockGpsService;->m(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    goto :goto_9e

    .line 146
    :cond_91
    invoke-static {p1}, Lcom/example/navistart/MockGPS/MockGpsService;->b(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    new-instance p2, Landroid/content/Intent;

    .line 150
    .line 151
    const-class v0, Lcom/example/navistart/MockGPS/MockGpsService;

    .line 152
    .line 153
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 157
    .line 158
    .line 159
    :goto_9e
    if-nez v7, :cond_a4

    .line 160
    .line 161
    const p2, 0x7f130297

    .line 162
    .line 163
    .line 164
    goto :goto_a7

    .line 165
    :cond_a4
    const p2, 0x7f130296

    .line 166
    .line 167
    .line 168
    :goto_a7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p1, p2}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_af
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p2, p1, Le0/x1;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 184
    .line 185
    new-instance v0, Le0/v1;

    .line 186
    .line 187
    invoke-direct {v0, p1, v7}, Le0/v1;-><init>(Le0/x1;I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_c1
    new-instance p1, Landroid/os/Bundle;

    .line 195
    .line 196
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 197
    .line 198
    .line 199
    new-array v1, v8, [B

    .line 200
    .line 201
    fill-array-data v1, :array_5a0

    .line 202
    .line 203
    .line 204
    new-array v2, v0, [B

    .line 205
    .line 206
    fill-array-data v2, :array_5a6

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    const/16 p2, 0x14

    .line 217
    .line 218
    new-array p2, p2, [B

    .line 219
    .line 220
    fill-array-data p2, :array_5ae

    .line 221
    .line 222
    .line 223
    new-array v0, v0, [B

    .line 224
    .line 225
    fill-array-data v0, :array_5bc

    .line 226
    .line 227
    .line 228
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p1, p2, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 236
    .line 237
    const-class v0, Lm0/w1;

    .line 238
    .line 239
    invoke-static {p2, v0, p1}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_f2
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-interface {p1, v10, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_fd
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p1, v10, v8}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_108
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-interface {p1, v10, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_113
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 277
    .line 278
    .line 279
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-interface {p1, v10, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_11e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-interface {p1, v7, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_129
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-interface {p1, v7, v8}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_134
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-interface {p1, v7, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :pswitch_13f
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 321
    .line 322
    .line 323
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-interface {p1, v7, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_14a
    invoke-static {v9, v3}, Le0/d0;->c(IF)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_14e
    invoke-static {v9, v2}, Le0/d0;->c(IF)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_152
    invoke-static {v10, v3}, Le0/d0;->c(IF)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :pswitch_156
    invoke-static {v10, v2}, Le0/d0;->c(IF)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_15a
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 348
    .line 349
    invoke-static {p1}, Ly5/k;->k(Landroid/content/Context;)I

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    if-gez p2, :cond_164

    .line 354
    .line 355
    goto/16 :goto_4ef

    .line 356
    .line 357
    :cond_164
    sget v0, Ly5/k;->b:I

    .line 358
    .line 359
    if-ltz v0, :cond_169

    .line 360
    .line 361
    move p2, v0

    .line 362
    :cond_169
    add-int/2addr p2, v10

    .line 363
    invoke-static {p2, p1}, Ly5/k;->t(ILandroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :pswitch_16e
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 368
    .line 369
    invoke-static {p1}, Ly5/k;->k(Landroid/content/Context;)I

    .line 370
    .line 371
    .line 372
    move-result p2

    .line 373
    if-gez p2, :cond_178

    .line 374
    .line 375
    goto/16 :goto_4ef

    .line 376
    .line 377
    :cond_178
    sget v0, Ly5/k;->b:I

    .line 378
    .line 379
    if-ltz v0, :cond_17d

    .line 380
    .line 381
    move p2, v0

    .line 382
    :cond_17d
    add-int/2addr p2, v1

    .line 383
    invoke-static {p2, p1}, Ly5/k;->t(ILandroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :pswitch_182
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 388
    .line 389
    .line 390
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-interface {p1, v7}, Lcom/example/navistart/cores/CarCmdProxy;->setRecirculation(Z)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_18d
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 399
    .line 400
    .line 401
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-interface {p1, v10}, Lcom/example/navistart/cores/CarCmdProxy;->setRecirculation(Z)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :pswitch_198
    new-instance p1, Landroid/content/Intent;

    .line 410
    .line 411
    const/16 p2, 0x25

    .line 412
    .line 413
    new-array p2, p2, [B

    .line 414
    .line 415
    fill-array-data p2, :array_5c4

    .line 416
    .line 417
    .line 418
    new-array v0, v0, [B

    .line 419
    .line 420
    fill-array-data v0, :array_5dc

    .line 421
    .line 422
    .line 423
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 431
    .line 432
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :pswitch_1b3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 437
    .line 438
    .line 439
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    const/16 p2, 0x15

    .line 444
    .line 445
    new-array p2, p2, [B

    .line 446
    .line 447
    fill-array-data p2, :array_5e4

    .line 448
    .line 449
    .line 450
    new-array v0, v0, [B

    .line 451
    .line 452
    fill-array-data v0, :array_5f4

    .line 453
    .line 454
    .line 455
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p2

    .line 459
    invoke-virtual {p1, p2}, Lj0/c;->a(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_1ce
    new-instance p1, Landroid/os/Bundle;

    .line 464
    .line 465
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 466
    .line 467
    .line 468
    new-array p2, v8, [B

    .line 469
    .line 470
    fill-array-data p2, :array_5fc

    .line 471
    .line 472
    .line 473
    new-array v0, v0, [B

    .line 474
    .line 475
    fill-array-data v0, :array_602

    .line 476
    .line 477
    .line 478
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p2

    .line 482
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 483
    .line 484
    .line 485
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-interface {v0}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 494
    .line 495
    .line 496
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 497
    .line 498
    const-class v0, Lm0/k2;

    .line 499
    .line 500
    invoke-static {p2, v0, p1}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :pswitch_1f7
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 505
    .line 506
    .line 507
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-interface {p1, v8}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_202
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 516
    .line 517
    .line 518
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-interface {p1, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :pswitch_20d
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 527
    .line 528
    .line 529
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-interface {p1, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :pswitch_218
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    invoke-interface {p1, v10, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 545
    .line 546
    .line 547
    return-void

    .line 548
    :pswitch_223
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 549
    .line 550
    .line 551
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-interface {p1, v10, v8}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :pswitch_22e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 560
    .line 561
    .line 562
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-interface {p1, v10, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_239
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 571
    .line 572
    .line 573
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-interface {p1, v10, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_244
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 582
    .line 583
    .line 584
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-interface {p1, v7, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_24f
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 593
    .line 594
    .line 595
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-interface {p1, v7, v8}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :pswitch_25a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 604
    .line 605
    .line 606
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    invoke-interface {p1, v7, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :pswitch_265
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 615
    .line 616
    .line 617
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    invoke-interface {p1, v7, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_270
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 626
    .line 627
    .line 628
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 633
    .line 634
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->zadheatonoff(Ljava/lang/Boolean;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_27d
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 639
    .line 640
    .line 641
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 646
    .line 647
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->zadheatonoff(Ljava/lang/Boolean;)V

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :pswitch_28a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 652
    .line 653
    .line 654
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 659
    .line 660
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->lobheatonoff(Ljava/lang/Boolean;)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :pswitch_297
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 665
    .line 666
    .line 667
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 672
    .line 673
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->lobheatonoff(Ljava/lang/Boolean;)V

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_2a4
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 678
    .line 679
    .line 680
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 685
    .line 686
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->rulheatonoff(Ljava/lang/Boolean;)V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :pswitch_2b1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 691
    .line 692
    .line 693
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 698
    .line 699
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->rulheatonoff(Ljava/lang/Boolean;)V

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :pswitch_2be
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 704
    .line 705
    .line 706
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    invoke-interface {p1, v6, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 711
    .line 712
    .line 713
    return-void

    .line 714
    :pswitch_2c9
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 715
    .line 716
    .line 717
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 718
    .line 719
    .line 720
    move-result-object p1

    .line 721
    invoke-interface {p1, v8, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 722
    .line 723
    .line 724
    return-void

    .line 725
    :pswitch_2d4
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 726
    .line 727
    .line 728
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    invoke-interface {p1, v9, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 733
    .line 734
    .line 735
    return-void

    .line 736
    :pswitch_2df
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    invoke-interface {p1, v10, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 744
    .line 745
    .line 746
    return-void

    .line 747
    :pswitch_2ea
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 748
    .line 749
    .line 750
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 751
    .line 752
    .line 753
    move-result-object p1

    .line 754
    invoke-interface {p1, v6, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :pswitch_2f5
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 759
    .line 760
    .line 761
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    invoke-interface {p1, v8, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 766
    .line 767
    .line 768
    return-void

    .line 769
    :pswitch_300
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 770
    .line 771
    .line 772
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    invoke-interface {p1, v9, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 777
    .line 778
    .line 779
    return-void

    .line 780
    :pswitch_30b
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 781
    .line 782
    .line 783
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    invoke-interface {p1, v10, v9}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 788
    .line 789
    .line 790
    return-void

    .line 791
    :pswitch_316
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 792
    .line 793
    .line 794
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 795
    .line 796
    .line 797
    move-result-object p1

    .line 798
    invoke-interface {p1, v6, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 799
    .line 800
    .line 801
    return-void

    .line 802
    :pswitch_321
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 803
    .line 804
    .line 805
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    invoke-interface {p1, v8, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :pswitch_32c
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 814
    .line 815
    .line 816
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    invoke-interface {p1, v9, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 821
    .line 822
    .line 823
    return-void

    .line 824
    :pswitch_337
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 825
    .line 826
    .line 827
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 828
    .line 829
    .line 830
    move-result-object p1

    .line 831
    invoke-interface {p1, v10, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 832
    .line 833
    .line 834
    return-void

    .line 835
    :pswitch_342
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 836
    .line 837
    .line 838
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    invoke-interface {p1, v6, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 843
    .line 844
    .line 845
    return-void

    .line 846
    :pswitch_34d
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 847
    .line 848
    .line 849
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 850
    .line 851
    .line 852
    move-result-object p1

    .line 853
    invoke-interface {p1, v8, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :pswitch_358
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 858
    .line 859
    .line 860
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 861
    .line 862
    .line 863
    move-result-object p1

    .line 864
    invoke-interface {p1, v9, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :pswitch_363
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 869
    .line 870
    .line 871
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    invoke-interface {p1, v10, v10}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 876
    .line 877
    .line 878
    return-void

    .line 879
    :pswitch_36e
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 880
    .line 881
    invoke-static {p1, v7}, Lk0/a;->a(Landroid/content/Context;Z)V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_374
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 886
    .line 887
    invoke-static {p1, v10}, Lk0/a;->a(Landroid/content/Context;Z)V

    .line 888
    .line 889
    .line 890
    return-void

    .line 891
    :pswitch_37a
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 892
    .line 893
    sget-object p2, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-static {p1, p2}, Lcom/example/navistart/Notik;->f(Landroid/content/Context;Ljava/util/List;)V

    .line 896
    .line 897
    .line 898
    return-void

    .line 899
    :pswitch_382
    sget-object p1, Lcom/example/navistart/MyA11yService;->c:Lcom/example/navistart/MyA11yService;

    .line 900
    .line 901
    if-eqz p1, :cond_4ef

    .line 902
    .line 903
    invoke-virtual {p1, v9}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 904
    .line 905
    .line 906
    return-void

    .line 907
    :pswitch_38a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 908
    .line 909
    .line 910
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    sget-object p2, Ln0/g;->e:Ln0/g;

    .line 915
    .line 916
    invoke-virtual {p1, p2}, Le0/x1;->c(Ln0/g;)V

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :pswitch_397
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 921
    .line 922
    .line 923
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 924
    .line 925
    .line 926
    move-result-object p1

    .line 927
    sget-object p2, Ln0/g;->d:Ln0/g;

    .line 928
    .line 929
    invoke-virtual {p1, p2}, Le0/x1;->c(Ln0/g;)V

    .line 930
    .line 931
    .line 932
    return-void

    .line 933
    :pswitch_3a4
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 934
    .line 935
    .line 936
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 937
    .line 938
    .line 939
    move-result-object p1

    .line 940
    sget-object p2, Ln0/g;->c:Ln0/g;

    .line 941
    .line 942
    invoke-virtual {p1, p2}, Le0/x1;->c(Ln0/g;)V

    .line 943
    .line 944
    .line 945
    return-void

    .line 946
    :pswitch_3b1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 947
    .line 948
    .line 949
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 950
    .line 951
    .line 952
    move-result-object p1

    .line 953
    sget-object p2, Ln0/g;->b:Ln0/g;

    .line 954
    .line 955
    invoke-virtual {p1, p2}, Le0/x1;->c(Ln0/g;)V

    .line 956
    .line 957
    .line 958
    return-void

    .line 959
    :pswitch_3be
    invoke-static {v9}, Le0/d0;->a(I)V

    .line 960
    .line 961
    .line 962
    return-void

    .line 963
    :pswitch_3c2
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 964
    .line 965
    .line 966
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenCustomPPPri()V

    .line 971
    .line 972
    .line 973
    return-void

    .line 974
    :pswitch_3cd
    invoke-static {v10}, Le0/d0;->a(I)V

    .line 975
    .line 976
    .line 977
    return-void

    .line 978
    :pswitch_3d1
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 979
    .line 980
    new-instance p2, Landroid/content/Intent;

    .line 981
    .line 982
    iget-object v0, p0, Le0/d0;->a:Landroid/content/Context;

    .line 983
    .line 984
    const-class v1, Lcom/example/navistart/CarControlActivity;

    .line 985
    .line 986
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 990
    .line 991
    .line 992
    move-result-object p2

    .line 993
    invoke-static {p1, p2, v5}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 994
    .line 995
    .line 996
    return-void

    .line 997
    :pswitch_3e4
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 998
    .line 999
    .line 1000
    move-result-object p1

    .line 1001
    new-array p2, v0, [B

    .line 1002
    .line 1003
    fill-array-data p2, :array_60a

    .line 1004
    .line 1005
    .line 1006
    new-array v0, v0, [B

    .line 1007
    .line 1008
    fill-array-data v0, :array_612

    .line 1009
    .line 1010
    .line 1011
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object p2

    .line 1015
    invoke-virtual {p1, p2, v9}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 1016
    .line 1017
    .line 1018
    move-result p1

    .line 1019
    if-ne p1, v10, :cond_407

    .line 1020
    .line 1021
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1022
    .line 1023
    .line 1024
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProGu()V

    .line 1029
    .line 1030
    .line 1031
    return-void

    .line 1032
    :cond_407
    if-ne p1, v9, :cond_414

    .line 1033
    .line 1034
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProPri()V

    .line 1042
    .line 1043
    .line 1044
    return-void

    .line 1045
    :cond_414
    if-ne p1, v8, :cond_4ef

    .line 1046
    .line 1047
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1048
    .line 1049
    .line 1050
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProGu()V

    .line 1055
    .line 1056
    .line 1057
    return-void

    .line 1058
    :pswitch_421
    sget-object p1, Lcom/example/navistart/MyA11yService;->c:Lcom/example/navistart/MyA11yService;

    .line 1059
    .line 1060
    if-eqz p1, :cond_4ef

    .line 1061
    .line 1062
    invoke-virtual {p1, v10}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 1063
    .line 1064
    .line 1065
    return-void

    .line 1066
    :pswitch_429
    new-instance p1, Landroid/os/Bundle;

    .line 1067
    .line 1068
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    new-array v1, v8, [B

    .line 1072
    .line 1073
    fill-array-data v1, :array_61a

    .line 1074
    .line 1075
    .line 1076
    new-array v0, v0, [B

    .line 1077
    .line 1078
    fill-array-data v0, :array_620

    .line 1079
    .line 1080
    .line 1081
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    .line 1087
    .line 1088
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1089
    .line 1090
    const-class v0, Lm0/o;

    .line 1091
    .line 1092
    invoke-static {p2, v0, p1}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1093
    .line 1094
    .line 1095
    return-void

    .line 1096
    :pswitch_447
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1097
    .line 1098
    .line 1099
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 1100
    .line 1101
    .line 1102
    move-result-object p1

    .line 1103
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProGu()V

    .line 1104
    .line 1105
    .line 1106
    return-void

    .line 1107
    :pswitch_452
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1108
    .line 1109
    new-instance p2, Landroid/content/Intent;

    .line 1110
    .line 1111
    iget-object v0, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1112
    .line 1113
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    const-class v1, Lcom/example/navistart/VibVodActivity;

    .line 1118
    .line 1119
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    .line 1124
    .line 1125
    move-result-object p2

    .line 1126
    invoke-static {p1, p2, v5}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1127
    .line 1128
    .line 1129
    return-void

    .line 1130
    :pswitch_469
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1131
    .line 1132
    .line 1133
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 1134
    .line 1135
    .line 1136
    move-result-object p1

    .line 1137
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1138
    .line 1139
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->sunupdown(Ljava/lang/Boolean;)V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_476
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1144
    .line 1145
    .line 1146
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p1

    .line 1150
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1151
    .line 1152
    invoke-interface {p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->sunupdown(Ljava/lang/Boolean;)V

    .line 1153
    .line 1154
    .line 1155
    return-void

    .line 1156
    :pswitch_483
    iget-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1157
    .line 1158
    const/4 v2, 0x7

    .line 1159
    new-array v2, v2, [B

    .line 1160
    .line 1161
    fill-array-data v2, :array_628

    .line 1162
    .line 1163
    .line 1164
    new-array v3, v0, [B

    .line 1165
    .line 1166
    fill-array-data v3, :array_630

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object p1

    .line 1177
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1178
    .line 1179
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p1

    .line 1183
    if-le p2, v1, :cond_4ef

    .line 1184
    .line 1185
    array-length v1, p1

    .line 1186
    if-ge p2, v1, :cond_4ef

    .line 1187
    .line 1188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1189
    .line 1190
    const/16 v2, 0x1a

    .line 1191
    .line 1192
    if-lt v1, v2, :cond_4b7

    .line 1193
    .line 1194
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    aget-object p1, p1, p2

    .line 1199
    .line 1200
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 1201
    .line 1202
    .line 1203
    move-result p1

    .line 1204
    invoke-static {v1, p1}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    :cond_4b7
    new-instance p1, Landroid/content/Intent;

    .line 1209
    .line 1210
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1211
    .line 1212
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p2

    .line 1216
    const-class v1, Lcom/example/navistart/BlackActivity;

    .line 1217
    .line 1218
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1222
    .line 1223
    .line 1224
    move-result-object p1

    .line 1225
    iget-object p2, p0, Le0/d0;->a:Landroid/content/Context;

    .line 1226
    .line 1227
    const/16 v1, 0x16

    .line 1228
    .line 1229
    new-array v1, v1, [B

    .line 1230
    .line 1231
    fill-array-data v1, :array_638

    .line 1232
    .line 1233
    .line 1234
    new-array v0, v0, [B

    .line 1235
    .line 1236
    fill-array-data v0, :array_648

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-static {p2, p1, v0}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1251
    .line 1252
    .line 1253
    return-void

    .line 1254
    :pswitch_4e5
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1255
    .line 1256
    .line 1257
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 1258
    .line 1259
    .line 1260
    move-result-object p1

    .line 1261
    invoke-interface {p1}, Lcom/example/navistart/cores/AreaDisplayProxy;->OpenProPri()V

    .line 1262
    .line 1263
    .line 1264
    :cond_4ef
    :goto_4ef
    return-void

    .line 1265
    :pswitch_data_4f0
    .packed-switch 0x1
        :pswitch_4e5
        :pswitch_483
        :pswitch_476
        :pswitch_469
        :pswitch_452
        :pswitch_447
        :pswitch_429
        :pswitch_421
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3cd
        :pswitch_3c2
        :pswitch_3be
        :pswitch_3b1
        :pswitch_3a4
        :pswitch_397
        :pswitch_38a
        :pswitch_382
        :pswitch_37a
        :pswitch_374
        :pswitch_36e
        :pswitch_363
        :pswitch_358
        :pswitch_34d
        :pswitch_342
        :pswitch_337
        :pswitch_32c
        :pswitch_321
        :pswitch_316
        :pswitch_30b
        :pswitch_300
        :pswitch_2f5
        :pswitch_2ea
        :pswitch_2df
        :pswitch_2d4
        :pswitch_2c9
        :pswitch_2be
        :pswitch_2b1
        :pswitch_2a4
        :pswitch_297
        :pswitch_28a
        :pswitch_27d
        :pswitch_270
        :pswitch_265
        :pswitch_25a
        :pswitch_24f
        :pswitch_244
        :pswitch_239
        :pswitch_22e
        :pswitch_223
        :pswitch_218
        :pswitch_20d
        :pswitch_202
        :pswitch_1f7
        :pswitch_1ce
        :pswitch_1b3
        :pswitch_198
        :pswitch_18d
        :pswitch_182
        :pswitch_16e
        :pswitch_15a
        :pswitch_156
        :pswitch_152
        :pswitch_14e
        :pswitch_14a
        :pswitch_13f
        :pswitch_134
        :pswitch_129
        :pswitch_11e
        :pswitch_113
        :pswitch_108
        :pswitch_fd
        :pswitch_f2
        :pswitch_c1
        :pswitch_af
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_47
        :pswitch_3c
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch

    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :array_5a0
    .array-data 1
        0x5at
        0x6dt
        0x7bt
    .end array-data

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    :array_5a6
    .array-data 1
        0x3et
        0x4t
        0x8t
        -0x2at
        -0x3ct
        -0x38t
        -0x3at
        0x2bt
    .end array-data

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    :array_5ae
    .array-data 1
        -0x5ft
        0x19t
        0x5at
        0x38t
        -0x33t
        0x3ft
        -0x4et
        -0x2at
        -0x64t
        0x1bt
        0x52t
        0x26t
        -0x3dt
        0x38t
        -0x7dt
        -0x26t
        -0x56t
        0x1ct
        0x58t
        0x24t
    .end array-data

    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    :array_5bc
    .array-data 1
        -0x3dt
        0x78t
        0x3dt
        0x4at
        -0x54t
        0x4at
        -0x24t
        -0x4et
    .end array-data

    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    :array_5c4
    .array-data 1
        -0x63t
        -0x1ct
        -0x63t
        -0x25t
        -0x21t
        0x5ft
        0x6et
        0x76t
        -0x72t
        -0x19t
        -0x6bt
        -0x25t
        -0x2ct
        0x46t
        0x79t
        0x72t
        -0x73t
        -0x1t
        -0x6ft
        -0x79t
        -0x32t
        0x9t
        0x7dt
        0x6et
        -0x70t
        -0x5bt
        -0x5dt
        -0x7bt
        -0x2dt
        0x44t
        0x67t
        0x35t
        -0x48t
        -0x1ct
        -0x6dt
        -0x80t
        -0x37t
    .end array-data

    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    nop

    .line 1501
    :array_5dc
    .array-data 1
        -0x2t
        -0x75t
        -0x10t
        -0xbt
        -0x46t
        0x27t
        0xft
        0x1bt
    .end array-data

    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :array_5e4
    .array-data 1
        -0x7t
        0x38t
        -0x69t
        -0x32t
        -0x28t
        0x3t
        -0x40t
        -0x71t
        -0x1at
        0x22t
        -0x75t
        -0xct
        -0x1at
        0x0t
        -0x2bt
        -0x5ct
        -0x1t
        0x24t
        -0x69t
        -0xat
        -0x36t
    .end array-data

    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    nop

    .line 1525
    :array_5f4
    .array-data 1
        -0x75t
        0x4dt
        -0x7t
        -0x6ft
        -0x47t
        0x73t
        -0x50t
        -0x30t
    .end array-data

    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    :array_5fc
    .array-data 1
        0x55t
        -0xat
        -0x49t
    .end array-data

    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    :array_602
    .array-data 1
        0x31t
        -0x61t
        -0x3ct
        -0x77t
        -0x70t
        -0x20t
        0x1at
        -0x15t
    .end array-data

    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    :array_60a
    .array-data 1
        -0x2t
        0x4t
        -0x51t
        0xat
        0x50t
        0x5dt
        -0x7ft
        -0x31t
    .end array-data

    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    :array_612
    .array-data 1
        -0x61t
        0x76t
        -0x36t
        0x6bt
        0x12t
        0x32t
        -0x12t
        -0x45t
    .end array-data

    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    :array_61a
    .array-data 1
        0x34t
        0x14t
        0x2et
    .end array-data

    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    :array_620
    .array-data 1
        0x50t
        0x7dt
        0x5dt
        -0x8t
        -0x8t
        -0x37t
        -0x67t
        0x2ft
    .end array-data

    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    :array_628
    .array-data 1
        0x16t
        -0x70t
        -0x1dt
        -0x44t
        0x3et
        0x8t
        -0x2ft
    .end array-data

    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    :array_630
    .array-data 1
        0x72t
        -0x7t
        -0x70t
        -0x34t
        0x52t
        0x69t
        -0x58t
        -0x38t
    .end array-data

    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    :array_638
    .array-data 1
        -0x3ct
        0x49t
        -0x34t
        0x47t
        0x76t
        -0x7et
        -0x5bt
        -0x1dt
        -0x18t
        0x58t
        -0x2at
        0x40t
        0x76t
        -0x68t
        -0xat
        -0x5ft
        -0x12t
        0x19t
        -0x2at
        0x5bt
        0x75t
        -0x80t
    .end array-data

    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    nop

    .line 1609
    :array_648
    .array-data 1
        -0x75t
        0x39t
        -0x48t
        0x2et
        0x19t
        -0x14t
        -0x2at
        -0x3dt
    .end array-data
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1
    iput-object p1, p0, Le0/d0;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p2, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_a
    if-eqz p1, :cond_15e

    .line 12
    .line 13
    invoke-static {}, Le0/d0;->b()Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_15e

    .line 22
    .line 23
    sget-object v0, Le0/d0;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xb

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    if-eqz v0, :cond_123

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_123

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    new-array v0, v0, [B

    .line 43
    .line 44
    fill-array-data v0, :array_160

    .line 45
    .line 46
    .line 47
    new-array v3, v2, [B

    .line 48
    .line 49
    fill-array-data v3, :array_168

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/16 v0, 0xca

    .line 61
    .line 62
    const/16 v3, 0xa

    .line 63
    .line 64
    if-ne p2, v0, :cond_59

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-array v4, v3, [B

    .line 74
    .line 75
    fill-array-data v4, :array_170

    .line 76
    .line 77
    .line 78
    new-array v5, v2, [B

    .line 79
    .line 80
    fill-array-data v5, :array_17a

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0, v4}, Lj0/c;->k(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_59
    const/16 v0, 0x12e

    .line 91
    .line 92
    if-ne p2, v0, :cond_75

    .line 93
    .line 94
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-array v4, v3, [B

    .line 102
    .line 103
    fill-array-data v4, :array_182

    .line 104
    .line 105
    .line 106
    new-array v5, v2, [B

    .line 107
    .line 108
    fill-array-data v5, :array_18c

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Lj0/c;->k(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_75
    const/16 v0, 0xc8

    .line 119
    .line 120
    if-ne p2, v0, :cond_91

    .line 121
    .line 122
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v4, v3, [B

    .line 130
    .line 131
    fill-array-data v4, :array_194

    .line 132
    .line 133
    .line 134
    new-array v5, v2, [B

    .line 135
    .line 136
    fill-array-data v5, :array_19e

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v4}, Lj0/c;->k(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_91
    const/16 v0, 0x12c

    .line 147
    .line 148
    if-ne p2, v0, :cond_b0

    .line 149
    .line 150
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-array v3, v3, [B

    .line 161
    .line 162
    fill-array-data v3, :array_1a6

    .line 163
    .line 164
    .line 165
    new-array v4, v2, [B

    .line 166
    .line 167
    fill-array-data v4, :array_1b0

    .line 168
    .line 169
    .line 170
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v0, v3}, Lj0/c;->k(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_b0
    const/16 v0, 0xc9

    .line 178
    .line 179
    if-ne p2, v0, :cond_cc

    .line 180
    .line 181
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-array v3, v1, [B

    .line 189
    .line 190
    fill-array-data v3, :array_1b8

    .line 191
    .line 192
    .line 193
    new-array v4, v2, [B

    .line 194
    .line 195
    fill-array-data v4, :array_1c2

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Lj0/c;->k(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_cc
    const/16 v0, 0x12d

    .line 206
    .line 207
    if-ne p2, v0, :cond_e8

    .line 208
    .line 209
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-array v3, v1, [B

    .line 217
    .line 218
    fill-array-data v3, :array_1ca

    .line 219
    .line 220
    .line 221
    new-array v4, v2, [B

    .line 222
    .line 223
    fill-array-data v4, :array_1d4

    .line 224
    .line 225
    .line 226
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v0, v3}, Lj0/c;->k(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_e8
    const/16 v0, 0xcb

    .line 234
    .line 235
    if-ne p2, v0, :cond_107

    .line 236
    .line 237
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-array v3, v2, [B

    .line 248
    .line 249
    fill-array-data v3, :array_1dc

    .line 250
    .line 251
    .line 252
    new-array v4, v2, [B

    .line 253
    .line 254
    fill-array-data v4, :array_1e4

    .line 255
    .line 256
    .line 257
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v0, v3}, Lj0/c;->k(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_107
    const/16 v0, 0x12f

    .line 265
    .line 266
    if-ne p2, v0, :cond_123

    .line 267
    .line 268
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    new-array v0, v2, [B

    .line 276
    .line 277
    fill-array-data v0, :array_1ec

    .line 278
    .line 279
    .line 280
    new-array v3, v2, [B

    .line 281
    .line 282
    fill-array-data v3, :array_1f4

    .line 283
    .line 284
    .line 285
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p2, v0}, Lj0/c;->k(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_123
    const/16 p2, 0x1f

    .line 293
    .line 294
    new-array p2, p2, [B

    .line 295
    .line 296
    fill-array-data p2, :array_1fc

    .line 297
    .line 298
    .line 299
    new-array v0, v2, [B

    .line 300
    .line 301
    fill-array-data v0, :array_210

    .line 302
    .line 303
    .line 304
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_15e

    .line 313
    .line 314
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    new-array p2, v1, [B

    .line 319
    .line 320
    fill-array-data p2, :array_218

    .line 321
    .line 322
    .line 323
    new-array v0, v2, [B

    .line 324
    .line 325
    fill-array-data v0, :array_222

    .line 326
    .line 327
    .line 328
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1, p2, v0}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 338
    .line 339
    .line 340
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-interface {p2}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    invoke-virtual {p0, p1, p2}, Le0/d0;->g(II)V

    .line 349
    .line 350
    .line 351
    :cond_15e
    return-void

    .line 352
    nop

    .line 353
    :array_160
    .array-data 1
        0x26t
        -0x1t
        0xft
        0x6ct
        -0x5t
        0x61t
        0x45t
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_168
    .array-data 1
        0x41t
        -0x66t
        0x7ct
        0x18t
        -0x72t
        0x13t
        0x20t
        0x38t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_170
    .array-data 1
        0x6ft
        -0x58t
        0x6t
        0x65t
        0x70t
        0x5at
        0x29t
        0x3ft
        0x38t
        -0x80t
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    nop

    .line 379
    :array_17a
    .array-data 1
        0x5dt
        -0x9t
        0x62t
        0xat
        0x7t
        0x34t
        0x76t
        0x51t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_182
    .array-data 1
        -0x4bt
        -0x59t
        0x6t
        0x5bt
        0x31t
        -0x67t
        0x4dt
        0x2ft
        -0x1dt
        -0x71t
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    nop

    .line 397
    :array_18c
    .array-data 1
        -0x7at
        -0x8t
        0x62t
        0x34t
        0x46t
        -0x9t
        0x12t
        0x41t
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_194
    .array-data 1
        0x57t
        0x5at
        -0x2ft
        -0x55t
        0x1dt
        0x5ct
        0x4et
        0x5dt
        0x0t
        0x72t
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    nop

    .line 415
    :array_19e
    .array-data 1
        0x65t
        0x5t
        -0x43t
        -0x32t
        0x7bt
        0x28t
        0x11t
        0x33t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_1a6
    .array-data 1
        -0x61t
        0x76t
        -0x6ft
        0x5ft
        0x16t
        0x69t
        -0x52t
        0x74t
        -0x37t
        0x5et
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    nop

    .line 433
    :array_1b0
    .array-data 1
        -0x54t
        0x29t
        -0x3t
        0x3at
        0x70t
        0x1dt
        -0xft
        0x1at
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_1b8
    .array-data 1
        0x3t
        -0x3bt
        -0x1dt
        -0x14t
        0xbt
        0x1at
        0x55t
        0x76t
        0x5ft
        -0x1t
        -0x1at
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_1c2
    .array-data 1
        0x31t
        -0x66t
        -0x6ft
        -0x7bt
        0x6ct
        0x72t
        0x21t
        0x29t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_1ca
    .array-data 1
        0x72t
        -0x34t
        0xet
        0x4ft
        0xdt
        -0x10t
        0x28t
        0x1bt
        0x2ft
        -0xat
        0xbt
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_1d4
    .array-data 1
        0x41t
        -0x6dt
        0x7ct
        0x26t
        0x6at
        -0x68t
        0x5ct
        0x44t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_1dc
    .array-data 1
        0x37t
        -0x72t
        -0x33t
        -0x3dt
        0x58t
        -0x78t
        -0x6bt
        0x1at
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_1e4
    .array-data 1
        0x5t
        -0x2ft
        -0x48t
        -0x4dt
        0x7t
        -0x1at
        -0x10t
        0x6dt
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_1ec
    .array-data 1
        -0x6ct
        0x55t
        0x11t
        0x6ct
        -0x5ct
        0x6ct
        -0x4ct
        -0x4dt
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_1f4
    .array-data 1
        -0x59t
        0xat
        0x64t
        0x1ct
        -0x5t
        0x2t
        -0x2ft
        -0x3ct
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_1fc
    .array-data 1
        -0x7ct
        -0x7dt
        0x9t
        -0x19t
        0x8t
        0x11t
        0x5at
        0x47t
        -0x7et
        -0x71t
        0x24t
        -0x21t
        0x1et
        0x1bt
        0x5dt
        0x46t
        -0x6bt
        -0x79t
        0x24t
        -0x2bt
        0x14t
        0xct
        0x4ct
        0x6ct
        -0x55t
        -0x73t
        0xet
        -0x2at
        0x18t
        0x0t
        0x6bt
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_210
    .array-data 1
        -0x19t
        -0x1et
        0x7bt
        -0x48t
        0x7bt
        0x68t
        0x29t
        0x33t
    .end array-data

    :array_218
    .array-data 1
        -0x33t
        0x6bt
        0x6t
        0x10t
        0x6at
        -0x6t
        -0x15t
        0x55t
        -0xet
        0x61t
        0x7t
    .end array-data

    :array_222
    .array-data 1
        -0x7ft
        0x4t
        0x73t
        0x7et
        0x9t
        -0x6et
        -0x57t
        0xat
    .end array-data
.end method
