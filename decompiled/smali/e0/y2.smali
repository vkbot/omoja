.class public final Le0/y2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Le0/g2;

.field public b:Z

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

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
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 1
        -0x29t
        -0x7ft
        -0x73t
        -0x5ct
        0x13t
        -0x67t
        -0x68t
        0x78t
        -0x2et
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    nop

    .line 29
    :array_1
    .array-data 1
        -0x7et
        -0xft
        -0x17t
        -0x3bt
        0x67t
        -0x4t
        -0x27t
        0x28t
    .end array-data
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le0/y2;->b:Z

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    fill-array-data v4, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Le0/y2;->e:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v2, 0x1e

    .line 28
    .line 29
    iput v2, p0, Le0/y2;->f:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, p0, Le0/y2;->g:I

    .line 33
    .line 34
    iput-object p2, p0, Le0/y2;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    new-array p2, v1, [B

    .line 47
    .line 48
    fill-array-data p2, :array_2

    .line 49
    .line 50
    .line 51
    new-array p3, v3, [B

    .line 52
    .line 53
    fill-array-data p3, :array_3

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-array p2, v1, [B

    .line 62
    .line 63
    fill-array-data p2, :array_4

    .line 64
    .line 65
    .line 66
    new-array v1, v3, [B

    .line 67
    .line 68
    fill-array-data v1, :array_5

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-array v0, v0, [B

    .line 76
    .line 77
    const/4 v1, 0x6

    .line 78
    aput-byte v1, v0, v2

    .line 79
    .line 80
    new-array v1, v3, [B

    .line 81
    .line 82
    fill-array-data v1, :array_6

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_0
    iput-object p2, p0, Le0/y2;->e:Ljava/lang/String;

    .line 94
    .line 95
    const/4 p2, 0x0

    .line 96
    const/4 p3, -0x1

    .line 97
    invoke-static {p3, p2}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-instance p3, Le0/j2;

    .line 102
    .line 103
    const/4 v0, 0x4

    .line 104
    invoke-direct {p3, v0, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :array_0
    .array-data 1
        -0x10t
        0x45t
        0x3at
        -0xet
        -0x69t
        -0x5at
        -0x6at
        0x23t
        -0x55t
        0x54t
        0x2et
        -0x8t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 1
        -0x7bt
        0x35t
        0x5et
        -0x6dt
        -0x1dt
        -0x3dt
        -0x28t
        0x70t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 1
        -0x30t
        0x3t
        0x4at
        0x56t
        -0x70t
        -0x36t
        0x2ct
        -0x11t
        -0x75t
        0x12t
        0x5et
        0x5ct
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_3
    .array-data 1
        -0x5bt
        0x73t
        0x2et
        0x37t
        -0x1ct
        -0x51t
        0x62t
        -0x44t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_4
    .array-data 1
        -0x55t
        0x31t
        -0x75t
        0x38t
        -0x1ft
        -0x4dt
        0x3t
        0x2t
        -0x34t
        0x53t
        -0x55t
        0x4at
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_5
    .array-data 1
        -0x10t
        0x6dt
        -0x29t
        0x17t
        -0x25t
        -0x67t
        0x3ct
        0x20t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_6
    .array-data 1
        0x59t
        -0x64t
        -0xet
        0x40t
        -0x23t
        0x39t
        0x12t
        -0x72t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/16 v2, 0x8

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    .line 112
    invoke-static {v1, v3, v0, p1}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 113
    new-array v3, v1, [B

    fill-array-data v3, :array_2

    new-array v4, v2, [B

    fill-array-data v4, :array_3

    .line 114
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v1, [B

    fill-array-data p1, :array_4

    new-array v1, v2, [B

    fill-array-data v1, :array_5

    .line 117
    invoke-static {p1, v1, v3}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0xc

    .line 118
    new-array p1, p1, [B

    fill-array-data p1, :array_6

    new-array v1, v2, [B

    fill-array-data v1, :array_7

    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object p1

    .line 119
    :goto_1
    invoke-direct {p0, p2, v0, p1}, Le0/y2;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2ft
        -0x2et
        -0xdt
        0x4ct
        -0x12t
        -0x76t
        -0xct
        0x5t
        0x30t
        -0x38t
        -0x57t
        0x56t
        -0x49t
        -0x3ct
        -0x57t
        0x15t
        0x28t
        -0x37t
        -0x15t
        0x4ft
        -0x6t
        -0x29t
        -0x52t
        0x4et
    .end array-data

    :array_1
    .array-data 1
        0x47t
        -0x5at
        -0x79t
        0x3ct
        -0x2ct
        -0x5bt
        -0x25t
        0x61t
    .end array-data

    :array_2
    .array-data 1
        -0x1ct
        -0x29t
        -0x42t
        0x48t
    .end array-data

    :array_3
    .array-data 1
        -0x36t
        -0x4at
        -0x32t
        0x23t
        0x19t
        -0x26t
        0x7ft
        0x5t
    .end array-data

    :array_4
    .array-data 1
        -0x40t
        -0x29t
        -0xat
        -0x30t
    .end array-data

    :array_5
    .array-data 1
        -0x12t
        -0x4at
        -0x7at
        -0x45t
        -0x78t
        -0x65t
        0x22t
        0x8t
    .end array-data

    :array_6
    .array-data 1
        -0xdt
        -0x23t
        0x5bt
        0x61t
        -0x19t
        -0x6et
        0x48t
        0x42t
        -0x58t
        -0x34t
        0x4ft
        0x6bt
    .end array-data

    :array_7
    .array-data 1
        -0x7at
        -0x53t
        0x3ft
        0x0t
        -0x6dt
        -0x9t
        0x6t
        0x11t
    .end array-data
.end method

.method public static a(Le0/y2;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget v0, p0, Le0/y2;->g:I

    .line 2
    .line 3
    iget v1, p0, Le0/y2;->f:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Le0/j2;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-direct {v1, v2, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 p0, 0x2710

    .line 23
    .line 24
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Le0/y2;->b(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;Le0/g2;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x16

    .line 11
    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v4, v3, [B

    .line 20
    .line 21
    fill-array-data v4, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Lj1/v;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v1, v2, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    new-instance p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0, p0}, Lcom/example/navistart/cores/InterC;->ip(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x5

    .line 71
    new-array v2, v2, [B

    .line 72
    .line 73
    fill-array-data v2, :array_2

    .line 74
    .line 75
    .line 76
    new-array v4, v3, [B

    .line 77
    .line 78
    fill-array-data v4, :array_3

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v1, v2, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    const/16 v1, 0xd

    .line 90
    .line 91
    new-array v1, v1, [B

    .line 92
    .line 93
    fill-array-data v1, :array_4

    .line 94
    .line 95
    .line 96
    new-array v2, v3, [B

    .line 97
    .line 98
    fill-array-data v2, :array_5

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v2, 0x0

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    new-instance v0, Landroid/content/Intent;

    .line 123
    .line 124
    const-class v1, Lcom/example/navistart/ProgressActivity;

    .line 125
    .line 126
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .line 128
    .line 129
    new-array v1, v3, [B

    .line 130
    .line 131
    fill-array-data v1, :array_6

    .line 132
    .line 133
    .line 134
    new-array v3, v3, [B

    .line 135
    .line 136
    fill-array-data v3, :array_7

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    const/high16 p0, 0x10000000

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    new-instance p0, Landroid/content/Intent;

    .line 156
    .line 157
    const/16 v1, 0x25

    .line 158
    .line 159
    new-array v1, v1, [B

    .line 160
    .line 161
    fill-array-data v1, :array_8

    .line 162
    .line 163
    .line 164
    new-array v4, v3, [B

    .line 165
    .line 166
    fill-array-data v4, :array_9

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const/16 v4, 0x9

    .line 193
    .line 194
    new-array v4, v4, [B

    .line 195
    .line 196
    fill-array-data v4, :array_a

    .line 197
    .line 198
    .line 199
    new-array v5, v3, [B

    .line 200
    .line 201
    fill-array-data v5, :array_b

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const/16 v1, 0x27

    .line 220
    .line 221
    new-array v1, v1, [B

    .line 222
    .line 223
    fill-array-data v1, :array_c

    .line 224
    .line 225
    .line 226
    new-array v3, v3, [B

    .line 227
    .line 228
    fill-array-data v3, :array_d

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    const v0, 0x14000003

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    invoke-static {p1, p0, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    :goto_0
    if-eqz p2, :cond_2

    .line 248
    .line 249
    iget-object p0, p2, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 250
    .line 251
    new-instance v0, La4/c;

    .line 252
    .line 253
    const/4 v1, 0x5

    .line 254
    const/16 v2, 0x64

    .line 255
    .line 256
    invoke-direct {v0, p2, v2, v1}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Le0/f2;

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    invoke-direct {v0, p2, v1}, Le0/f2;-><init>(Le0/g2;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const v0, 0x7f1301a3

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    new-instance v0, La1/a;

    .line 283
    .line 284
    const/16 v1, 0x1d

    .line 285
    .line 286
    invoke-direct {v0, v1, p2, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    .line 291
    .line 292
    :cond_2
    return-void

    .line 293
    :array_0
    .array-data 1
        0x69t
        0x3dt
        -0x16t
        -0x2ct
        0x53t
        0x6et
        0x60t
        0x21t
        0x69t
        0x3dt
        -0x16t
        -0x36t
        0x4bt
        0x6et
        0x63t
        0xct
        0x4et
        0x19t
        -0x7t
        -0x37t
        0x5ft
        0x48t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    nop

    .line 309
    :array_1
    .array-data 1
        0x1at
        0x49t
        -0x75t
        -0x5at
        0x27t
        0x31t
        0x29t
        0x4ft
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_2
    .array-data 1
        -0x2t
        -0x4t
        0x27t
        0x2t
        -0x6et
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    nop

    .line 325
    :array_3
    .array-data 1
        -0x46t
        -0x54t
        0x52t
        0x72t
        -0x1ft
        0x62t
        0x65t
        -0x2et
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_4
    .array-data 1
        -0x40t
        -0x67t
        -0x34t
        -0x1ct
        -0x7et
        -0x1dt
        0x6ft
        0x50t
        -0x35t
        -0x70t
        -0x2dt
        -0x12t
        -0x68t
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    nop

    .line 345
    :array_5
    .array-data 1
        -0x5ct
        -0x4t
        -0x46t
        -0x73t
        -0x1ft
        -0x7at
        0x30t
        0x20t
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_6
    .array-data 1
        0x54t
        0x29t
        -0x1bt
        0xct
        -0x36t
        0x7at
        0x48t
        -0x17t
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_7
    .array-data 1
        0x35t
        0x59t
        -0x72t
        0x53t
        -0x46t
        0x1bt
        0x3ct
        -0x7ft
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_8
    .array-data 1
        0xet
        -0x1et
        0x11t
        0x56t
        0x42t
        -0x53t
        -0x11t
        -0x54t
        0x6t
        -0x1et
        0x1t
        0x41t
        0x43t
        -0x50t
        -0x5bt
        -0x1dt
        0xct
        -0x8t
        0x1ct
        0x4bt
        0x43t
        -0x16t
        -0x3et
        -0x34t
        0x3ct
        -0x28t
        0x34t
        0x68t
        0x61t
        -0x65t
        -0x25t
        -0x3dt
        0x2ct
        -0x39t
        0x34t
        0x63t
        0x68t
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
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    nop

    .line 393
    :array_9
    .array-data 1
        0x6ft
        -0x74t
        0x75t
        0x24t
        0x2dt
        -0x3ct
        -0x75t
        -0x7et
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_a
    .array-data 1
        -0x64t
        0x16t
        -0xat
        -0x3ft
        0x17t
        -0x19t
        0x2et
        0x31t
        -0x40t
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    nop

    .line 411
    :array_b
    .array-data 1
        -0x4et
        0x66t
        -0x7ct
        -0x52t
        0x61t
        -0x72t
        0x4at
        0x54t
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_c
    .array-data 1
        0x4ft
        -0x5ct
        -0x31t
        0x6ft
        -0x16t
        0x4ft
        -0x65t
        -0xbt
        0x47t
        -0x45t
        -0x2ft
        0x2ct
        -0xbt
        0x42t
        -0x62t
        -0x51t
        0x4ft
        -0x46t
        -0x25t
        0x71t
        -0x14t
        0x45t
        -0x62t
        -0x51t
        0x5et
        -0x4bt
        -0x24t
        0x68t
        -0x1et
        0x4bt
        -0x61t
        -0x54t
        0x4ft
        -0x5at
        -0x24t
        0x6bt
        -0x16t
        0x5at
        -0x61t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_d
    .array-data 1
        0x2et
        -0x2ct
        -0x41t
        0x3t
        -0x7dt
        0x2ct
        -0x6t
        -0x7ft
    .end array-data
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le0/y2;->a:Le0/g2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    new-instance v2, La4/c;

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, v0, v4, v3}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Le0/y2;->a:Le0/g2;

    .line 18
    .line 19
    iget-object v1, v0, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    new-instance v2, Le0/f2;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, v0, v3}, Le0/f2;-><init>(Le0/g2;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Le0/y2;->a:Le0/g2;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v1, 0x7f130413

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, v0, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    new-instance v2, La1/a;

    .line 46
    .line 47
    const/16 v3, 0x1d

    .line 48
    .line 49
    invoke-direct {v2, v3, v0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Le0/y2;->a:Le0/g2;

    .line 56
    .line 57
    iget-object v0, p1, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    new-instance v1, Le0/f2;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v1, p1, v2}, Le0/f2;-><init>(Le0/g2;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Le0/y2;->b:Z

    .line 70
    .line 71
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget v0, p0, Le0/y2;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Le0/y2;->g:I

    .line 6
    .line 7
    new-instance v5, Ljava/io/File;

    .line 8
    .line 9
    iget-object v0, p0, Le0/y2;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Le0/y2;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-wide v6, v2

    .line 30
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Le0/y2;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    cmp-long v2, v6, v2

    .line 42
    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x5

    .line 46
    new-array v2, v2, [B

    .line 47
    .line 48
    fill-array-data v2, :array_0

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x8

    .line 52
    .line 53
    new-array v4, v3, [B

    .line 54
    .line 55
    fill-array-data v4, :array_1

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v8, 0x6

    .line 68
    new-array v8, v8, [B

    .line 69
    .line 70
    fill-array-data v8, :array_2

    .line 71
    .line 72
    .line 73
    new-array v9, v3, [B

    .line 74
    .line 75
    fill-array-data v9, :array_3

    .line 76
    .line 77
    .line 78
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-array v1, v1, [B

    .line 89
    .line 90
    const/16 v8, -0x34

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    aput-byte v8, v1, v9

    .line 94
    .line 95
    new-array v3, v3, [B

    .line 96
    .line 97
    fill-array-data v3, :array_4

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 112
    .line 113
    .line 114
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lh0/b;->m()Lokhttp3/OkHttpClient;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Le0/x2;

    .line 130
    .line 131
    move-object v3, p0

    .line 132
    move-object v4, p1

    .line 133
    invoke-direct/range {v2 .. v7}, Le0/x2;-><init>(Le0/y2;Landroid/content/Context;Ljava/io/File;J)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 1
        -0x74t
        0x30t
        -0x44t
        0x49t
        -0x4dt
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    .line 149
    :array_1
    .array-data 1
        -0x22t
        0x51t
        -0x2et
        0x2et
        -0x2at
        -0x7at
        0x3at
        0x5bt
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 1
        0x36t
        -0x19t
        0x22t
        -0x47t
        0x70t
        0x27t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    nop

    .line 165
    :array_3
    .array-data 1
        0x54t
        -0x62t
        0x56t
        -0x24t
        0x3t
        0x1at
        -0x5at
        0x6dt
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_4
    .array-data 1
        -0x1ft
        -0x36t
        -0x26t
        0x6dt
        0x4ft
        0x1at
        0x50t
        -0x77t
    .end array-data
.end method
