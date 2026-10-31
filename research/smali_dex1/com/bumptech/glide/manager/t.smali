.class public final Lcom/bumptech/glide/manager/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lc0/i;
.implements Lo7/m2;


# static fields
.field public static volatile f:Lcom/bumptech/glide/manager/t;


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/bumptech/glide/manager/t;->b:I

    packed-switch p1, :pswitch_data_26

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    return-void

    .line 59
    :pswitch_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_26
    .packed-switch 0x6
        :pswitch_1b
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput p2, p0, Lcom/bumptech/glide/manager/t;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p2, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p2, Lcom/bumptech/glide/manager/o;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p1, v0}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lc0/h;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lc0/h;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/bumptech/glide/manager/p;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/bumptech/glide/manager/p;-><init>(Lcom/bumptech/glide/manager/t;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 33
    .line 34
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/s;-><init>(Lc0/h;Lcom/bumptech/glide/manager/p;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 48
    .line 49
    sget-object p1, Lh7/k;->o:Lh7/k;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_27
    .end packed-switch
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Lo4/b;)V
    .registers 4

    const/4 p3, 0x1

    iput p3, p0, Lcom/bumptech/glide/manager/t;->b:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/bumptech/glide/manager/t;->b:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo7/k1;Lo7/g1;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/manager/t;->b:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 63
    iput-object p2, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_59

    .line 2
    .line 3
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    goto :goto_59

    .line 14
    :cond_d
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v2, v1, [B

    .line 17
    .line 18
    fill-array-data v2, :array_5a

    .line 19
    .line 20
    .line 21
    new-array v3, v1, [B

    .line 22
    .line 23
    fill-array-data v3, :array_62

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_24

    .line 35
    .line 36
    goto :goto_59

    .line 37
    :cond_24
    const/4 v2, 0x4

    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_6a

    .line 41
    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_70

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3a

    .line 57
    .line 58
    goto :goto_59

    .line 59
    :cond_3a
    invoke-static {v0}, Lcom/bumptech/glide/manager/t;->f(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 64
    .line 65
    goto :goto_59

    .line 66
    :cond_41
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_59

    .line 70
    if-eqz v0, :cond_59

    .line 71
    .line 72
    :try_start_47
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_50

    .line 77
    :catch_4c
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_50
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_59

    .line 86
    .line 87
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :catch_59
    :cond_59
    :goto_59
    return-void

    .line 91
    :array_5a
    .array-data 1
        -0x2ct
        -0x5bt
        0x48t
        -0x7at
        -0x76t
        0x62t
        -0x65t
        -0x9t
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
        -0x4ft
        -0x38t
        0x3dt
        -0x16t
        -0x15t
        0x16t
        -0x2t
        -0x6dt
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_6a
    .array-data 1
        -0x1at
        -0x72t
        -0x1et
        0x6ft
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_70
    .array-data 1
        -0x6bt
        -0x15t
        -0x72t
        0x9t
        0x12t
        0x39t
        -0x1dt
        -0x75t
    .end array-data
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/manager/t;
    .registers 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/manager/t;->f:Lcom/bumptech/glide/manager/t;

    .line 2
    .line 3
    if-nez v0, :cond_1e

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/manager/t;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/bumptech/glide/manager/t;->f:Lcom/bumptech/glide/manager/t;

    .line 9
    .line 10
    if-nez v1, :cond_1a

    .line 11
    .line 12
    new-instance v1, Lcom/bumptech/glide/manager/t;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/manager/t;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/bumptech/glide/manager/t;->f:Lcom/bumptech/glide/manager/t;

    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 28
    goto :goto_1e

    .line 29
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    .line 30
    throw p0

    .line 31
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/bumptech/glide/manager/t;->f:Lcom/bumptech/glide/manager/t;

    .line 32
    .line 33
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_dc

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_e6

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_d9

    .line 24
    .line 25
    const/16 v0, 0xe

    .line 26
    .line 27
    new-array v2, v0, [B

    .line 28
    .line 29
    fill-array-data v2, :array_ee

    .line 30
    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    fill-array-data v3, :array_fa

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_d9

    .line 46
    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    fill-array-data v2, :array_102

    .line 52
    .line 53
    .line 54
    new-array v3, v1, [B

    .line 55
    .line 56
    fill-array-data v3, :array_10e

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_d9

    .line 68
    .line 69
    new-array v2, v1, [B

    .line 70
    .line 71
    fill-array-data v2, :array_116

    .line 72
    .line 73
    .line 74
    new-array v3, v1, [B

    .line 75
    .line 76
    fill-array-data v3, :array_11e

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_d9

    .line 88
    .line 89
    const/16 v2, 0xc

    .line 90
    .line 91
    new-array v3, v2, [B

    .line 92
    .line 93
    fill-array-data v3, :array_126

    .line 94
    .line 95
    .line 96
    new-array v4, v1, [B

    .line 97
    .line 98
    fill-array-data v4, :array_130

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_d9

    .line 110
    .line 111
    const/16 v3, 0xa

    .line 112
    .line 113
    new-array v3, v3, [B

    .line 114
    .line 115
    fill-array-data v3, :array_138

    .line 116
    .line 117
    .line 118
    new-array v4, v1, [B

    .line 119
    .line 120
    fill-array-data v4, :array_142

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_d9

    .line 132
    .line 133
    new-array v0, v0, [B

    .line 134
    .line 135
    fill-array-data v0, :array_14a

    .line 136
    .line 137
    .line 138
    new-array v3, v1, [B

    .line 139
    .line 140
    fill-array-data v3, :array_156

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_d9

    .line 152
    .line 153
    new-array v0, v2, [B

    .line 154
    .line 155
    fill-array-data v0, :array_15e

    .line 156
    .line 157
    .line 158
    new-array v2, v1, [B

    .line 159
    .line 160
    fill-array-data v2, :array_168

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_d9

    .line 172
    .line 173
    new-array v0, v1, [B

    .line 174
    .line 175
    fill-array-data v0, :array_170

    .line 176
    .line 177
    .line 178
    new-array v2, v1, [B

    .line 179
    .line 180
    fill-array-data v2, :array_178

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_d9

    .line 192
    .line 193
    const/16 v0, 0xf

    .line 194
    .line 195
    new-array v0, v0, [B

    .line 196
    .line 197
    fill-array-data v0, :array_180

    .line 198
    .line 199
    .line 200
    new-array v1, v1, [B

    .line 201
    .line 202
    fill-array-data v1, :array_18c

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_d7

    .line 214
    .line 215
    goto :goto_d9

    .line 216
    :cond_d7
    const/4 p0, 0x0

    .line 217
    return p0

    .line 218
    :cond_d9
    :goto_d9
    const/4 p0, 0x1

    .line 219
    return p0

    .line 220
    nop

    .line 221
    :array_dc
    .array-data 1
        -0x48t
        0x5ft
        0x4ct
        -0x74t
        0xat
        -0x6ct
        0x7bt
        -0x1at
        -0x48t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    nop

    .line 231
    :array_e6
    .array-data 1
        -0x69t
        0x2ct
        0x38t
        -0x1dt
        0x78t
        -0xbt
        0x1ct
        -0x7dt
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
        0x79t
        -0x3dt
        0x2ct
        0x28t
        0x53t
        -0x67t
        -0x7t
        0x6et
        0x3ft
        -0x31t
        0x1dt
        0x2et
        0xbt
        -0x25t
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    nop

    .line 251
    :array_fa
    .array-data 1
        0x56t
        -0x52t
        0x42t
        0x5ct
        0x7ct
        -0xct
        -0x64t
        0xat
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_102
    .array-data 1
        0x71t
        -0x15t
        0x7bt
        0x1dt
        -0x28t
        0x47t
        -0x22t
        -0x31t
        0x2at
        -0x11t
        0x78t
        0xct
        -0x28t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    nop

    .line 271
    :array_10e
    .array-data 1
        0x5et
        -0x7at
        0x15t
        0x69t
        -0x9t
        0x35t
        -0x55t
        -0x5ft
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_116
    .array-data 1
        0x7dt
        -0x21t
        -0x5t
        0x31t
        0x4ft
        0x27t
        0x52t
        -0x54t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_11e
    .array-data 1
        0x52t
        -0x4et
        -0x6bt
        0x45t
        0x60t
        0x52t
        0x21t
        -0x32t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_126
    .array-data 1
        -0x2dt
        -0x62t
        -0x77t
        -0x13t
        0x70t
        -0x10t
        -0x3ft
        -0x25t
        -0x2dt
        -0x68t
        -0x72t
        -0x20t
    .end array-data

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
    :array_130
    .array-data 1
        -0x4t
        -0x13t
        -0x3t
        -0x7et
        0x2t
        -0x6ft
        -0x5at
        -0x42t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        0x5ct
        -0x30t
        0x45t
        -0x3t
        0x57t
        -0x3bt
        0x13t
        -0x7dt
        0x0t
        -0x2at
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    nop

    .line 323
    :array_142
    .array-data 1
        0x73t
        -0x43t
        0x2bt
        -0x77t
        0x78t
        -0x50t
        0x77t
        -0x16t
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_14a
    .array-data 1
        0x4ct
        -0x47t
        0xct
        -0x45t
        0x38t
        0x4t
        -0x1dt
        -0x50t
        0x4ct
        -0x41t
        0x1ct
        -0x43t
        0x39t
        0xet
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    nop

    .line 343
    :array_156
    .array-data 1
        0x63t
        -0x36t
        0x78t
        -0x2ct
        0x4at
        0x65t
        -0x7ct
        -0x2bt
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_15e
    .array-data 1
        0x35t
        0x31t
        0x52t
        0x62t
        -0x1at
        -0x78t
        -0x43t
        -0x5t
        0x35t
        0x27t
        0x5et
        0x79t
    .end array-data

    .line 352
    .line 353
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
        0x1at
        0x42t
        0x26t
        0xdt
        -0x6ct
        -0x17t
        -0x26t
        -0x62t
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
        0x5ft
        0x4ct
        -0x59t
        -0x4at
        0x6at
        0x55t
        -0x2dt
        -0x37t
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_178
    .array-data 1
        0x70t
        0x21t
        -0x37t
        -0x3et
        0x45t
        0x30t
        -0x55t
        -0x43t
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_180
    .array-data 1
        0x2ft
        -0x2dt
        0x43t
        -0x19t
        -0x19t
        -0xet
        -0x51t
        -0x48t
        0x2ft
        -0x2dt
        0x53t
        -0x15t
        -0xct
        -0x1ft
        -0x54t
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_18c
    .array-data 1
        0x0t
        -0x60t
        0x37t
        -0x78t
        -0x6bt
        -0x6dt
        -0x38t
        -0x23t
    .end array-data
.end method

.method public static h(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    goto :goto_9

    .line 6
    :catch_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_32

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 22
    .line 23
    goto :goto_32

    .line 24
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_1d

    .line 29
    :catch_1c
    move-object p0, v1

    .line 30
    :goto_1d
    if-nez p0, :cond_20

    .line 31
    .line 32
    goto :goto_32

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroidx/constraintlayout/core/utils/a;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_32
    :goto_32
    return-object v1
.end method


# virtual methods
.method public b(Ly/c;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1a

    .line 22
    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1f

    .line 28
    .line 29
    invoke-interface {p1}, Ly/c;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return v0
.end method

.method public d(Ljava/io/File;)Landroid/net/Uri;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    fill-array-data v2, :array_2e

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    new-array v3, v3, [B

    .line 27
    .line 28
    fill-array-data v3, :array_38

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :array_2e
    .array-data 1
        -0x6bt
        -0x5at
        0x5dt
        0x27t
        0xbt
        -0x7et
        0x0t
        0x1et
        -0x37t
    .end array-data

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
        -0x45t
        -0x2at
        0x2ft
        0x48t
        0x7dt
        -0x15t
        0x64t
        0x7bt
    .end array-data
.end method

.method public e()Ljava/util/ArrayList;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_b
    iget-object v3, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lh7/k;

    .line 15
    .line 16
    if-eqz v3, :cond_28

    .line 17
    .line 18
    invoke-virtual {v3}, Lh7/k;->e()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    move v5, v2

    .line 27
    :goto_1a
    if-ge v5, v4, :cond_28

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    check-cast v6, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {v0, v1, v6}, Lcom/bumptech/glide/manager/t;->a(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    goto :goto_1a

    .line 41
    :catch_28
    :cond_28
    const/16 v3, 0x9

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    :try_start_2c
    iget-object v5, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Landroid/content/Context;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    array-length v6, v5

    .line 55
    move v7, v2

    .line 56
    :goto_37
    if-ge v7, v6, :cond_7a

    .line 57
    .line 58
    aget-object v8, v5, v7

    .line 59
    .line 60
    if-nez v8, :cond_3e

    .line 61
    .line 62
    goto :goto_77

    .line 63
    :cond_3e
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-array v9, v4, [B

    .line 68
    .line 69
    fill-array-data v9, :array_a0

    .line 70
    .line 71
    .line 72
    new-array v10, v4, [B

    .line 73
    .line 74
    fill-array-data v10, :array_a8

    .line 75
    .line 76
    .line 77
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    new-array v10, v3, [B

    .line 86
    .line 87
    fill-array-data v10, :array_b0

    .line 88
    .line 89
    .line 90
    new-array v11, v4, [B

    .line 91
    .line 92
    fill-array-data v11, :array_ba

    .line 93
    .line 94
    .line 95
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_77

    .line 104
    .line 105
    if-gtz v9, :cond_6b

    .line 106
    .line 107
    goto :goto_77

    .line 108
    :cond_6b
    new-instance v10, Ljava/io/File;

    .line 109
    .line 110
    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1, v10}, Lcom/bumptech/glide/manager/t;->a(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_77} :catch_7a

    .line 118
    .line 119
    .line 120
    :cond_77
    :goto_77
    add-int/lit8 v7, v7, 0x1

    .line 121
    .line 122
    goto :goto_37

    .line 123
    :catch_7a
    :cond_7a
    :try_start_7a
    new-instance v5, Ljava/io/File;

    .line 124
    .line 125
    new-array v3, v3, [B

    .line 126
    .line 127
    fill-array-data v3, :array_c2

    .line 128
    .line 129
    .line 130
    new-array v4, v4, [B

    .line 131
    .line 132
    fill-array-data v4, :array_cc

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_9e

    .line 147
    .line 148
    array-length v4, v3

    .line 149
    :goto_94
    if-ge v2, v4, :cond_9e

    .line 150
    .line 151
    aget-object v5, v3, v2

    .line 152
    .line 153
    invoke-static {v0, v1, v5}, Lcom/bumptech/glide/manager/t;->a(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9b} :catch_9e

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_94

    .line 159
    :catch_9e
    :cond_9e
    return-object v0

    .line 160
    nop

    .line 161
    :array_a0
    .array-data 1
        0x67t
        0x70t
        0x69t
        -0x52t
        -0x34t
        0x79t
        -0x70t
        -0x3dt
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_a8
    .array-data 1
        0x48t
        0x31t
        0x7t
        -0x36t
        -0x42t
        0x16t
        -0x7t
        -0x59t
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_b0
    .array-data 1
        -0x5at
        -0x5at
        0x58t
        -0x61t
        0x15t
        0x9t
        0x6ft
        -0x7ct
        -0x5at
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    nop

    .line 187
    :array_ba
    .array-data 1
        -0x77t
        -0x2bt
        0x2ct
        -0x10t
        0x67t
        0x68t
        0x8t
        -0x1ft
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_c2
    .array-data 1
        0x4dt
        -0x69t
        -0x79t
        0x71t
        -0x7ct
        0xbt
        0x42t
        0x61t
        0x4dt
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    nop

    .line 205
    :array_cc
    .array-data 1
        0x62t
        -0x1ct
        -0xdt
        0x1et
        -0xat
        0x6at
        0x25t
        0x4t
    .end array-data
.end method

.method public g()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_4a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_4a

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/bumptech/glide/manager/s;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lc0/h;

    .line 23
    .line 24
    invoke-virtual {v1}, Lc0/h;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_27

    .line 37
    .line 38
    move v2, v4

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v2, v3

    .line 41
    :goto_28
    iput-boolean v2, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 42
    .line 43
    :try_start_2a
    invoke-virtual {v1}, Lc0/h;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/bumptech/glide/manager/r;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_37} :catch_39

    .line 54
    .line 55
    .line 56
    move v3, v4

    .line 57
    goto :goto_48

    .line 58
    :catch_39
    move-exception v0

    .line 59
    const/4 v1, 0x5

    .line 60
    const-string v2, "ConnectivityMonitor"

    .line 61
    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_48

    .line 67
    .line 68
    const-string v1, "Failed to register callback"

    .line 69
    .line 70
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_48
    :goto_48
    iput-boolean v3, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_26

    .line 4
    .line 5
    const-string v0, "Glide registry"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_d
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/bumptech/glide/b;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->f(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/j;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1f

    .line 26
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 27
    .line 28
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 34
    .line 35
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_26
    const-string v0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    .line 40
    .line 41
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method public i(Ljava/util/concurrent/ScheduledFuture;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_c

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 9
    .line 10
    goto :goto_c

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    :goto_c
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_a

    .line 16
    throw p1
.end method

.method public j(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/k1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lo7/g1;

    .line 8
    .line 9
    iget-object v2, v0, Lo7/k1;->k:Ln7/k1;

    .line 10
    .line 11
    new-instance v3, Le3/g;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v3, v0, v1, p1, v4}, Le3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public k(Ln7/f1;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/k1;

    .line 4
    .line 5
    iget-object v1, v0, Lo7/k1;->i:Ln7/e;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lo7/g1;

    .line 10
    .line 11
    invoke-virtual {v2}, Lo7/u0;->c()Ln7/a0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Lo7/k1;->h(Ln7/f1;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x2

    .line 24
    const-string v4, "{0} SHUTDOWN with {1}"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v4, v2}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 31
    .line 32
    iget-object v0, v0, Lo7/k1;->k:Ln7/k1;

    .line 33
    .line 34
    new-instance v1, Lo7/e0;

    .line 35
    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    invoke-direct {v1, v2, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public l()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 2
    .line 3
    const-string v1, "transportShutdown() must be called before transportTerminated()."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo7/k1;

    .line 11
    .line 12
    iget-object v1, v0, Lo7/k1;->i:Ln7/e;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lo7/g1;

    .line 17
    .line 18
    invoke-virtual {v2}, Lo7/u0;->c()Ln7/a0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x2

    .line 27
    const-string v5, "{0} Terminated"

    .line 28
    .line 29
    invoke-virtual {v1, v4, v5, v3}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lo7/k1;->g:Ln7/x;

    .line 33
    .line 34
    iget-object v1, v1, Ln7/x;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v2}, Lo7/u0;->c()Ln7/a0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-wide v3, v3, Ln7/a0;->c:J

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ln7/z;

    .line 51
    .line 52
    iget-object v1, v0, Lo7/k1;->k:Ln7/k1;

    .line 53
    .line 54
    new-instance v3, Le3/g;

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v3, v0, v2, v5, v4}, Le3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lo7/k1;->j:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_55

    .line 75
    .line 76
    new-instance v0, Lo7/i1;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-direct {v0, p0, v2}, Lo7/i1;-><init>(Lcom/bumptech/glide/manager/t;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5f

    .line 91
    .line 92
    invoke-static {}, Ln0/b;->a()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    invoke-virtual {v2}, Lo7/u0;->getAttributes()Ln7/b;

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    throw v0
.end method

.method public m(Lz2/f;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    if-nez v1, :cond_13

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_11

    .line 30
    throw p1
.end method

.method public n(Lo7/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    if-eqz v1, :cond_31

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    goto :goto_31

    .line 15
    :cond_e
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 17
    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2f

    .line 19
    :goto_12
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lz2/f;

    .line 31
    .line 32
    if-nez v0, :cond_28

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_26

    .line 42
    invoke-interface {v0, p1}, Lz2/f;->a(Lo7/a;)V

    .line 43
    .line 44
    .line 45
    goto :goto_12

    .line 46
    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_26

    .line 47
    throw p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2f

    .line 53
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/t;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3a

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "{numRequests="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", isPaused="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "}"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method
