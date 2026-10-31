.class public Lcom/example/navistart/boot;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static u:Z = false


# instance fields
.field public b:Landroid/app/Notification$Builder;

.field public final c:Ljava/lang/Boolean;

.field public final d:Le0/v;

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public g:Ljava/util/concurrent/ScheduledFuture;

.field public h:Landroid/content/IntentFilter;

.field public i:Landroid/content/IntentFilter;

.field public j:Landroid/content/IntentFilter;

.field public k:Landroid/content/IntentFilter;

.field public final l:Ljava/lang/Boolean;

.field public m:Landroid/content/Context;

.field public n:Landroid/content/Intent;

.field public o:Lb1/c;

.field public p:Lcom/example/navistart/MyCarReceiver;

.field public q:Le0/d0;

.field public r:Le0/n3;

.field public s:Landroid/app/NotificationManager;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/boot;->c:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_40

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    fill-array-data v3, :array_46

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-wide/16 v3, 0x3e8

    .line 26
    .line 27
    invoke-static {v3, v4, v1}, Le0/w;->b(JLjava/lang/String;)Le0/v;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/example/navistart/boot;->d:Le0/v;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v1, v3}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/example/navistart/boot;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    .line 41
    const/16 v1, 0xe

    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_4e

    .line 46
    .line 47
    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    fill-array-data v2, :array_5a

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/example/navistart/boot;->l:Ljava/lang/Boolean;

    .line 57
    .line 58
    iput-object v3, p0, Lcom/example/navistart/boot;->s:Landroid/app/NotificationManager;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/example/navistart/boot;->t:Z

    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        -0x77t
        -0x66t
        0x7t
        0x18t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_46
    .array-data 1
        -0x15t
        -0xbt
        0x68t
        0x6ct
        -0x42t
        0x63t
        0x69t
        -0x5bt
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_4e
    .array-data 1
        -0x36t
        -0x7ct
        0x36t
        0x2t
        -0x31t
        -0x14t
        0x6bt
        0x3t
        -0x3et
        -0x7ct
        0x3et
        0x11t
        -0x17t
        -0x1t
    .end array-data

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
    :array_5a
    .array-data 1
        -0x5dt
        -0x16t
        0x5ft
        0x76t
        -0x74t
        -0x73t
        0x19t
        0x4et
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Le0/m;->k:[B

    .line 2
    .line 3
    sget-object v1, Le0/p3;->a:[Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/example/navistart/boot;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v2, 0x40

    .line 11
    .line 12
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 17
    .line 18
    if-eqz p0, :cond_39

    .line 19
    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_16
    if-ge v3, v1, :cond_39

    .line 24
    .line 25
    aget-object v4, p0, v3

    .line 26
    .line 27
    sget-object v5, Le0/m;->h:[B

    .line 28
    .line 29
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 30
    .line 31
    new-instance v6, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_39

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_16

    .line 58
    :catch_39
    :cond_39
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    fill-array-data v0, :array_1c

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_26

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 1
        0x5ft
        -0xat
        0x25t
        0x4ft
        0x53t
        -0x42t
        0x1bt
        -0x1at
        0x57t
        -0x4t
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    nop

    .line 39
    :array_26
    .array-data 1
        0x3et
        -0x68t
        0x41t
        0x3dt
        0x3ct
        -0x29t
        0x7ft
        -0x47t
    .end array-data
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Le0/m;->i:[B

    .line 2
    .line 3
    sget-object v1, Le0/p3;->a:[Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_1b
    array-length v2, p0

    .line 29
    if-ge v1, v2, :cond_35

    .line 30
    .line 31
    aget-byte v2, p0, v1

    .line 32
    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    add-int/lit16 v2, v2, 0x100

    .line 36
    .line 37
    const/16 v3, 0x10

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_1b

    .line 54
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_39} :catch_3a

    .line 58
    return-object p0

    .line 59
    :catch_3a
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    fill-array-data v2, :array_b6

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    new-array v4, v3, [B

    .line 15
    .line 16
    fill-array-data v4, :array_bc

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v6, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v6}, Lcom/example/navistart/boot;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, ""

    .line 39
    .line 40
    invoke-virtual {v5, v6, v7}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v5}, Lcom/example/navistart/boot;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Lcom/example/navistart/boot;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    new-array v2, v1, [B

    .line 68
    .line 69
    fill-array-data v2, :array_c4

    .line 70
    .line 71
    .line 72
    new-array v4, v3, [B

    .line 73
    .line 74
    fill-array-data v4, :array_ca

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v4, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v4}, Lcom/example/navistart/boot;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    new-array v2, v1, [B

    .line 91
    .line 92
    fill-array-data v2, :array_d2

    .line 93
    .line 94
    .line 95
    new-array v4, v3, [B

    .line 96
    .line 97
    fill-array-data v4, :array_d8

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v4, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v4}, Lcom/example/navistart/boot;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4}, Lcom/example/navistart/boot;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    new-array v2, v1, [B

    .line 118
    .line 119
    fill-array-data v2, :array_e0

    .line 120
    .line 121
    .line 122
    new-array v4, v3, [B

    .line 123
    .line 124
    fill-array-data v4, :array_e6

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    sget-object v5, Le0/m;->j:[B

    .line 136
    .line 137
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 138
    .line 139
    new-instance v6, Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v6, v7}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    new-array v2, v1, [B

    .line 152
    .line 153
    fill-array-data v2, :array_ee

    .line 154
    .line 155
    .line 156
    new-array v4, v3, [B

    .line 157
    .line 158
    fill-array-data v4, :array_f4

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    new-array v1, v1, [B

    .line 166
    .line 167
    fill-array-data v1, :array_fc

    .line 168
    .line 169
    .line 170
    new-array v3, v3, [B

    .line 171
    .line 172
    fill-array-data v3, :array_102

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :array_b6
    .array-data 1
        0x5at
        0x3bt
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    nop

    .line 189
    :array_bc
    .array-data 1
        0x3ft
        0x56t
        0x7dt
        0x26t
        -0x77t
        -0x28t
        0x2ct
        0x43t
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_c4
    .array-data 1
        -0x68t
        0x1t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_ca
    .array-data 1
        -0xft
        0x65t
        -0x1t
        -0x75t
        -0x5et
        -0x76t
        0x8t
        -0x7ft
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_d2
    .array-data 1
        -0x58t
        -0x30t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_d8
    .array-data 1
        -0x25t
        -0x48t
        0x12t
        0x69t
        -0x56t
        0x45t
        -0x75t
        -0x46t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_e0
    .array-data 1
        0x77t
        0x19t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    nop

    .line 231
    :array_e6
    .array-data 1
        0x7t
        0x70t
        -0x4bt
        0x5t
        0x61t
        0x1dt
        0x70t
        -0x6dt
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_ee
    .array-data 1
        -0x72t
        -0x1et
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_f4
    .array-data 1
        -0x13t
        -0x71t
        -0x3bt
        0x73t
        0x6ft
        -0x79t
        -0x18t
        -0x59t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_fc
    .array-data 1
        0x63t
        0x59t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :array_102
    .array-data 1
        0x11t
        0x2ct
        0x55t
        -0x71t
        -0x68t
        -0x5dt
        0x7ct
        -0x24t
    .end array-data
.end method

.method public final f()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/example/navistart/boot;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v0, :cond_11

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    throw v0

    .line 18
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_24

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_24

    .line 31
    .line 32
    iget-object v0, p0, Lcom/example/navistart/boot;->n:Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :cond_24
    new-instance v0, Landroid/content/Intent;

    .line 38
    .line 39
    const/16 v1, 0x1f

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    fill-array-data v1, :array_4a

    .line 44
    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    fill-array-data v2, :array_5e

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/example/navistart/boot;->n:Landroid/content/Intent;

    .line 61
    .line 62
    new-instance v0, Lcom/example/navistart/MyCarReceiver;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/example/navistart/MyCarReceiver;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/example/navistart/boot;->n:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/example/navistart/MyCarReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :array_4a
    .array-data 1
        -0xft
        -0x2ct
        -0x70t
        -0x4ft
        -0x22t
        -0x73t
        0x24t
        -0x2dt
        -0x7t
        -0x2ct
        -0x80t
        -0x5at
        -0x21t
        -0x70t
        0x6et
        -0x64t
        -0xdt
        -0x32t
        -0x63t
        -0x54t
        -0x21t
        -0x36t
        0x14t
        -0x4ct
        -0x23t
        -0x1t
        -0x55t
        -0x69t
        -0x8t
        -0x59t
        0xbt
    .end array-data

    .line 76
    :array_5e
    .array-data 1
        -0x70t
        -0x46t
        -0xct
        -0x3dt
        -0x4ft
        -0x1ct
        0x40t
        -0x3t
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .registers 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/example/navistart/boot;->u:Z

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x1a

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-lt v1, v2, :cond_82

    .line 14
    .line 15
    iget-object v2, p0, Lcom/example/navistart/boot;->s:Landroid/app/NotificationManager;

    .line 16
    .line 17
    if-nez v2, :cond_2a

    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    new-array v2, v2, [B

    .line 22
    .line 23
    fill-array-data v2, :array_1e2

    .line 24
    .line 25
    .line 26
    new-array v4, v3, [B

    .line 27
    .line 28
    fill-array-data v4, :array_1ec

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/NotificationManager;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/example/navistart/boot;->s:Landroid/app/NotificationManager;

    .line 42
    .line 43
    :cond_2a
    iget-boolean v2, p0, Lcom/example/navistart/boot;->t:Z

    .line 44
    .line 45
    if-nez v2, :cond_65

    .line 46
    .line 47
    invoke-static {}, Lw0/d;->g()V

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x10

    .line 51
    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    fill-array-data v2, :array_1f4

    .line 55
    .line 56
    .line 57
    new-array v4, v3, [B

    .line 58
    .line 59
    fill-array-data v4, :array_200

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/16 v4, 0xa

    .line 67
    .line 68
    new-array v4, v4, [B

    .line 69
    .line 70
    fill-array-data v4, :array_208

    .line 71
    .line 72
    .line 73
    new-array v5, v3, [B

    .line 74
    .line 75
    fill-array-data v5, :array_212

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v2, v4}, Lc5/h;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2}, Lc5/h;->p(Landroid/app/NotificationChannel;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lc5/h;->C(Landroid/app/NotificationChannel;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lc5/h;->D(Landroid/app/NotificationChannel;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lcom/example/navistart/boot;->s:Landroid/app/NotificationManager;

    .line 96
    .line 97
    invoke-static {v4, v2}, Lw0/d;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 98
    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/example/navistart/boot;->t:Z

    .line 101
    .line 102
    :cond_65
    new-instance v2, Landroid/app/Notification$Builder;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/16 v4, 0x10

    .line 109
    .line 110
    new-array v4, v4, [B

    .line 111
    .line 112
    fill-array-data v4, :array_21a

    .line 113
    .line 114
    .line 115
    new-array v5, v3, [B

    .line 116
    .line 117
    fill-array-data v5, :array_226

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v2, v4}, Lc5/h;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/example/navistart/boot;->b:Landroid/app/Notification$Builder;

    .line 129
    .line 130
    goto :goto_8d

    .line 131
    :cond_82
    new-instance v2, Landroid/app/Notification$Builder;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/example/navistart/boot;->b:Landroid/app/Notification$Builder;

    .line 141
    .line 142
    :goto_8d
    iget-object v2, p0, Lcom/example/navistart/boot;->b:Landroid/app/Notification$Builder;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Lcom/example/navistart/boot;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {p0, v2}, Lcom/example/navistart/boot;->pusk(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_ab

    .line 160
    .line 161
    iget-object v2, p0, Lcom/example/navistart/boot;->l:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_ab

    .line 168
    .line 169
    iget-object v2, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 170
    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    move-object v2, p0

    .line 173
    :goto_ac
    iput-object v2, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 174
    .line 175
    new-instance v2, Lb1/c;

    .line 176
    .line 177
    invoke-direct {v2}, Lb1/c;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, Lcom/example/navistart/boot;->o:Lb1/c;

    .line 181
    .line 182
    new-instance v2, Landroid/content/IntentFilter;

    .line 183
    .line 184
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v2, p0, Lcom/example/navistart/boot;->h:Landroid/content/IntentFilter;

    .line 188
    .line 189
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lh0/b;->l()Li0/b;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-interface {v4}, Li0/b;->b()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/example/navistart/boot;->o:Lb1/c;

    .line 204
    .line 205
    iget-object v4, p0, Lcom/example/navistart/boot;->h:Landroid/content/IntentFilter;

    .line 206
    .line 207
    const/16 v5, 0x21

    .line 208
    .line 209
    if-lt v1, v5, :cond_d6

    .line 210
    .line 211
    invoke-static {p0, v2, v4}, Lc5/h;->v(Lcom/example/navistart/boot;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 212
    .line 213
    .line 214
    goto :goto_d9

    .line 215
    :cond_d6
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    :goto_d9
    new-instance v2, Lcom/example/navistart/MyCarReceiver;

    .line 219
    .line 220
    invoke-direct {v2}, Lcom/example/navistart/MyCarReceiver;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v2, p0, Lcom/example/navistart/boot;->p:Lcom/example/navistart/MyCarReceiver;

    .line 224
    .line 225
    new-instance v2, Landroid/content/IntentFilter;

    .line 226
    .line 227
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v2, p0, Lcom/example/navistart/boot;->i:Landroid/content/IntentFilter;

    .line 231
    .line 232
    const/16 v4, 0x1f

    .line 233
    .line 234
    new-array v4, v4, [B

    .line 235
    .line 236
    fill-array-data v4, :array_22e

    .line 237
    .line 238
    .line 239
    new-array v6, v3, [B

    .line 240
    .line 241
    fill-array-data v6, :array_242

    .line 242
    .line 243
    .line 244
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, p0, Lcom/example/navistart/boot;->i:Landroid/content/IntentFilter;

    .line 252
    .line 253
    const/16 v4, 0x2d

    .line 254
    .line 255
    new-array v6, v4, [B

    .line 256
    .line 257
    fill-array-data v6, :array_24a

    .line 258
    .line 259
    .line 260
    new-array v7, v3, [B

    .line 261
    .line 262
    fill-array-data v7, :array_266

    .line 263
    .line 264
    .line 265
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v2, p0, Lcom/example/navistart/boot;->i:Landroid/content/IntentFilter;

    .line 273
    .line 274
    const/16 v6, 0x20

    .line 275
    .line 276
    new-array v6, v6, [B

    .line 277
    .line 278
    fill-array-data v6, :array_26e

    .line 279
    .line 280
    .line 281
    new-array v7, v3, [B

    .line 282
    .line 283
    fill-array-data v7, :array_282

    .line 284
    .line 285
    .line 286
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Lcom/example/navistart/boot;->i:Landroid/content/IntentFilter;

    .line 294
    .line 295
    const/16 v6, 0x22

    .line 296
    .line 297
    new-array v6, v6, [B

    .line 298
    .line 299
    fill-array-data v6, :array_28a

    .line 300
    .line 301
    .line 302
    new-array v7, v3, [B

    .line 303
    .line 304
    fill-array-data v7, :array_2a0

    .line 305
    .line 306
    .line 307
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, p0, Lcom/example/navistart/boot;->p:Lcom/example/navistart/MyCarReceiver;

    .line 315
    .line 316
    iget-object v6, p0, Lcom/example/navistart/boot;->i:Landroid/content/IntentFilter;

    .line 317
    .line 318
    if-lt v1, v5, :cond_143

    .line 319
    .line 320
    invoke-static {p0, v2, v6}, Lc5/h;->v(Lcom/example/navistart/boot;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 321
    .line 322
    .line 323
    goto :goto_146

    .line 324
    :cond_143
    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    :goto_146
    new-instance v2, Le0/d0;

    .line 328
    .line 329
    iget-object v6, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 330
    .line 331
    invoke-direct {v2, v6}, Le0/d0;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    iput-object v2, p0, Lcom/example/navistart/boot;->q:Le0/d0;

    .line 335
    .line 336
    new-instance v2, Landroid/content/IntentFilter;

    .line 337
    .line 338
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-object v2, p0, Lcom/example/navistart/boot;->j:Landroid/content/IntentFilter;

    .line 342
    .line 343
    new-array v4, v4, [B

    .line 344
    .line 345
    fill-array-data v4, :array_2a8

    .line 346
    .line 347
    .line 348
    new-array v6, v3, [B

    .line 349
    .line 350
    fill-array-data v6, :array_2c4

    .line 351
    .line 352
    .line 353
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object v2, p0, Lcom/example/navistart/boot;->q:Le0/d0;

    .line 361
    .line 362
    iget-object v4, p0, Lcom/example/navistart/boot;->j:Landroid/content/IntentFilter;

    .line 363
    .line 364
    if-lt v1, v5, :cond_171

    .line 365
    .line 366
    invoke-static {p0, v2, v4}, Lc5/h;->v(Lcom/example/navistart/boot;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 367
    .line 368
    .line 369
    goto :goto_174

    .line 370
    :cond_171
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    :goto_174
    new-instance v2, Le0/n3;

    .line 374
    .line 375
    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 376
    .line 377
    .line 378
    iput-boolean v0, v2, Le0/n3;->a:Z

    .line 379
    .line 380
    iput-object v2, p0, Lcom/example/navistart/boot;->r:Le0/n3;

    .line 381
    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    .line 383
    .line 384
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .line 386
    .line 387
    iput-object v0, p0, Lcom/example/navistart/boot;->k:Landroid/content/IntentFilter;

    .line 388
    .line 389
    const/16 v2, 0x10

    .line 390
    .line 391
    new-array v2, v2, [B

    .line 392
    .line 393
    fill-array-data v2, :array_2cc

    .line 394
    .line 395
    .line 396
    new-array v4, v3, [B

    .line 397
    .line 398
    fill-array-data v4, :array_2d8

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, p0, Lcom/example/navistart/boot;->k:Landroid/content/IntentFilter;

    .line 409
    .line 410
    const/16 v2, 0xe

    .line 411
    .line 412
    new-array v2, v2, [B

    .line 413
    .line 414
    fill-array-data v2, :array_2e0

    .line 415
    .line 416
    .line 417
    new-array v3, v3, [B

    .line 418
    .line 419
    fill-array-data v3, :array_2ec

    .line 420
    .line 421
    .line 422
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, p0, Lcom/example/navistart/boot;->r:Le0/n3;

    .line 430
    .line 431
    iget-object v2, p0, Lcom/example/navistart/boot;->k:Landroid/content/IntentFilter;

    .line 432
    .line 433
    if-lt v1, v5, :cond_1b6

    .line 434
    .line 435
    invoke-static {p0, v0, v2}, Lc5/h;->v(Lcom/example/navistart/boot;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 436
    .line 437
    .line 438
    goto :goto_1b9

    .line 439
    :cond_1b6
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    .line 441
    .line 442
    :goto_1b9
    iget-object v0, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 443
    .line 444
    invoke-static {v0}, Le0/d0;->d(Landroid/content/Context;)V

    .line 445
    .line 446
    .line 447
    sget-object v0, Lcom/example/navistart/punto;->v:[B

    .line 448
    .line 449
    sget-object v1, Le0/z2;->a:Ljava/lang/String;

    .line 450
    .line 451
    new-instance v1, Ljava/lang/String;

    .line 452
    .line 453
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 454
    .line 455
    .line 456
    sput-object v1, Lcom/example/navistart/punto;->u:Ljava/lang/String;

    .line 457
    .line 458
    iget-object v0, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 459
    .line 460
    invoke-static {v0}, Le0/d0;->d(Landroid/content/Context;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 464
    .line 465
    invoke-static {v0}, Lcom/example/navistart/boot;->b(Landroid/content/Context;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_1e1

    .line 470
    .line 471
    iget-object v0, p0, Lcom/example/navistart/boot;->c:Ljava/lang/Boolean;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-nez v0, :cond_1df

    .line 478
    .line 479
    goto :goto_1e1

    .line 480
    :cond_1df
    const/4 v0, 0x0

    .line 481
    throw v0

    .line 482
    :cond_1e1
    :goto_1e1
    return-void

    .line 483
    :array_1e2
    .array-data 1
        0x1bt
        0x70t
        0x4t
        0x3t
        -0x7ft
        0x55t
        -0x2ft
        -0x6at
        0x1t
        0x76t
        0x1ft
        0x4t
    .end array-data

    .line 484
    .line 485
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
        0x75t
        0x1ft
        0x70t
        0x6at
        -0x19t
        0x3ct
        -0x4et
        -0x9t
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
        0x5bt
        -0x43t
        -0x2at
        -0x6at
        -0x36t
        -0x4t
        -0x35t
        0x45t
        0x61t
        -0x71t
        -0x3bt
        -0x73t
        -0x11t
        -0x1ft
        -0x37t
        0x52t
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_200
    .array-data 1
        0x15t
        -0x24t
        -0x60t
        -0x1t
        -0x67t
        -0x78t
        -0x56t
        0x37t
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_208
    .array-data 1
        -0x7et
        0x56t
        -0x3t
        0x3ft
        -0xbt
        -0x49t
        0x79t
        0x7ct
        -0x52t
        0x53t
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    nop

    .line 531
    :array_212
    .array-data 1
        -0x40t
        0x37t
        -0x62t
        0x54t
        -0x6et
        -0x3bt
        0x16t
        0x9t
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_21a
    .array-data 1
        0x3bt
        -0x7ct
        -0x49t
        -0x73t
        -0x59t
        0x45t
        0x7dt
        -0x6dt
        0x1t
        -0x4at
        -0x5ct
        -0x6at
        -0x7et
        0x58t
        0x7ft
        -0x7ct
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_226
    .array-data 1
        0x75t
        -0x1bt
        -0x3ft
        -0x1ct
        -0xct
        0x31t
        0x1ct
        -0x1ft
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_22e
    .array-data 1
        -0x26t
        -0x5ft
        0x3ft
        -0x56t
        0x2ft
        -0x26t
        0x1at
        -0x77t
        -0x2et
        -0x5ft
        0x2ft
        -0x43t
        0x2et
        -0x39t
        0x50t
        -0x3at
        -0x28t
        -0x45t
        0x32t
        -0x49t
        0x2et
        -0x63t
        0x2dt
        -0x1ct
        -0x17t
        -0x76t
        0x1et
        -0x6at
        0x1ft
        -0x4t
        0x30t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_242
    .array-data 1
        -0x45t
        -0x31t
        0x5bt
        -0x28t
        0x40t
        -0x4dt
        0x7et
        -0x59t
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_24a
    .array-data 1
        -0x4et
        -0x6ct
        0x4et
        0x3at
        -0x39t
        -0x56t
        -0x78t
        -0x44t
        -0x4ft
        -0x6at
        0x5ft
        0x2dt
        -0x24t
        -0x54t
        -0x7dt
        -0x1at
        -0x45t
        -0x2ct
        0x4et
        0x2dt
        -0x22t
        -0x56t
        -0x71t
        -0x9t
        -0x3t
        -0x65t
        0x49t
        0x3ct
        -0x3ft
        -0x54t
        -0x7et
        -0x44t
        -0x6et
        -0x47t
        0x66t
        0x17t
        -0x15t
        -0x74t
        -0x5et
        -0x24t
        -0x6at
        -0x47t
        0x7et
        0xdt
        -0x14t
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    nop

    .line 615
    :array_266
    .array-data 1
        -0x2dt
        -0x6t
        0x2at
        0x48t
        -0x58t
        -0x3dt
        -0x14t
        -0x6et
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_26e
    .array-data 1
        0x2t
        0x7ft
        0x58t
        -0x45t
        0x1at
        0x1bt
        -0x5dt
        0x5bt
        0xat
        0x7ft
        0x48t
        -0x54t
        0x1bt
        0x6t
        -0x17t
        0x14t
        0x0t
        0x65t
        0x55t
        -0x5at
        0x1bt
        0x5ct
        -0x6ct
        0x36t
        0x31t
        0x54t
        0x79t
        -0x79t
        0x2at
        0x3dt
        -0x7ft
        0x33t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_282
    .array-data 1
        0x63t
        0x11t
        0x3ct
        -0x37t
        0x75t
        0x72t
        -0x39t
        0x75t
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_28a
    .array-data 1
        -0x7ct
        -0x5t
        -0x5ct
        0x5ft
        -0x3at
        -0x73t
        -0x7ft
        0x52t
        -0x74t
        -0x5t
        -0x4ct
        0x48t
        -0x39t
        -0x70t
        -0x35t
        0x1dt
        -0x7at
        -0x1ft
        -0x57t
        0x42t
        -0x39t
        -0x36t
        -0x50t
        0x2ft
        -0x60t
        -0x39t
        -0x61t
        0x7dt
        -0x5t
        -0x5ft
        -0x4at
        0x39t
        -0x55t
        -0x3ft
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    nop

    .line 673
    :array_2a0
    .array-data 1
        -0x1bt
        -0x6bt
        -0x40t
        0x2dt
        -0x57t
        -0x1ct
        -0x1bt
        0x7ct
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_2a8
    .array-data 1
        -0x39t
        -0x46t
        0x41t
        0x35t
        -0x16t
        0x74t
        -0x1bt
        0x2et
        -0x31t
        -0x46t
        0x51t
        0x22t
        -0x15t
        0x69t
        -0x51t
        0x61t
        -0x3bt
        -0x60t
        0x4ct
        0x28t
        -0x15t
        0x33t
        -0x1et
        0x61t
        -0x2ct
        -0x75t
        0x56t
        0x3et
        -0xat
        0x69t
        -0x1ct
        0x6dt
        -0x7t
        -0x4dt
        0x40t
        0x34t
        -0xft
        0x68t
        -0xdt
        0x65t
        -0x7t
        -0x47t
        0x4at
        0x23t
        -0x20t
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    nop

    .line 709
    :array_2c4
    .array-data 1
        -0x5at
        -0x2ct
        0x25t
        0x47t
        -0x7bt
        0x1dt
        -0x7ft
        0x0t
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_2cc
    .array-data 1
        0x7bt
        0x5t
        0x5ft
        0x5at
        0x32t
        0x4ct
        -0x20t
        0x19t
        0x47t
        0x59t
        0x1ct
        0x5ct
        0x29t
        0x40t
        -0xft
        0xat
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_2d8
    .array-data 1
        0x22t
        0x2bt
        0x32t
        0x3bt
        0x5ct
        0x29t
        -0x6bt
        0x6ft
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_2e0
    .array-data 1
        -0x4et
        -0x14t
        -0x41t
        0x12t
        0x5at
        -0x28t
        0x1t
        -0x19t
        -0x72t
        -0x50t
        -0x4t
        0x5t
        0x5dt
        -0x32t
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    nop

    .line 749
    :array_2ec
    .array-data 1
        -0x15t
        -0x3et
        -0x2et
        0x73t
        0x34t
        -0x43t
        0x74t
        -0x6ft
    .end array-data
.end method

.method public final onDestroy()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/example/navistart/boot;->u:Z

    .line 6
    .line 7
    invoke-static {}, Lp0/j;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/example/navistart/boot;->o:Lb1/c;

    .line 11
    .line 12
    if-eqz v1, :cond_10

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    iget-object v1, p0, Lcom/example/navistart/boot;->p:Lcom/example/navistart/MyCarReceiver;

    .line 18
    .line 19
    if-eqz v1, :cond_17

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object v1, p0, Lcom/example/navistart/boot;->q:Le0/d0;

    .line 25
    .line 26
    if-eqz v1, :cond_1e

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-object v1, p0, Lcom/example/navistart/boot;->r:Le0/n3;

    .line 32
    .line 33
    if-eqz v1, :cond_25

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    new-instance v1, Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-class v3, Lcom/example/navistart/boot;

    .line 47
    .line 48
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    new-array v2, v2, [B

    .line 53
    .line 54
    const/16 v3, -0xa

    .line 55
    .line 56
    aput-byte v3, v2, v0

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    new-array v0, v0, [B

    .line 61
    .line 62
    fill-array-data v0, :array_56

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v2, -0x1

    .line 70
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v2, 0x1a

    .line 76
    .line 77
    if-lt v0, v2, :cond_52

    .line 78
    .line 79
    invoke-static {p0, v1}, Lc5/h;->w(Lcom/example/navistart/boot;Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_52
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :array_56
    .array-data 1
        -0x6et
        0x22t
        0x7ft
        0x13t
        -0x46t
        -0xat
        -0x17t
        0x77t
    .end array-data
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 16

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/16 p3, 0x16

    .line 6
    .line 7
    new-array p3, p3, [B

    .line 8
    .line 9
    fill-array-data p3, :array_1ee

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v0, v1, [B

    .line 15
    .line 16
    fill-array-data v0, :array_1fe

    .line 17
    .line 18
    .line 19
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p2, p3, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget-object p3, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p3}, Lcom/example/navistart/boot;->b(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget-object v3, p0, Lcom/example/navistart/boot;->c:Ljava/lang/Boolean;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz p3, :cond_2e

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_2d

    .line 44
    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    throw v4

    .line 47
    :cond_2e
    :goto_2e
    const/16 p3, 0xa

    .line 48
    .line 49
    :try_start_30
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-array v5, p3, [B

    .line 57
    .line 58
    fill-array-data v5, :array_206

    .line 59
    .line 60
    .line 61
    new-array v6, v1, [B

    .line 62
    .line 63
    fill-array-data v6, :array_210

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v0, v5}, Lcom/example/navistart/cores/ProBroProxy;->Ping(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_48} :catch_49

    .line 71
    .line 72
    .line 73
    goto :goto_4d

    .line 74
    :catch_49
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_4d
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v5, Le0/m;->e:[B

    .line 83
    .line 84
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 85
    .line 86
    new-instance v6, Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 89
    .line 90
    .line 91
    sget-object v5, Le0/x1;->q:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v6, v5}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v0}, Le0/d0;->d(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    if-nez p2, :cond_199

    .line 103
    .line 104
    invoke-static {}, Lp0/j;->b()V

    .line 105
    .line 106
    .line 107
    if-eqz p1, :cond_71

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move-object p1, v4

    .line 115
    :goto_72
    const/4 p2, 0x3

    .line 116
    if-eqz p1, :cond_118

    .line 117
    .line 118
    new-array v5, v0, [B

    .line 119
    .line 120
    const/16 v6, 0xc

    .line 121
    .line 122
    aput-byte v6, v5, v2

    .line 123
    .line 124
    new-array v6, v1, [B

    .line 125
    .line 126
    fill-array-data v6, :array_218

    .line 127
    .line 128
    .line 129
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const/4 v5, -0x1

    .line 138
    if-le p1, v5, :cond_118

    .line 139
    .line 140
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    new-array v6, p2, [B

    .line 145
    .line 146
    fill-array-data v6, :array_220

    .line 147
    .line 148
    .line 149
    new-array v7, v1, [B

    .line 150
    .line 151
    fill-array-data v7, :array_226

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const/16 v7, 0x14

    .line 159
    .line 160
    new-array v7, v7, [B

    .line 161
    .line 162
    fill-array-data v7, :array_22e

    .line 163
    .line 164
    .line 165
    new-array v8, v1, [B

    .line 166
    .line 167
    fill-array-data v8, :array_23c

    .line 168
    .line 169
    .line 170
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v5, v6, v7}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const/4 v7, 0x7

    .line 183
    new-array v7, v7, [B

    .line 184
    .line 185
    fill-array-data v7, :array_244

    .line 186
    .line 187
    .line 188
    new-array v8, v1, [B

    .line 189
    .line 190
    fill-array-data v8, :array_24c

    .line 191
    .line 192
    .line 193
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 202
    .line 203
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    array-length v7, v6

    .line 208
    if-le v7, v0, :cond_118

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-eqz v5, :cond_118

    .line 219
    .line 220
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .line 222
    const/16 v8, 0x1a

    .line 223
    .line 224
    if-lt v7, v8, :cond_f6

    .line 225
    .line 226
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    aget-object p1, v6, p1

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    invoke-static {v7, p1}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p0, v5, p1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    :cond_f6
    const/4 p1, 0x4

    .line 248
    new-array p1, p1, [B

    .line 249
    .line 250
    fill-array-data p1, :array_254

    .line 251
    .line 252
    .line 253
    new-array v5, v1, [B

    .line 254
    .line 255
    fill-array-data v5, :array_25a

    .line 256
    .line 257
    .line 258
    invoke-static {p1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const/16 v5, 0xe

    .line 263
    .line 264
    new-array v5, v5, [B

    .line 265
    .line 266
    fill-array-data v5, :array_262

    .line 267
    .line 268
    .line 269
    new-array v6, v1, [B

    .line 270
    .line 271
    fill-array-data v6, :array_26e

    .line 272
    .line 273
    .line 274
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    :cond_118
    iget-object p1, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {p1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Lcom/bumptech/glide/m;

    .line 287
    .line 288
    const/4 v5, 0x2

    .line 289
    invoke-direct {p1, v5, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iget-object v6, p0, Lcom/example/navistart/boot;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 293
    .line 294
    if-eqz v6, :cond_132

    .line 295
    .line 296
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-nez v6, :cond_132

    .line 301
    .line 302
    iget-object v6, p0, Lcom/example/navistart/boot;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 303
    .line 304
    invoke-interface {v6, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 305
    .line 306
    .line 307
    :cond_132
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 308
    .line 309
    iget-object v7, p0, Lcom/example/navistart/boot;->d:Le0/v;

    .line 310
    .line 311
    iget-object v8, v7, Le0/v;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 312
    .line 313
    const-wide/16 v9, 0x4e20

    .line 314
    .line 315
    invoke-interface {v8, p1, v9, v10, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    iput-object p1, p0, Lcom/example/navistart/boot;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/example/navistart/boot;->f()V

    .line 322
    .line 323
    .line 324
    new-instance p1, Le0/o3;

    .line 325
    .line 326
    invoke-direct {p1, p0, v1}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 330
    .line 331
    .line 332
    new-instance p1, Le0/o3;

    .line 333
    .line 334
    const/16 v1, 0x9

    .line 335
    .line 336
    invoke-direct {p1, p0, v1}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 340
    .line 341
    .line 342
    new-instance p1, Le0/o3;

    .line 343
    .line 344
    invoke-direct {p1, p0, p3}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 348
    .line 349
    .line 350
    new-instance p1, Le0/o3;

    .line 351
    .line 352
    invoke-direct {p1, p0, v2}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 356
    .line 357
    .line 358
    new-instance p1, Le0/o3;

    .line 359
    .line 360
    invoke-direct {p1, p0, v0}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 364
    .line 365
    .line 366
    new-instance p1, Le0/o3;

    .line 367
    .line 368
    invoke-direct {p1, p0, v5}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 372
    .line 373
    .line 374
    new-instance p1, Le0/o3;

    .line 375
    .line 376
    invoke-direct {p1, p0, p2}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 380
    .line 381
    .line 382
    new-instance p1, Le0/o3;

    .line 383
    .line 384
    const/4 p2, 0x4

    .line 385
    invoke-direct {p1, p0, p2}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 389
    .line 390
    .line 391
    new-instance p1, Le0/o3;

    .line 392
    .line 393
    const/4 p2, 0x5

    .line 394
    invoke-direct {p1, p0, p2}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 398
    .line 399
    .line 400
    new-instance p1, Le0/o3;

    .line 401
    .line 402
    const/4 p2, 0x6

    .line 403
    invoke-direct {p1, p0, p2}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, p1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 407
    .line 408
    .line 409
    goto :goto_1b4

    .line 410
    :cond_199
    iget-object p1, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 411
    .line 412
    sget-object p2, Lp0/j;->l:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    new-instance p2, Landroid/os/Handler;

    .line 419
    .line 420
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 421
    .line 422
    .line 423
    move-result-object p3

    .line 424
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 425
    .line 426
    .line 427
    new-instance p3, Landroidx/profileinstaller/c;

    .line 428
    .line 429
    const/16 v1, 0x9

    .line 430
    .line 431
    invoke-direct {p3, p1, v1}, Landroidx/profileinstaller/c;-><init>(Landroid/content/Context;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    .line 436
    .line 437
    :goto_1b4
    iget-object p1, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 438
    .line 439
    invoke-static {p1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 440
    .line 441
    .line 442
    iget-object p1, p0, Lcom/example/navistart/boot;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 443
    .line 444
    if-eqz p1, :cond_1c8

    .line 445
    .line 446
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-nez p1, :cond_1c8

    .line 451
    .line 452
    iget-object p1, p0, Lcom/example/navistart/boot;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 453
    .line 454
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 455
    .line 456
    .line 457
    :cond_1c8
    iget-object p1, p0, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 458
    .line 459
    invoke-static {p1}, Lcom/example/navistart/boot;->b(Landroid/content/Context;)Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    if-eqz p1, :cond_1d8

    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-nez p1, :cond_1d7

    .line 470
    .line 471
    goto :goto_1d8

    .line 472
    :cond_1d7
    throw v4

    .line 473
    :cond_1d8
    :goto_1d8
    new-instance v6, Le0/o3;

    .line 474
    .line 475
    const/4 p1, 0x7

    .line 476
    invoke-direct {v6, p0, p1}, Le0/o3;-><init>(Lcom/example/navistart/boot;I)V

    .line 477
    .line 478
    .line 479
    const-wide/32 v9, 0x186a0

    .line 480
    .line 481
    .line 482
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 483
    .line 484
    iget-object v5, p0, Lcom/example/navistart/boot;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 485
    .line 486
    const-wide/16 v7, 0xa

    .line 487
    .line 488
    invoke-virtual/range {v5 .. v11}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iput-object p1, p0, Lcom/example/navistart/boot;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 493
    .line 494
    return v0

    .line 495
    :array_1ee
    .array-data 1
        0x28t
        0x5et
        -0x2ct
        -0x41t
        0x22t
        0x5et
        0x4dt
        -0x22t
        0x2et
        0x72t
        -0x27t
        -0x5ct
        0x19t
        0x5at
        0x62t
        -0x35t
        0x33t
        0x4ct
        -0x2dt
        -0x5ft
        0x18t
        0x5bt
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    nop

    .line 511
    :array_1fe
    .array-data 1
        0x5dt
        0x2dt
        -0x4ft
        -0x33t
        0x7dt
        0x3ft
        0x3dt
        -0x52t
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_206
    .array-data 1
        0x2t
        -0x2at
        0x34t
        -0x13t
        0x57t
        0x69t
        0x7et
        0x0t
        0xat
        -0x24t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    nop

    .line 529
    :array_210
    .array-data 1
        0x63t
        -0x48t
        0x50t
        -0x61t
        0x38t
        0x0t
        0x1at
        0x5ft
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_218
    .array-data 1
        0x68t
        0x17t
        -0x45t
        0x7et
        -0x79t
        -0x32t
        -0x21t
        -0x67t
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_220
    .array-data 1
        0x69t
        -0x69t
        0x3ft
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_226
    .array-data 1
        0x19t
        -0x4t
        0x58t
        0x1ft
        -0x22t
        -0x53t
        -0x7et
        -0x11t
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_22e
    .array-data 1
        0x21t
        0x35t
        -0x44t
        0x1et
        0x45t
        -0x40t
        0x3t
        0x5bt
        0x2bt
        0x6et
        -0x15t
        0x6t
        0x4at
        -0x36t
        0x2t
        0x46t
        0x3dt
        0x21t
        -0x1ct
        0xet
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_23c
    .array-data 1
        0x53t
        0x40t
        -0x6et
        0x67t
        0x24t
        -0x52t
        0x67t
        0x3et
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_244
    .array-data 1
        -0x33t
        0xct
        0x19t
        0x6t
        0x53t
        0x54t
        -0x73t
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_24c
    .array-data 1
        -0x57t
        0x65t
        0x6at
        0x76t
        0x3ft
        0x35t
        -0xct
        -0x77t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_254
    .array-data 1
        0x3dt
        0xet
        -0x5ft
        0x40t
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_25a
    .array-data 1
        0x7ft
        0x41t
        -0x12t
        0x14t
        0x75t
        0xft
        -0x5dt
        -0x3dt
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_262
    .array-data 1
        -0x1bt
        0x2at
        -0x5ct
        -0x24t
        -0x37t
        -0x7ft
        0x41t
        0x25t
        -0x3et
        0x37t
        -0x4dt
        -0x39t
        -0x37t
        -0x28t
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    nop

    .line 623
    :array_26e
    .array-data 1
        -0x4at
        0x5et
        -0x3bt
        -0x52t
        -0x43t
        -0x5ft
        0x0t
        0x46t
    .end array-data
.end method

.method public native pusk(Ljava/lang/String;)Z
.end method
