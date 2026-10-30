.class public final Ly0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final b:Lcom/example/navistart/Transport/TransportService;

.field public final c:Landroid/os/Handler;

.field public final d:Ly0/d;

.field public final e:Landroid/support/v4/media/h;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/example/navistart/Transport/TransportService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ly0/b;->c:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Ly0/b;->b:Lcom/example/navistart/Transport/TransportService;

    .line 16
    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    new-array v2, v1, [B

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Landroid/support/v4/media/h;

    .line 41
    .line 42
    new-instance v3, Ln/p;

    .line 43
    .line 44
    const/16 v4, 0xe

    .line 45
    .line 46
    invoke-direct {v3, v4, p1}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ly0/a;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Ly0/a;-><init>(Ly0/b;)V

    .line 52
    .line 53
    .line 54
    const/16 v4, 0x18

    .line 55
    .line 56
    invoke-direct {v0, v3, p1, v2, v4}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Ly0/b;->e:Landroid/support/v4/media/h;

    .line 60
    .line 61
    const/16 p1, 0xf

    .line 62
    .line 63
    new-array p1, p1, [B

    .line 64
    .line 65
    fill-array-data p1, :array_2

    .line 66
    .line 67
    .line 68
    new-array v0, v1, [B

    .line 69
    .line 70
    fill-array-data v0, :array_3

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Ly0/a;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Ly0/a;-><init>(Ly0/b;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Ly0/b;->d:Ly0/d;

    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 1
        -0x35t
        -0x69t
        0x3at
        -0xbt
        0x4dt
        0x2ct
        -0x22t
        -0x5t
        -0x36t
        -0x68t
        0x13t
        -0x12t
        0x4ft
        0x2et
        -0x31t
        -0x5t
        -0x2dt
        -0x6dt
        0x28t
        -0x3dt
        0x5ct
        0x7ct
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    nop

    .line 105
    :array_1
    .array-data 1
        -0x5bt
        -0xat
        0x4ct
        -0x64t
        0x2at
        0x4dt
        -0x56t
        -0x6et
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 1
        0x2dt
        -0x2bt
        0x54t
        -0x79t
        -0x53t
        -0x14t
        -0x27t
        -0x60t
        0x2ct
        -0x26t
        0xct
        -0x7ft
        -0x46t
        -0x18t
        -0x3dt
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_3
    .array-data 1
        0x43t
        -0x4ct
        0x22t
        -0x12t
        -0x36t
        -0x73t
        -0x53t
        -0x37t
    .end array-data
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ly0/b;->b:Lcom/example/navistart/Transport/TransportService;

    .line 4
    .line 5
    const/16 v2, 0x11

    .line 6
    .line 7
    new-array v2, v2, [B

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [B

    .line 13
    .line 14
    fill-array-data v3, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-array v3, v0, [B

    .line 22
    .line 23
    fill-array-data v3, :array_2

    .line 24
    .line 25
    .line 26
    new-array v4, v0, [B

    .line 27
    .line 28
    fill-array-data v4, :array_3

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v2, p1, v3}, Ly0/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p1

    .line 40
    const/16 v1, 0x12

    .line 41
    .line 42
    new-array v1, v1, [B

    .line 43
    .line 44
    fill-array-data v1, :array_4

    .line 45
    .line 46
    .line 47
    new-array v2, v0, [B

    .line 48
    .line 49
    fill-array-data v2, :array_5

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/16 v2, 0x1d

    .line 57
    .line 58
    new-array v2, v2, [B

    .line 59
    .line 60
    fill-array-data v2, :array_6

    .line 61
    .line 62
    .line 63
    new-array v0, v0, [B

    .line 64
    .line 65
    fill-array-data v0, :array_7

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 1
        0x7ft
        -0x37t
        -0x7bt
        0xet
        -0x17t
        -0x57t
        0x49t
        -0x4bt
        0x7et
        -0x3at
        -0x23t
        0x15t
        -0x15t
        -0x45t
        0x48t
        -0x50t
        0x65t
    .end array-data

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
    .line 90
    nop

    .line 91
    :array_1
    .array-data 1
        0x11t
        -0x58t
        -0xdt
        0x67t
        -0x72t
        -0x38t
        0x3dt
        -0x24t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_2
    .array-data 1
        -0xdt
        0x4dt
        -0x37t
        -0x2at
        0x41t
        -0x48t
        0x7dt
        -0x4ft
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_3
    .array-data 1
        -0x7ft
        0x28t
        -0x5bt
        -0x41t
        0x20t
        -0x26t
        0x11t
        -0x2ct
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_4
    .array-data 1
        -0x42t
        -0x57t
        0x68t
        -0x22t
        0x5et
        -0x4t
        -0x3bt
        0x75t
        -0x61t
        -0x5at
        0x4ct
        -0x2et
        0x5at
        -0x8t
        -0x28t
        0x6at
        -0x6bt
        -0x46t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    nop

    .line 129
    :array_5
    .array-data 1
        -0x10t
        -0x38t
        0x1et
        -0x49t
        0x39t
        -0x63t
        -0x4ft
        0x1ct
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_6
    .array-data 1
        0xat
        0x5dt
        -0x5ct
        0x7t
        -0x4ct
        0x68t
        0x74t
        -0x70t
        0x2ct
        0x52t
        -0x52t
        0x49t
        -0x4bt
        0x7dt
        0x22t
        -0x76t
        0x2et
        0x5dt
        -0x42t
        0x0t
        -0x4ct
        0x72t
        0x74t
        -0x6ft
        0x2ct
        0x4ft
        -0x41t
        0x5t
        -0x51t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_7
    .array-data 1
        0x49t
        0x3ct
        -0x36t
        0x69t
        -0x25t
        0x1ct
        0x54t
        -0x1dt
    .end array-data
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly0/b;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Ly0/b;->c:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Ly0/b;->d:Ly0/d;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->g(Ly0/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method
