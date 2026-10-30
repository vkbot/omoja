.class public final Lw0/o0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lj0/e;

.field public c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/e;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/o0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lw0/o0;->b:Lj0/e;

    .line 7
    .line 8
    iput-boolean p3, p0, Lw0/o0;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lw0/o0;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)Lw0/o0;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    new-array v5, v2, [B

    .line 10
    .line 11
    fill-array-data v5, :array_0

    .line 12
    .line 13
    .line 14
    new-array v6, v3, [B

    .line 15
    .line 16
    fill-array-data v6, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x7

    .line 28
    new-array v6, v6, [B

    .line 29
    .line 30
    fill-array-data v6, :array_2

    .line 31
    .line 32
    .line 33
    new-array v7, v3, [B

    .line 34
    .line 35
    fill-array-data v7, :array_3

    .line 36
    .line 37
    .line 38
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {p0, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/16 v7, 0x9

    .line 47
    .line 48
    new-array v7, v7, [B

    .line 49
    .line 50
    fill-array-data v7, :array_4

    .line 51
    .line 52
    .line 53
    new-array v8, v3, [B

    .line 54
    .line 55
    fill-array-data v8, :array_5

    .line 56
    .line 57
    .line 58
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {p0, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_6

    .line 69
    .line 70
    .line 71
    new-array v8, v3, [B

    .line 72
    .line 73
    fill-array-data v8, :array_7

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-array v8, v1, [B

    .line 81
    .line 82
    fill-array-data v8, :array_8

    .line 83
    .line 84
    .line 85
    new-array v9, v3, [B

    .line 86
    .line 87
    fill-array-data v9, :array_9

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p1, p0}, Lj0/f;->b(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance v2, Lw0/o0;

    .line 103
    .line 104
    invoke-direct {v2, v5, p0, v6, v7}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    new-instance p0, Lw0/o0;

    .line 113
    .line 114
    new-array v1, v1, [B

    .line 115
    .line 116
    fill-array-data v1, :array_a

    .line 117
    .line 118
    .line 119
    new-array v2, v3, [B

    .line 120
    .line 121
    fill-array-data v2, :array_b

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {p1, v1}, Lj0/f;->b(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, v0, p1, v4, v4}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    nop

    .line 137
    :array_0
    .array-data 1
        0x63t
        0x5ct
        0x6dt
        -0x60t
        -0x2at
        0x59t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_1
    .array-data 1
        0x13t
        0x34t
        0x1ft
        -0x3ft
        -0x5bt
        0x3ct
        0x25t
        0xct
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 1
        -0x2ft
        -0x45t
        0x67t
        -0x64t
        -0x71t
        0xft
        0x1bt
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_3
    .array-data 1
        -0x4ct
        -0x2bt
        0x6t
        -0x2t
        -0x1dt
        0x6at
        0x7ft
        0x67t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 1
        0x28t
        0x73t
        -0x43t
        0x1dt
        0x10t
        0x0t
        -0x36t
        0x38t
        0x29t
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    nop

    .line 179
    :array_5
    .array-data 1
        0x45t
        0x12t
        -0x37t
        0x7et
        0x78t
        0x46t
        -0x41t
        0x54t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_6
    .array-data 1
        -0x61t
        0x73t
        0x1ct
        -0x6t
        0x15t
        -0x7ft
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    nop

    .line 195
    :array_7
    .array-data 1
        -0x2t
        0x10t
        0x68t
        -0x6dt
        0x7at
        -0x11t
        -0x13t
        0x72t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_8
    .array-data 1
        -0x25t
        0x64t
        0x35t
        -0x69t
        0x78t
        0x17t
        -0x5ft
        -0x71t
        -0x1ft
        0x7ct
        0x21t
        -0x6at
        0x37t
        0x3ct
    .end array-data

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
    nop

    .line 215
    :array_9
    .array-data 1
        -0x42t
        0xat
        0x40t
        -0x6t
        0x42t
        0x59t
        -0x32t
        -0x5t
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_a
    .array-data 1
        -0x36t
        0x51t
        -0x7ct
        0x66t
        -0x1t
        -0x66t
        -0x3at
        -0x80t
        -0x10t
        0x49t
        -0x70t
        0x67t
        -0x50t
        -0x4ft
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    nop

    .line 235
    :array_b
    .array-data 1
        -0x51t
        0x3ft
        -0xft
        0xbt
        -0x3bt
        -0x2ct
        -0x57t
        -0xct
    .end array-data
.end method
