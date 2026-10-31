.class public final Lp0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/String;

.field public static final e:Landroid/os/Handler;

.field public static f:Landroidx/profileinstaller/c;

.field public static g:Landroidx/transition/a;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Landroid/net/Uri;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;


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
    sput-object v0, Lp0/b;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x1a

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
    sput-object v0, Lp0/b;->h:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v0, 0x2e

    .line 40
    .line 41
    new-array v0, v0, [B

    .line 42
    .line 43
    fill-array-data v0, :array_4

    .line 44
    .line 45
    .line 46
    new-array v2, v1, [B

    .line 47
    .line 48
    fill-array-data v2, :array_5

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lp0/b;->i:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v0, 0x2f

    .line 58
    .line 59
    new-array v0, v0, [B

    .line 60
    .line 61
    fill-array-data v0, :array_6

    .line 62
    .line 63
    .line 64
    new-array v2, v1, [B

    .line 65
    .line 66
    fill-array-data v2, :array_7

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lp0/b;->j:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/Object;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lp0/b;->c:Ljava/lang/Object;

    .line 81
    .line 82
    new-instance v0, Landroid/os/Handler;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lp0/b;->e:Landroid/os/Handler;

    .line 92
    .line 93
    const/16 v0, 0x32

    .line 94
    .line 95
    new-array v0, v0, [B

    .line 96
    .line 97
    fill-array-data v0, :array_8

    .line 98
    .line 99
    .line 100
    new-array v1, v1, [B

    .line 101
    .line 102
    fill-array-data v1, :array_9

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lp0/b;->k:Landroid/net/Uri;

    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 1
        -0x13t
        0x11t
        -0xbt
        -0x44t
        0x77t
        -0x11t
        -0x47t
        -0x28t
        -0x22t
        0x19t
        -0x1dt
        -0x43t
        0x7at
        -0x28t
        -0x52t
        -0x31t
        -0xet
        0x15t
        -0xct
    .end array-data

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
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 1
        -0x7ft
        0x70t
        -0x80t
        -0x2et
        0x14t
        -0x79t
        -0x24t
        -0x56t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 1
        -0x7t
        0x7dt
        -0x46t
        0xdt
        0x39t
        0x36t
        0x35t
        -0x31t
        -0x36t
        0x6ft
        -0x59t
        0xct
        0x28t
        0x2at
        0x33t
        -0x38t
        -0x1ft
        0x43t
        -0x56t
        0xdt
        0x3bt
        0x3ct
        0x3ct
        -0x28t
        -0xft
        0x43t
    .end array-data

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
    :array_3
    .array-data 1
        -0x6bt
        0x1ct
        -0x31t
        0x63t
        0x5at
        0x5et
        0x50t
        -0x43t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_4
    .array-data 1
        -0x1bt
        0x23t
        -0x7ct
        -0x4et
        -0x41t
        0x2at
        0x53t
        -0x37t
        -0x17t
        0x25t
        -0x73t
        -0x4et
        -0x4et
        0x25t
        0x42t
        -0x2bt
        -0x1bt
        0x24t
        -0x74t
        -0x12t
        -0x13t
        0x6at
        0x47t
        -0x22t
        -0xct
        0x21t
        -0x80t
        -0x11t
        -0x53t
        0x2dt
        0x58t
        -0x2bt
        -0x58t
        0x1et
        -0x54t
        -0x23t
        -0x66t
        0x1bt
        0x64t
        -0x2t
        -0x2et
        0x18t
        -0x60t
        -0x2et
        -0x67t
        0x17t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    nop

    .line 193
    :array_5
    .array-data 1
        -0x7at
        0x4ct
        -0x17t
        -0x64t
        -0x22t
        0x44t
        0x37t
        -0x45t
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_6
    .array-data 1
        -0x22t
        -0x1at
        0x16t
        0x71t
        -0x25t
        -0x57t
        0x7ct
        0x55t
        -0x2et
        -0x20t
        0x1ft
        0x71t
        -0x2at
        -0x5at
        0x6dt
        0x49t
        -0x22t
        -0x1ft
        0x1et
        0x2dt
        -0x77t
        -0x17t
        0x68t
        0x42t
        -0x31t
        -0x1ct
        0x12t
        0x2ct
        -0x37t
        -0x52t
        0x77t
        0x49t
        -0x6dt
        -0x22t
        0x29t
        0x16t
        -0x12t
        -0x7et
        0x47t
        0x74t
        -0x8t
        -0x23t
        0x2ft
        0x16t
        -0xct
        -0x80t
        0x4bt
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_7
    .array-data 1
        -0x43t
        -0x77t
        0x7bt
        0x5ft
        -0x46t
        -0x39t
        0x18t
        0x27t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_8
    .array-data 1
        0x8t
        -0x75t
        0x51t
        0x38t
        -0x39t
        0x7at
        0x45t
        0x3ft
        0x44t
        -0x35t
        0x5ct
        0x23t
        -0x31t
        0x3at
        0x50t
        0x6bt
        0xft
        -0x6at
        0x50t
        0x25t
        -0x3at
        0x3at
        0x5dt
        0x64t
        0x1et
        -0x76t
        0x5ct
        0x24t
        -0x39t
        0x66t
        0x2t
        0x2bt
        0x18t
        -0x7ft
        0x4bt
        0x38t
        -0x35t
        0x7at
        0x56t
        0x76t
        0x44t
        -0x7et
        0x5et
        0x3at
        -0x33t
        0x66t
        0x58t
        0x71t
        0xet
        -0x69t
    .end array-data

    .line 238
    .line 239
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
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    nop

    .line 267
    :array_9
    .array-data 1
        0x6bt
        -0x1ct
        0x3ft
        0x4ct
        -0x5et
        0x14t
        0x31t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lp0/b;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lp0/a;

    .line 22
    .line 23
    const/4 v9, 0x4

    .line 24
    new-array v4, v9, [B

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    new-array v5, v10, [B

    .line 32
    .line 33
    fill-array-data v5, :array_1

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v11, 0x15

    .line 41
    .line 42
    new-array v5, v11, [B

    .line 43
    .line 44
    fill-array-data v5, :array_2

    .line 45
    .line 46
    .line 47
    new-array v6, v10, [B

    .line 48
    .line 49
    fill-array-data v6, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v1, v5}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v7, 0x1

    .line 61
    const/4 v8, 0x1

    .line 62
    const v6, 0x7f1301e8

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v3 .. v8}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v12, Lp0/a;

    .line 72
    .line 73
    new-array v3, v9, [B

    .line 74
    .line 75
    fill-array-data v3, :array_4

    .line 76
    .line 77
    .line 78
    new-array v4, v10, [B

    .line 79
    .line 80
    fill-array-data v4, :array_5

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    new-array v3, v11, [B

    .line 88
    .line 89
    fill-array-data v3, :array_6

    .line 90
    .line 91
    .line 92
    new-array v4, v10, [B

    .line 93
    .line 94
    fill-array-data v4, :array_7

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v1, v3}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    const/16 v16, 0x1

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    const v15, 0x7f1301ec

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v12 .. v17}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v3, Lp0/a;

    .line 119
    .line 120
    const/4 v4, 0x6

    .line 121
    new-array v4, v4, [B

    .line 122
    .line 123
    fill-array-data v4, :array_8

    .line 124
    .line 125
    .line 126
    new-array v5, v10, [B

    .line 127
    .line 128
    fill-array-data v5, :array_9

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const/16 v5, 0x17

    .line 136
    .line 137
    new-array v5, v5, [B

    .line 138
    .line 139
    fill-array-data v5, :array_a

    .line 140
    .line 141
    .line 142
    new-array v6, v10, [B

    .line 143
    .line 144
    fill-array-data v6, :array_b

    .line 145
    .line 146
    .line 147
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v1, v5}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const/4 v8, 0x0

    .line 156
    const v6, 0x7f1301eb

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v3 .. v8}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v12, Lp0/a;

    .line 166
    .line 167
    new-array v3, v9, [B

    .line 168
    .line 169
    fill-array-data v3, :array_c

    .line 170
    .line 171
    .line 172
    new-array v4, v10, [B

    .line 173
    .line 174
    fill-array-data v4, :array_d

    .line 175
    .line 176
    .line 177
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    new-array v3, v11, [B

    .line 182
    .line 183
    fill-array-data v3, :array_e

    .line 184
    .line 185
    .line 186
    new-array v4, v10, [B

    .line 187
    .line 188
    fill-array-data v4, :array_f

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v1, v3}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    const/16 v16, 0x0

    .line 200
    .line 201
    const v15, 0x7f1301e7

    .line 202
    .line 203
    .line 204
    invoke-direct/range {v12 .. v17}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    new-instance v3, Lp0/a;

    .line 211
    .line 212
    const/4 v4, 0x5

    .line 213
    new-array v4, v4, [B

    .line 214
    .line 215
    fill-array-data v4, :array_10

    .line 216
    .line 217
    .line 218
    new-array v5, v10, [B

    .line 219
    .line 220
    fill-array-data v5, :array_11

    .line 221
    .line 222
    .line 223
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    const/16 v5, 0x16

    .line 228
    .line 229
    new-array v5, v5, [B

    .line 230
    .line 231
    fill-array-data v5, :array_12

    .line 232
    .line 233
    .line 234
    new-array v6, v10, [B

    .line 235
    .line 236
    fill-array-data v6, :array_13

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-static {v1, v5}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    const/4 v7, 0x0

    .line 248
    const v6, 0x7f1301ea

    .line 249
    .line 250
    .line 251
    invoke-direct/range {v3 .. v8}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v4, Lp0/a;

    .line 258
    .line 259
    const/4 v3, 0x5

    .line 260
    new-array v3, v3, [B

    .line 261
    .line 262
    fill-array-data v3, :array_14

    .line 263
    .line 264
    .line 265
    new-array v5, v10, [B

    .line 266
    .line 267
    fill-array-data v5, :array_15

    .line 268
    .line 269
    .line 270
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const/16 v3, 0x16

    .line 275
    .line 276
    new-array v3, v3, [B

    .line 277
    .line 278
    fill-array-data v3, :array_16

    .line 279
    .line 280
    .line 281
    new-array v6, v10, [B

    .line 282
    .line 283
    fill-array-data v6, :array_17

    .line 284
    .line 285
    .line 286
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-static {v1, v3}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    const/4 v9, 0x0

    .line 295
    const v7, 0x7f13046b

    .line 296
    .line 297
    .line 298
    invoke-direct/range {v4 .. v9}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    new-instance v11, Lp0/a;

    .line 305
    .line 306
    const/4 v3, 0x5

    .line 307
    new-array v3, v3, [B

    .line 308
    .line 309
    fill-array-data v3, :array_18

    .line 310
    .line 311
    .line 312
    new-array v4, v10, [B

    .line 313
    .line 314
    fill-array-data v4, :array_19

    .line 315
    .line 316
    .line 317
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    const/16 v3, 0x16

    .line 322
    .line 323
    new-array v3, v3, [B

    .line 324
    .line 325
    fill-array-data v3, :array_1a

    .line 326
    .line 327
    .line 328
    new-array v4, v10, [B

    .line 329
    .line 330
    fill-array-data v4, :array_1b

    .line 331
    .line 332
    .line 333
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-static {v1, v3}, Lp0/b;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    const/4 v15, 0x0

    .line 342
    const v14, 0x7f1301e9

    .line 343
    .line 344
    .line 345
    invoke-direct/range {v11 .. v16}, Lp0/a;-><init>(Ljava/lang/String;Landroid/content/ComponentName;IZZ)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iput-object v1, v0, Lp0/b;->b:Ljava/util/List;

    .line 356
    .line 357
    return-void

    .line 358
    nop

    .line 359
    :array_0
    .array-data 1
        -0x74t
        -0x12t
        -0x59t
        0x75t
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_1
    .array-data 1
        -0x1ft
        -0x71t
        -0x32t
        0x1bt
        -0x47t
        0x3ft
        -0x1ct
        0x5ft
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_2
    .array-data 1
        -0x3at
        -0x64t
        0x6t
        -0x2bt
        -0x6et
        0x55t
        0x51t
        0x71t
        -0x66t
        -0x63t
        0x6t
        -0x37t
        -0x6et
        0x77t
        0x5at
        0x60t
        -0x7ft
        -0x5at
        0xet
        -0x2ct
        -0x7bt
    .end array-data

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
    nop

    .line 389
    :array_3
    .array-data 1
        -0x18t
        -0x30t
        0x67t
        -0x60t
        -0x4t
        0x36t
        0x39t
        0x14t
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_4
    .array-data 1
        0x51t
        0x27t
        0x37t
        -0x18t
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_5
    .array-data 1
        0x26t
        0x4et
        0x51t
        -0x7ft
        -0x4bt
        -0x4bt
        -0x6dt
        -0x50t
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_6
    .array-data 1
        0x5dt
        -0x3t
        0x65t
        0x48t
        -0x7et
        -0x5bt
        0x72t
        -0x77t
        0x1t
        -0x1at
        0x6dt
        0x5bt
        -0x7bt
        -0x79t
        0x79t
        -0x68t
        0x1at
        -0x39t
        0x6dt
        0x49t
        -0x6bt
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    nop

    .line 427
    :array_7
    .array-data 1
        0x73t
        -0x4ft
        0x4t
        0x3dt
        -0x14t
        -0x3at
        0x1at
        -0x14t
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_8
    .array-data 1
        0xdt
        -0x69t
        0x5et
        0x7dt
        -0x74t
        0x3ct
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    nop

    .line 443
    :array_9
    .array-data 1
        0x78t
        -0x19t
        0x3at
        0x1ct
        -0x8t
        0x59t
        0x15t
        0x3dt
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_a
    .array-data 1
        0x61t
        -0x5ct
        0x79t
        -0xbt
        0x53t
        -0x32t
        0x0t
        0x7dt
        0x3dt
        -0x43t
        0x68t
        -0x1ct
        0x5ct
        -0x27t
        0xdt
        0x59t
        0x2ct
        -0x64t
        0x71t
        -0xat
        0x54t
        -0x27t
        0x11t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_b
    .array-data 1
        0x4ft
        -0x18t
        0x18t
        -0x80t
        0x3dt
        -0x53t
        0x68t
        0x18t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_c
    .array-data 1
        -0x1bt
        0x1bt
        0x41t
        0x4bt
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_d
    .array-data 1
        -0x7dt
        0x72t
        0x2dt
        0x2et
        0x3at
        -0x75t
        0x24t
        -0x16t
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_e
    .array-data 1
        -0x4ct
        0x40t
        0x71t
        0x14t
        0x6dt
        0x77t
        -0x6dt
        0x69t
        -0x18t
        0x4at
        0x79t
        0xdt
        0x66t
        0x55t
        -0x68t
        0x78t
        -0xdt
        0x7at
        0x79t
        0x15t
        0x7at
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    nop

    .line 505
    :array_f
    .array-data 1
        -0x66t
        0xct
        0x10t
        0x61t
        0x3t
        0x14t
        -0x5t
        0xct
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_10
    .array-data 1
        0x5ct
        0x6dt
        -0x15t
        -0x28t
        0x46t
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    nop

    .line 521
    :array_11
    .array-data 1
        0x2ft
        0x19t
        -0x7ct
        -0x56t
        0x23t
        0xat
        0x32t
        0x72t
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_12
    .array-data 1
        0x23t
        -0x7t
        0x72t
        -0x26t
        -0x7et
        0x1bt
        -0x3bt
        -0x53t
        0x7ft
        -0x1at
        0x67t
        -0x40t
        -0x62t
        0x1dt
        -0x14t
        -0x55t
        0x79t
        -0x24t
        0x65t
        -0x3at
        -0x68t
        0x1t
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    nop

    .line 545
    :array_13
    .array-data 1
        0xdt
        -0x4bt
        0x13t
        -0x51t
        -0x14t
        0x78t
        -0x53t
        -0x38t
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :array_14
    .array-data 1
        -0x7ft
        -0x1bt
        -0x4ft
        -0x6bt
        -0x30t
    .end array-data

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    nop

    .line 561
    :array_15
    .array-data 1
        -0x9t
        -0x74t
        -0x2bt
        -0x10t
        -0x41t
        0x7ft
        -0x7ft
        -0x67t
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_16
    .array-data 1
        -0x37t
        0x78t
        -0x10t
        -0x60t
        -0x3ct
        0x48t
        -0x31t
        -0x2bt
        -0x6bt
        0x62t
        -0x8t
        -0x4ft
        -0x31t
        0x44t
        -0x1at
        -0x2dt
        -0x6dt
        0x5dt
        -0x19t
        -0x44t
        -0x22t
        0x52t
    .end array-data

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
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    nop

    .line 585
    :array_17
    .array-data 1
        -0x19t
        0x34t
        -0x6ft
        -0x2bt
        -0x56t
        0x2bt
        -0x59t
        -0x50t
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_18
    .array-data 1
        -0x2at
        0x15t
        0x1et
        0x6et
        -0x69t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    nop

    .line 601
    :array_19
    .array-data 1
        -0x5ct
        0x74t
        0x7at
        0xft
        -0x1bt
        -0x2ft
        0xat
        -0x7dt
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_1a
    .array-data 1
        -0x1ft
        0x21t
        0x30t
        -0x12t
        0x4at
        -0x4ft
        0x40t
        -0x58t
        -0x43t
        0x3ft
        0x30t
        -0x1t
        0x45t
        -0x60t
        0x69t
        -0x52t
        -0x45t
        0x4t
        0x27t
        -0xet
        0x50t
        -0x55t
    .end array-data

    .line 610
    .line 611
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
    .line 623
    .line 624
    nop

    .line 625
    :array_1b
    .array-data 1
        -0x31t
        0x6dt
        0x51t
        -0x65t
        0x24t
        -0x2et
        0x28t
        -0x33t
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lai/onnxruntime/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lp0/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [B

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
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v5, 0x7

    .line 32
    new-array v5, v5, [B

    .line 33
    .line 34
    fill-array-data v5, :array_2

    .line 35
    .line 36
    .line 37
    new-array v6, v3, [B

    .line 38
    .line 39
    fill-array-data v6, :array_3

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v5, 0x1

    .line 55
    move v6, v5

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    :try_start_0
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_2

    .line 87
    .line 88
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    move v7, v5

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 v7, 0x2

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v10, v7, :cond_0

    .line 106
    .line 107
    invoke-virtual {v9, v8, v7, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v6

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const/16 v7, 0x1a

    .line 116
    .line 117
    new-array v7, v7, [B

    .line 118
    .line 119
    fill-array-data v7, :array_4

    .line 120
    .line 121
    .line 122
    new-array v8, v3, [B

    .line 123
    .line 124
    fill-array-data v8, :array_5

    .line 125
    .line 126
    .line 127
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_2
    if-nez p1, :cond_3

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :cond_3
    move v6, v1

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    if-eqz v6, :cond_5

    .line 148
    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    const/16 p1, 0x1b

    .line 164
    .line 165
    new-array p1, p1, [B

    .line 166
    .line 167
    fill-array-data p1, :array_6

    .line 168
    .line 169
    .line 170
    new-array v0, v3, [B

    .line 171
    .line 172
    fill-array-data v0, :array_7

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    :cond_5
    sget-object v0, Lp0/b;->f:Landroidx/profileinstaller/c;

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    sget-object v2, Lp0/b;->e:Landroid/os/Handler;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    const/4 v0, 0x0

    .line 189
    sput-object v0, Lp0/b;->f:Landroidx/profileinstaller/c;

    .line 190
    .line 191
    const/4 v2, 0x5

    .line 192
    new-array v2, v2, [B

    .line 193
    .line 194
    fill-array-data v2, :array_8

    .line 195
    .line 196
    .line 197
    new-array v3, v3, [B

    .line 198
    .line 199
    fill-array-data v3, :array_9

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Landroid/app/AlarmManager;

    .line 211
    .line 212
    if-eqz v2, :cond_7

    .line 213
    .line 214
    new-instance v3, Landroid/content/Intent;

    .line 215
    .line 216
    const-class v4, Lcom/example/navistart/HideManager/LauncherShortcutRestoreReceiver;

    .line 217
    .line 218
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    const/high16 v4, 0xc000000

    .line 222
    .line 223
    invoke-static {p0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    .line 229
    .line 230
    :cond_7
    sget-object p0, Lp0/b;->g:Landroidx/transition/a;

    .line 231
    .line 232
    sput-object v0, Lp0/b;->g:Landroidx/transition/a;

    .line 233
    .line 234
    if-eqz p0, :cond_9

    .line 235
    .line 236
    if-nez p1, :cond_8

    .line 237
    .line 238
    new-instance p1, Lm0/b3;

    .line 239
    .line 240
    invoke-direct {p1, v1, v0}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    invoke-static {p1}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/transition/a;->c(Lm0/b3;)V

    .line 249
    .line 250
    .line 251
    :cond_9
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 1
        -0x4dt
        -0x34t
        -0x45t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_1
    .array-data 1
        -0x2et
        -0x60t
        -0x29t
        0x3et
        -0x15t
        0x62t
        0x1bt
        0xet
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_2
    .array-data 1
        -0x32t
        0x12t
        -0x78t
        -0xdt
        0x8t
        -0x5ct
        -0x73t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_3
    .array-data 1
        -0x55t
        0x7ct
        -0x17t
        -0x6ft
        0x64t
        -0x3ft
        -0x17t
        -0x67t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_4
    .array-data 1
        -0x20t
        -0x23t
        0x33t
        0x4t
        0x2ct
        -0x22t
        0x4et
        -0x64t
        -0x5t
        -0x2at
        0x26t
        0xat
        0x36t
        -0x2et
        0x58t
        -0x3bt
        -0x57t
        -0x30t
        0x2at
        0x8t
        0x30t
        -0x28t
        0x44t
        -0x27t
        -0x19t
        -0x39t
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    nop

    .line 301
    :array_5
    .array-data 1
        -0x77t
        -0x4dt
        0x45t
        0x65t
        0x40t
        -0x49t
        0x2at
        -0x44t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_6
    .array-data 1
        0x53t
        -0x63t
        -0x3at
        0x4ft
        -0x7at
        0x65t
        -0x2et
        -0x4bt
        0x5ct
        -0x67t
        -0x37t
        0x53t
        -0x37t
        0x63t
        -0x69t
        -0x4bt
        0x5ft
        -0x76t
        -0x33t
        0x53t
        -0x70t
        0x31t
        -0x7ft
        -0x5et
        0x51t
        -0x78t
        -0x33t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_7
    .array-data 1
        0x30t
        -0x4t
        -0x58t
        0x21t
        -0x17t
        0x11t
        -0xet
        -0x2at
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_8
    .array-data 1
        0x6at
        -0x71t
        0x43t
        0x24t
        0x23t
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    nop

    .line 343
    :array_9
    .array-data 1
        0xbt
        -0x1dt
        0x22t
        0x56t
        0x4et
        -0x66t
        0x5bt
        -0x44t
    .end array-data
.end method

.method public static e(Lp0/a;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp0/a;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lp0/b;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lp0/a;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean p0, p0, Lp0/a;->d:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lp0/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x7

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v2, v2, [B

    .line 17
    .line 18
    fill-array-data v2, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 1
        0x2at
        -0x77t
        0x7ft
        0x3et
        0x31t
        -0x47t
        0x68t
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 1
        0x5at
        -0x14t
        0x11t
        0x5at
        0x58t
        -0x29t
        0xft
        -0x77t
    .end array-data
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 5

    .line 1
    sget-object v0, Lp0/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lp0/b;->f(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-object v1, Lp0/b;->d:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    cmp-long p1, v1, v3

    .line 51
    .line 52
    if-lez p1, :cond_1

    .line 53
    .line 54
    :try_start_1
    invoke-static {p0}, Lp0/b;->h(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Lp0/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    invoke-static {p0, p1}, Lp0/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0

    .line 79
    :array_0
    .array-data 1
        -0x25t
        0x1et
        -0x2t
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 1
        -0x41t
        0x6bt
        -0x65t
        0x7et
        -0x3ct
        -0x65t
        -0x7ct
        0xbt
    .end array-data
.end method

.method public static h(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lp0/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x3

    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v4, v3, [B

    .line 21
    .line 22
    fill-array-data v4, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    sub-long/2addr v6, v8

    .line 40
    const-wide/16 v8, 0x1388

    .line 41
    .line 42
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [B

    .line 52
    .line 53
    fill-array-data v0, :array_2

    .line 54
    .line 55
    .line 56
    new-array v2, v3, [B

    .line 57
    .line 58
    fill-array-data v2, :array_3

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/app/AlarmManager;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    add-long/2addr v6, v4

    .line 78
    new-instance v2, Landroid/content/Intent;

    .line 79
    .line 80
    const-class v8, Lcom/example/navistart/HideManager/LauncherShortcutRestoreReceiver;

    .line 81
    .line 82
    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    const/high16 v8, 0xc000000

    .line 86
    .line 87
    invoke-static {p0, v1, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {v0, v2, v6, v7, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lp0/b;->f:Landroidx/profileinstaller/c;

    .line 96
    .line 97
    sget-object v1, Lp0/b;->e:Landroid/os/Handler;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    new-instance v0, Landroidx/profileinstaller/c;

    .line 105
    .line 106
    invoke-direct {v0, p0, v3}, Landroidx/profileinstaller/c;-><init>(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lp0/b;->f:Landroidx/profileinstaller/c;

    .line 110
    .line 111
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    const/16 p0, 0x19

    .line 116
    .line 117
    new-array p0, p0, [B

    .line 118
    .line 119
    fill-array-data p0, :array_4

    .line 120
    .line 121
    .line 122
    new-array v0, v3, [B

    .line 123
    .line 124
    fill-array-data v0, :array_5

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 1
        0xdt
        0x11t
        -0x71t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 1
        0x69t
        0x64t
        -0x16t
        0x46t
        0x1ct
        -0x27t
        0x29t
        -0x43t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 1
        0x6bt
        -0x4et
        0x39t
        -0x35t
        -0x44t
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_3
    .array-data 1
        0xat
        -0x22t
        0x58t
        -0x47t
        -0x2ft
        0x47t
        -0x49t
        0x7ct
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_4
    .array-data 1
        0x25t
        -0x4bt
        0xct
        0x32t
        0x6t
        0x20t
        -0x44t
        0x26t
        0x36t
        -0x51t
        0x4t
        0x23t
        0xet
        0x20t
        -0x46t
        0x2dt
        0x25t
        -0x51t
        0xct
        0x29t
        0x7t
        0x61t
        -0x53t
        0x2ft
        0x21t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_5
    .array-data 1
        0x44t
        -0x27t
        0x6dt
        0x40t
        0x6bt
        0x0t
        -0x31t
        0x43t
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;)Lm0/b3;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lp0/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v6, v1, Lp0/b;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_2

    .line 32
    .line 33
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lp0/a;

    .line 38
    .line 39
    iget-object v8, v7, Lp0/a;->b:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {v0, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v8, v7, Lp0/a;->b:Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-boolean v9, v7, Lp0/a;->e:Z

    .line 54
    .line 55
    if-nez v9, :cond_0

    .line 56
    .line 57
    invoke-static {v7}, Lp0/b;->e(Lp0/a;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v9, 0x2

    .line 68
    if-ne v7, v9, :cond_0

    .line 69
    .line 70
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Lm0/b3;

    .line 83
    .line 84
    invoke-direct {v0, v7, v6}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    sget-object v0, Lp0/b;->i:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v8, 0x1

    .line 99
    if-nez v0, :cond_11

    .line 100
    .line 101
    sget-object v0, Lp0/b;->j:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_4
    const/4 v0, 0x4

    .line 116
    new-array v0, v0, [B

    .line 117
    .line 118
    fill-array-data v0, :array_0

    .line 119
    .line 120
    .line 121
    const/16 v3, 0x8

    .line 122
    .line 123
    new-array v9, v3, [B

    .line 124
    .line 125
    fill-array-data v9, :array_1

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/os/UserManager;

    .line 137
    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    const-wide/16 v9, -0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v9

    .line 151
    :goto_1
    const-wide/16 v11, 0x0

    .line 152
    .line 153
    cmp-long v0, v9, v11

    .line 154
    .line 155
    if-gez v0, :cond_6

    .line 156
    .line 157
    const/16 v0, 0x18

    .line 158
    .line 159
    new-array v0, v0, [B

    .line 160
    .line 161
    fill-array-data v0, :array_2

    .line 162
    .line 163
    .line 164
    new-array v2, v3, [B

    .line 165
    .line 166
    fill-array-data v2, :array_3

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    const/4 v12, 0x3

    .line 193
    new-array v12, v12, [B

    .line 194
    .line 195
    fill-array-data v12, :array_4

    .line 196
    .line 197
    .line 198
    new-array v13, v3, [B

    .line 199
    .line 200
    fill-array-data v13, :array_5

    .line 201
    .line 202
    .line 203
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    const/4 v13, 0x6

    .line 208
    new-array v13, v13, [B

    .line 209
    .line 210
    fill-array-data v13, :array_6

    .line 211
    .line 212
    .line 213
    new-array v14, v3, [B

    .line 214
    .line 215
    fill-array-data v14, :array_7

    .line 216
    .line 217
    .line 218
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    filled-new-array {v12, v13}, [Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    const/16 v12, 0x1e

    .line 227
    .line 228
    new-array v12, v12, [B

    .line 229
    .line 230
    fill-array-data v12, :array_8

    .line 231
    .line 232
    .line 233
    new-array v14, v3, [B

    .line 234
    .line 235
    fill-array-data v14, :array_9

    .line 236
    .line 237
    .line 238
    invoke-static {v12, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    filled-new-array {v9}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    const/4 v9, 0x7

    .line 251
    new-array v9, v9, [B

    .line 252
    .line 253
    fill-array-data v9, :array_a

    .line 254
    .line 255
    .line 256
    new-array v10, v3, [B

    .line 257
    .line 258
    fill-array-data v10, :array_b

    .line 259
    .line 260
    .line 261
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    sget-object v12, Lp0/b;->k:Landroid/net/Uri;

    .line 266
    .line 267
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    if-nez v9, :cond_8

    .line 272
    .line 273
    const/16 v0, 0x13

    .line 274
    .line 275
    :try_start_0
    new-array v0, v0, [B

    .line 276
    .line 277
    fill-array-data v0, :array_c

    .line 278
    .line 279
    .line 280
    new-array v2, v3, [B

    .line 281
    .line 282
    fill-array-data v2, :array_d

    .line 283
    .line 284
    .line 285
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 290
    .line 291
    .line 292
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v9, :cond_7

    .line 294
    .line 295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 296
    .line 297
    .line 298
    :cond_7
    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    move-object v2, v0

    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    :cond_8
    const/4 v10, 0x3

    .line 304
    :try_start_1
    new-array v10, v10, [B

    .line 305
    .line 306
    fill-array-data v10, :array_e

    .line 307
    .line 308
    .line 309
    new-array v11, v3, [B

    .line 310
    .line 311
    fill-array-data v11, :array_f

    .line 312
    .line 313
    .line 314
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    const/4 v11, 0x6

    .line 323
    new-array v11, v11, [B

    .line 324
    .line 325
    fill-array-data v11, :array_10

    .line 326
    .line 327
    .line 328
    new-array v12, v3, [B

    .line 329
    .line 330
    fill-array-data v12, :array_11

    .line 331
    .line 332
    .line 333
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    :catch_0
    :cond_9
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    if-eqz v12, :cond_d

    .line 346
    .line 347
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 352
    .line 353
    .line 354
    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    if-eqz v13, :cond_a

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_a
    :try_start_2
    invoke-static {v12, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 363
    .line 364
    .line 365
    move-result-object v12
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    if-eqz v12, :cond_9

    .line 367
    .line 368
    :try_start_3
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-nez v13, :cond_b

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_b
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 376
    .line 377
    .line 378
    move-result-wide v13

    .line 379
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    if-nez v12, :cond_c

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_c
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    .line 392
    .line 393
    goto :goto_2

    .line 394
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_e

    .line 402
    .line 403
    new-instance v0, Lm0/b3;

    .line 404
    .line 405
    invoke-direct {v0, v7, v6}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-object v0

    .line 409
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    new-array v4, v4, [Ljava/lang/String;

    .line 414
    .line 415
    move v5, v7

    .line 416
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    if-ge v5, v9, :cond_f

    .line 421
    .line 422
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    check-cast v9, Ljava/lang/Long;

    .line 427
    .line 428
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 429
    .line 430
    .line 431
    move-result-wide v9

    .line 432
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    aput-object v9, v4, v5

    .line 437
    .line 438
    add-int/lit8 v5, v5, 0x1

    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .line 445
    .line 446
    new-array v9, v3, [B

    .line 447
    .line 448
    fill-array-data v9, :array_12

    .line 449
    .line 450
    .line 451
    new-array v10, v3, [B

    .line 452
    .line 453
    fill-array-data v10, :array_13

    .line 454
    .line 455
    .line 456
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    new-array v9, v8, [B

    .line 464
    .line 465
    const/16 v10, 0x7c

    .line 466
    .line 467
    aput-byte v10, v9, v7

    .line 468
    .line 469
    new-array v10, v3, [B

    .line 470
    .line 471
    fill-array-data v10, :array_14

    .line 472
    .line 473
    .line 474
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    new-array v10, v8, [B

    .line 483
    .line 484
    const/16 v11, -0x65

    .line 485
    .line 486
    aput-byte v11, v10, v7

    .line 487
    .line 488
    new-array v11, v3, [B

    .line 489
    .line 490
    fill-array-data v11, :array_15

    .line 491
    .line 492
    .line 493
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    invoke-static {v0, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    new-array v0, v8, [B

    .line 509
    .line 510
    const/16 v8, 0x1a

    .line 511
    .line 512
    aput-byte v8, v0, v7

    .line 513
    .line 514
    new-array v3, v3, [B

    .line 515
    .line 516
    fill-array-data v3, :array_16

    .line 517
    .line 518
    .line 519
    invoke-static {v0, v3, v5}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    sget-object v3, Lp0/b;->k:Landroid/net/Uri;

    .line 528
    .line 529
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    new-instance v0, Lm0/b3;

    .line 533
    .line 534
    invoke-direct {v0, v7, v6}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    return-object v0

    .line 538
    :goto_4
    if-eqz v9, :cond_10

    .line 539
    .line 540
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :catchall_1
    move-exception v0

    .line 545
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    :cond_10
    :goto_5
    throw v2

    .line 549
    :cond_11
    :goto_6
    new-instance v0, Lm0/b3;

    .line 550
    .line 551
    invoke-direct {v0, v8, v6}, Lm0/b3;-><init>(ZLjava/lang/String;)V

    .line 552
    .line 553
    .line 554
    return-object v0

    .line 555
    :array_0
    .array-data 1
        -0x31t
        -0x6t
        0x21t
        -0x46t
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    :array_1
    .array-data 1
        -0x46t
        -0x77t
        0x44t
        -0x38t
        0x74t
        0xat
        -0x34t
        -0x73t
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_2
    .array-data 1
        -0x1et
        0x46t
        0x5et
        -0x3ft
        -0x74t
        -0x70t
        0x64t
        0x3et
        -0xct
        0x40t
        0x49t
        -0x3ft
        -0x37t
        -0x75t
        0x7et
        0x7ft
        -0x9t
        0x52t
        0x45t
        -0x21t
        -0x78t
        -0x64t
        0x7ct
        0x7bt
    .end array-data

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
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_3
    .array-data 1
        -0x7ft
        0x33t
        0x2ct
        -0x4dt
        -0x17t
        -0x2t
        0x10t
        0x1et
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_4
    .array-data 1
        0x27t
        -0x11t
        -0x76t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_5
    .array-data 1
        0x78t
        -0x7at
        -0x12t
        0x3ct
        0x28t
        0x54t
        -0xft
        0x26t
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_6
    .array-data 1
        -0x24t
        -0x5ct
        0x6ct
        -0x43t
        -0x2et
        -0x43t
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    nop

    .line 615
    :array_7
    .array-data 1
        -0x4bt
        -0x36t
        0x18t
        -0x28t
        -0x44t
        -0x37t
        0x5ct
        -0x12t
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_8
    .array-data 1
        -0x80t
        0x77t
        -0x32t
        0x44t
        -0x79t
        -0x4at
        0x7bt
        -0x76t
        -0x6ct
        0x25t
        -0x64t
        0x2t
        -0x2ft
        -0x6t
        0x5ft
        -0x73t
        -0x4ct
        0x25t
        -0x38t
        0x56t
        -0x75t
        -0x49t
        0x4at
        -0x46t
        -0x80t
        0x60t
        -0x7ft
        0x1ft
        -0x32t
        -0x16t
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
    nop

    .line 643
    :array_9
    .array-data 1
        -0x10t
        0x5t
        -0x5ft
        0x22t
        -0x12t
        -0x26t
        0x1et
        -0x3dt
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_a
    .array-data 1
        -0x1at
        0x34t
        0x5ft
        -0x22t
        -0xdt
        -0x12t
        -0x52t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_b
    .array-data 1
        -0x47t
        0x5dt
        0x3bt
        -0x2t
        -0x4et
        -0x43t
        -0x13t
        0x45t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_c
    .array-data 1
        0x71t
        0x42t
        -0x30t
        0x55t
        -0x17t
        -0xet
        -0x4ct
        0xat
        0x74t
        0x42t
        -0x39t
        0x49t
        -0xbt
        -0x4at
        -0x1at
        0x1t
        0x75t
        0x5bt
        -0x27t
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_d
    .array-data 1
        0x0t
        0x37t
        -0x4bt
        0x27t
        -0x70t
        -0x2et
        -0x3at
        0x6ft
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_e
    .array-data 1
        -0x28t
        0x42t
        0xet
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :array_f
    .array-data 1
        -0x79t
        0x2bt
        0x6at
        0x11t
        0x6dt
        0x34t
        -0x37t
        -0x55t
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_10
    .array-data 1
        0x2ct
        -0x7dt
        -0x3t
        -0x3dt
        -0x30t
        -0x71t
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    nop

    .line 711
    :array_11
    .array-data 1
        0x45t
        -0x13t
        -0x77t
        -0x5at
        -0x42t
        -0x5t
        0x8t
        0x20t
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_12
    .array-data 1
        -0x43t
        0x78t
        -0x19t
        -0x1at
        0x42t
        -0x4ft
        0x64t
        0x21t
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :array_13
    .array-data 1
        -0x1et
        0x11t
        -0x7dt
        -0x3at
        0xbt
        -0x1t
        0x44t
        0x9t
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_14
    .array-data 1
        0x50t
        -0x7bt
        0x64t
        -0x1t
        -0x16t
        -0x65t
        -0x24t
        -0x23t
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_15
    .array-data 1
        -0x5ct
        -0x1dt
        0x19t
        -0x1bt
        0x8t
        0x7t
        -0x6ft
        0x52t
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_16
    .array-data 1
        0x33t
        -0x60t
        0x4ct
        -0x29t
        0x62t
        0x28t
        -0x1dt
        -0x46t
    .end array-data
.end method

.method public final c(Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp0/b;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lp0/a;

    .line 23
    .line 24
    iget-boolean v3, v2, Lp0/a;->e:Z

    .line 25
    .line 26
    invoke-static {v2}, Lp0/b;->e(Lp0/a;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lp0/a;->b:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method
