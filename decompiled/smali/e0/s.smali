.class public final Le0/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Le0/s;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Le0/s;->b:Z

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    iput p1, p0, Le0/s;->c:I

    .line 11
    .line 12
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Le0/s;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Le0/s;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p4, p0, Le0/s;->f:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    new-array v4, v3, [B

    .line 15
    .line 16
    fill-array-data v4, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v2, p0, Le0/s;->a:Z

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v2, 0xe

    .line 32
    .line 33
    new-array v4, v2, [B

    .line 34
    .line 35
    fill-array-data v4, :array_2

    .line 36
    .line 37
    .line 38
    new-array v5, v3, [B

    .line 39
    .line 40
    fill-array-data v5, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v4, p0, Le0/s;->b:Z

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-array v1, v1, [B

    .line 56
    .line 57
    fill-array-data v1, :array_4

    .line 58
    .line 59
    .line 60
    new-array v4, v3, [B

    .line 61
    .line 62
    fill-array-data v4, :array_5

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Le0/s;->c:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-array v1, v2, [B

    .line 78
    .line 79
    fill-array-data v1, :array_6

    .line 80
    .line 81
    .line 82
    new-array v2, v3, [B

    .line 83
    .line 84
    fill-array-data v2, :array_7

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Le0/s;->d:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/16 v1, 0xf

    .line 100
    .line 101
    new-array v1, v1, [B

    .line 102
    .line 103
    fill-array-data v1, :array_8

    .line 104
    .line 105
    .line 106
    new-array v2, v3, [B

    .line 107
    .line 108
    fill-array-data v2, :array_9

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Le0/s;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Le0/s;->f:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v1, :cond_0

    .line 126
    .line 127
    const-string v1, ""

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    new-array v2, v3, [B

    .line 131
    .line 132
    fill-array-data v2, :array_a

    .line 133
    .line 134
    .line 135
    new-array v3, v3, [B

    .line 136
    .line 137
    fill-array-data v3, :array_b

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    nop

    .line 157
    :array_0
    .array-data 1
        0x6et
        0x7ct
        -0x1ct
        0x3et
        -0x5ct
        0x40t
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
    :array_1
    .array-data 1
        0x1t
        0xbt
        -0x76t
        0x5bt
        -0x2at
        0x7dt
        0x67t
        -0x30t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 1
        -0x1et
        -0x1ct
        0x2ft
        -0x7t
        0x39t
        0x5ct
        0x63t
        -0x44t
        -0x53t
        -0x50t
        0x27t
        -0x15t
        0x31t
        0x8t
    .end array-data

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
    nop

    .line 185
    :array_3
    .array-data 1
        -0x32t
        -0x3ct
        0x4et
        -0x63t
        0x54t
        0x35t
        0xdt
        -0x3t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_4
    .array-data 1
        0x7at
        0x4bt
        0x7et
        0x6at
        0x59t
        -0x53t
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    nop

    .line 201
    :array_5
    .array-data 1
        0x56t
        0x6bt
        0xdt
        0xet
        0x32t
        -0x70t
        0x3at
        -0x2ft
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_6
    .array-data 1
        -0x7ct
        -0x75t
        0x6dt
        -0x7et
        -0x38t
        -0x6ct
        -0x5et
        0x47t
        -0x28t
        -0x27t
        0x62t
        -0x7bt
        -0x2et
        -0x32t
    .end array-data

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
    nop

    .line 221
    :array_7
    .array-data 1
        -0x58t
        -0x55t
        0xbt
        -0x15t
        -0x5at
        -0xdt
        -0x39t
        0x35t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_8
    .array-data 1
        0x77t
        0x66t
        0x78t
        -0x46t
        -0x12t
        0x32t
        0xet
        -0x2ct
        0x1at
        0x22t
        0x74t
        -0x50t
        -0xct
        0x28t
        0x45t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_9
    .array-data 1
        0x5bt
        0x46t
        0x19t
        -0x27t
        -0x66t
        0x5bt
        0x78t
        -0x4ft
    .end array-data

    :array_a
    .array-data 1
        -0x2dt
        -0x1t
        0x6ft
        -0x71t
        -0x73t
        -0x21t
        0x3bt
        -0x63t
    .end array-data

    :array_b
    .array-data 1
        -0x1t
        -0x21t
        0xat
        -0x3t
        -0x1t
        -0x50t
        0x49t
        -0x60t
    .end array-data
.end method
