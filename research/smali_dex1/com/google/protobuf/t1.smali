.class public final Lcom/google/protobuf/t1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lcom/google/protobuf/e1;

.field public static final c:Lcom/google/protobuf/f1;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/protobuf/e1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/e1;

    .line 7
    .line 8
    new-instance v0, Lcom/google/protobuf/f1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/protobuf/t1;->c:Lcom/google/protobuf/f1;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/protobuf/t1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/google/protobuf/g;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/g;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-virtual {p0}, Lcom/google/protobuf/g;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_8f

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/protobuf/g;->a(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_86

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_80

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_7a

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_94

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_30

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_30

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_8b

    .line 49
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_8b

    .line 81
    :pswitch_50
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_8b

    .line 87
    :pswitch_56
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_8b

    .line 93
    :pswitch_5c
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_8b

    .line 99
    :pswitch_62
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_8b

    .line 105
    :pswitch_68
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_8b

    .line 111
    :pswitch_6e
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_8b

    .line 117
    :pswitch_74
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_8b

    .line 123
    :cond_7a
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_8b

    .line 129
    :cond_80
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_8b

    .line 135
    :cond_86
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_a

    .line 143
    .line 144
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
    .end packed-switch
.end method

.method public static d(B)Z
    .registers 2

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static f(IIJ[B)I
    .registers 7

    .line 1
    if-eqz p1, :cond_27

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1e

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_18

    .line 8
    .line 9
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    .line 15
    add-long/2addr p2, v0

    .line 16
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/v1;->d(III)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1e
    invoke-static {p4, p2, p3}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p0, p1}, Lcom/google/protobuf/v1;->c(II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_27
    sget-object p1, Lcom/google/protobuf/v1;->a:Lcom/google/protobuf/t1;

    .line 41
    .line 42
    const/16 p1, -0xc

    .line 43
    .line 44
    if-le p0, p1, :cond_2e

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    :cond_2e
    return p0
.end method


# virtual methods
.method public final a([BII)Ljava/lang/String;
    .registers 14

    .line 1
    iget v0, p0, Lcom/google/protobuf/t1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_15a

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "\ufffd"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_15

    .line 20
    .line 21
    goto :goto_24

    .line 22
    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    add-int/2addr p3, p2

    .line 27
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 36
    .line 37
    :goto_24
    return-object v0

    .line 38
    :cond_25
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    :pswitch_2a
    or-int v0, p2, p3

    .line 44
    .line 45
    array-length v1, p1

    .line 46
    sub-int/2addr v1, p2

    .line 47
    sub-int/2addr v1, p3

    .line 48
    or-int/2addr v0, v1

    .line 49
    if-ltz v0, :cond_13c

    .line 50
    .line 51
    add-int v0, p2, p3

    .line 52
    .line 53
    new-array p3, p3, [C

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    move v2, v1

    .line 57
    :goto_38
    if-ge p2, v0, :cond_47

    .line 58
    .line 59
    aget-byte v3, p1, p2

    .line 60
    .line 61
    if-ltz v3, :cond_47

    .line 62
    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 64
    .line 65
    add-int/lit8 v4, v2, 0x1

    .line 66
    .line 67
    int-to-char v3, v3

    .line 68
    aput-char v3, p3, v2

    .line 69
    .line 70
    move v2, v4

    .line 71
    goto :goto_38

    .line 72
    :cond_47
    :goto_47
    if-ge p2, v0, :cond_136

    .line 73
    .line 74
    add-int/lit8 v3, p2, 0x1

    .line 75
    .line 76
    aget-byte v4, p1, p2

    .line 77
    .line 78
    if-ltz v4, :cond_66

    .line 79
    .line 80
    add-int/lit8 p2, v2, 0x1

    .line 81
    .line 82
    int-to-char v4, v4

    .line 83
    aput-char v4, p3, v2

    .line 84
    .line 85
    :goto_54
    if-ge v3, v0, :cond_63

    .line 86
    .line 87
    aget-byte v2, p1, v3

    .line 88
    .line 89
    if-ltz v2, :cond_63

    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    add-int/lit8 v4, p2, 0x1

    .line 94
    .line 95
    int-to-char v2, v2

    .line 96
    aput-char v2, p3, p2

    .line 97
    .line 98
    move p2, v4

    .line 99
    goto :goto_54

    .line 100
    :cond_63
    move v2, p2

    .line 101
    move p2, v3

    .line 102
    goto :goto_47

    .line 103
    :cond_66
    const/16 v5, -0x20

    .line 104
    .line 105
    if-ge v4, v5, :cond_92

    .line 106
    .line 107
    if-ge v3, v0, :cond_8d

    .line 108
    .line 109
    add-int/lit8 p2, p2, 0x2

    .line 110
    .line 111
    aget-byte v3, p1, v3

    .line 112
    .line 113
    add-int/lit8 v5, v2, 0x1

    .line 114
    .line 115
    const/16 v6, -0x3e

    .line 116
    .line 117
    if-lt v4, v6, :cond_88

    .line 118
    .line 119
    invoke-static {v3}, Lcom/google/protobuf/t1;->d(B)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_88

    .line 124
    .line 125
    and-int/lit8 v4, v4, 0x1f

    .line 126
    .line 127
    shl-int/lit8 v4, v4, 0x6

    .line 128
    .line 129
    and-int/lit8 v3, v3, 0x3f

    .line 130
    .line 131
    or-int/2addr v3, v4

    .line 132
    int-to-char v3, v3

    .line 133
    aput-char v3, p3, v2

    .line 134
    .line 135
    move v2, v5

    .line 136
    goto :goto_47

    .line 137
    :cond_88
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_8d
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    throw p1

    .line 147
    :cond_92
    const/16 v6, -0x10

    .line 148
    .line 149
    if-ge v4, v6, :cond_d8

    .line 150
    .line 151
    add-int/lit8 v6, v0, -0x1

    .line 152
    .line 153
    if-ge v3, v6, :cond_d3

    .line 154
    .line 155
    add-int/lit8 v6, p2, 0x2

    .line 156
    .line 157
    aget-byte v3, p1, v3

    .line 158
    .line 159
    add-int/lit8 p2, p2, 0x3

    .line 160
    .line 161
    aget-byte v6, p1, v6

    .line 162
    .line 163
    add-int/lit8 v7, v2, 0x1

    .line 164
    .line 165
    invoke-static {v3}, Lcom/google/protobuf/t1;->d(B)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-nez v8, :cond_ce

    .line 170
    .line 171
    const/16 v8, -0x60

    .line 172
    .line 173
    if-ne v4, v5, :cond_b0

    .line 174
    .line 175
    if-lt v3, v8, :cond_ce

    .line 176
    .line 177
    :cond_b0
    const/16 v5, -0x13

    .line 178
    .line 179
    if-ne v4, v5, :cond_b6

    .line 180
    .line 181
    if-ge v3, v8, :cond_ce

    .line 182
    .line 183
    :cond_b6
    invoke-static {v6}, Lcom/google/protobuf/t1;->d(B)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_ce

    .line 188
    .line 189
    and-int/lit8 v4, v4, 0xf

    .line 190
    .line 191
    shl-int/lit8 v4, v4, 0xc

    .line 192
    .line 193
    and-int/lit8 v3, v3, 0x3f

    .line 194
    .line 195
    shl-int/lit8 v3, v3, 0x6

    .line 196
    .line 197
    or-int/2addr v3, v4

    .line 198
    and-int/lit8 v4, v6, 0x3f

    .line 199
    .line 200
    or-int/2addr v3, v4

    .line 201
    int-to-char v3, v3

    .line 202
    aput-char v3, p3, v2

    .line 203
    .line 204
    move v2, v7

    .line 205
    goto/16 :goto_47

    .line 206
    .line 207
    :cond_ce
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    throw p1

    .line 212
    :cond_d3
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    throw p1

    .line 217
    :cond_d8
    add-int/lit8 v5, v0, -0x2

    .line 218
    .line 219
    if-ge v3, v5, :cond_131

    .line 220
    .line 221
    add-int/lit8 v5, p2, 0x2

    .line 222
    .line 223
    aget-byte v3, p1, v3

    .line 224
    .line 225
    add-int/lit8 v6, p2, 0x3

    .line 226
    .line 227
    aget-byte v5, p1, v5

    .line 228
    .line 229
    add-int/lit8 p2, p2, 0x4

    .line 230
    .line 231
    aget-byte v6, p1, v6

    .line 232
    .line 233
    add-int/lit8 v7, v2, 0x1

    .line 234
    .line 235
    invoke-static {v3}, Lcom/google/protobuf/t1;->d(B)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-nez v8, :cond_12c

    .line 240
    .line 241
    shl-int/lit8 v8, v4, 0x1c

    .line 242
    .line 243
    add-int/lit8 v9, v3, 0x70

    .line 244
    .line 245
    add-int/2addr v9, v8

    .line 246
    shr-int/lit8 v8, v9, 0x1e

    .line 247
    .line 248
    if-nez v8, :cond_12c

    .line 249
    .line 250
    invoke-static {v5}, Lcom/google/protobuf/t1;->d(B)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-nez v8, :cond_12c

    .line 255
    .line 256
    invoke-static {v6}, Lcom/google/protobuf/t1;->d(B)Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-nez v8, :cond_12c

    .line 261
    .line 262
    and-int/lit8 v4, v4, 0x7

    .line 263
    .line 264
    shl-int/lit8 v4, v4, 0x12

    .line 265
    .line 266
    and-int/lit8 v3, v3, 0x3f

    .line 267
    .line 268
    shl-int/lit8 v3, v3, 0xc

    .line 269
    .line 270
    or-int/2addr v3, v4

    .line 271
    and-int/lit8 v4, v5, 0x3f

    .line 272
    .line 273
    shl-int/lit8 v4, v4, 0x6

    .line 274
    .line 275
    or-int/2addr v3, v4

    .line 276
    and-int/lit8 v4, v6, 0x3f

    .line 277
    .line 278
    or-int/2addr v3, v4

    .line 279
    ushr-int/lit8 v4, v3, 0xa

    .line 280
    .line 281
    const v5, 0xd7c0

    .line 282
    .line 283
    .line 284
    add-int/2addr v4, v5

    .line 285
    int-to-char v4, v4

    .line 286
    aput-char v4, p3, v2

    .line 287
    .line 288
    and-int/lit16 v3, v3, 0x3ff

    .line 289
    .line 290
    const v4, 0xdc00

    .line 291
    .line 292
    .line 293
    add-int/2addr v3, v4

    .line 294
    int-to-char v3, v3

    .line 295
    aput-char v3, p3, v7

    .line 296
    .line 297
    add-int/lit8 v2, v2, 0x2

    .line 298
    .line 299
    goto/16 :goto_47

    .line 300
    .line 301
    :cond_12c
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    throw p1

    .line 306
    :cond_131
    invoke-static {}, Lcom/google/protobuf/d0;->a()Lcom/google/protobuf/d0;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    throw p1

    .line 311
    :cond_136
    new-instance p1, Ljava/lang/String;

    .line 312
    .line 313
    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 314
    .line 315
    .line 316
    return-object p1

    .line 317
    :cond_13c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 318
    .line 319
    array-length p1, p1

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object p3

    .line 332
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    const-string p2, "buffer length=%d, index=%d, size=%d"

    .line 337
    .line 338
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    nop

    .line 347
    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;[BII)I
    .registers 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget v5, v3, Lcom/google/protobuf/t1;->a:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_26c

    .line 14
    .line 15
    .line 16
    int-to-long v5, v2

    .line 17
    int-to-long v7, v4

    .line 18
    add-long/2addr v7, v5

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    const-string v10, " at index "

    .line 24
    .line 25
    const-string v11, "Failed writing "

    .line 26
    .line 27
    if-gt v9, v4, :cond_14f

    .line 28
    .line 29
    array-length v12, v1

    .line 30
    sub-int/2addr v12, v4

    .line 31
    if-lt v12, v2, :cond_14f

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_21
    const-wide/16 v12, 0x1

    .line 35
    .line 36
    const/16 v4, 0x80

    .line 37
    .line 38
    if-ge v2, v9, :cond_36

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    if-ge v14, v4, :cond_36

    .line 45
    .line 46
    add-long/2addr v12, v5

    .line 47
    int-to-byte v4, v14

    .line 48
    invoke-static {v1, v5, v6, v4}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    move-wide v5, v12

    .line 54
    goto :goto_21

    .line 55
    :cond_36
    if-ne v2, v9, :cond_3b

    .line 56
    .line 57
    long-to-int v0, v5

    .line 58
    goto/16 :goto_14e

    .line 59
    .line 60
    :cond_3b
    :goto_3b
    if-ge v2, v9, :cond_14c

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    if-ge v14, v4, :cond_53

    .line 67
    .line 68
    cmp-long v15, v5, v7

    .line 69
    .line 70
    if-gez v15, :cond_53

    .line 71
    .line 72
    add-long v15, v5, v12

    .line 73
    .line 74
    int-to-byte v14, v14

    .line 75
    invoke-static {v1, v5, v6, v14}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 76
    .line 77
    .line 78
    move v6, v4

    .line 79
    move-wide/from16 p3, v12

    .line 80
    .line 81
    move-wide v12, v15

    .line 82
    goto/16 :goto_104

    .line 83
    .line 84
    :cond_53
    const/16 v15, 0x800

    .line 85
    .line 86
    const-wide/16 v16, 0x2

    .line 87
    .line 88
    if-ge v14, v15, :cond_78

    .line 89
    .line 90
    sub-long v18, v7, v16

    .line 91
    .line 92
    cmp-long v15, v5, v18

    .line 93
    .line 94
    if-gtz v15, :cond_78

    .line 95
    .line 96
    move-wide/from16 p3, v12

    .line 97
    .line 98
    add-long v12, v5, p3

    .line 99
    .line 100
    ushr-int/lit8 v15, v14, 0x6

    .line 101
    .line 102
    or-int/lit16 v15, v15, 0x3c0

    .line 103
    .line 104
    int-to-byte v15, v15

    .line 105
    invoke-static {v1, v5, v6, v15}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 106
    .line 107
    .line 108
    add-long v5, v5, v16

    .line 109
    .line 110
    and-int/lit8 v14, v14, 0x3f

    .line 111
    .line 112
    or-int/2addr v14, v4

    .line 113
    int-to-byte v14, v14

    .line 114
    invoke-static {v1, v12, v13, v14}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 115
    .line 116
    .line 117
    move-wide v12, v5

    .line 118
    move v6, v4

    .line 119
    goto/16 :goto_104

    .line 120
    .line 121
    :cond_78
    move-wide/from16 p3, v12

    .line 122
    .line 123
    const v12, 0xdfff

    .line 124
    .line 125
    .line 126
    const v13, 0xd800

    .line 127
    .line 128
    .line 129
    const-wide/16 v18, 0x3

    .line 130
    .line 131
    if-lt v14, v13, :cond_8a

    .line 132
    .line 133
    if-ge v12, v14, :cond_87

    .line 134
    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    move-wide/from16 v20, v5

    .line 137
    .line 138
    goto :goto_b5

    .line 139
    :cond_8a
    :goto_8a
    sub-long v20, v7, v18

    .line 140
    .line 141
    cmp-long v15, v5, v20

    .line 142
    .line 143
    if-gtz v15, :cond_87

    .line 144
    .line 145
    add-long v12, v5, p3

    .line 146
    .line 147
    ushr-int/lit8 v15, v14, 0xc

    .line 148
    .line 149
    or-int/lit16 v15, v15, 0x1e0

    .line 150
    .line 151
    int-to-byte v15, v15

    .line 152
    invoke-static {v1, v5, v6, v15}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 153
    .line 154
    .line 155
    move-wide/from16 v20, v5

    .line 156
    .line 157
    add-long v4, v20, v16

    .line 158
    .line 159
    ushr-int/lit8 v6, v14, 0x6

    .line 160
    .line 161
    and-int/lit8 v6, v6, 0x3f

    .line 162
    .line 163
    const/16 v15, 0x80

    .line 164
    .line 165
    or-int/2addr v6, v15

    .line 166
    int-to-byte v6, v6

    .line 167
    invoke-static {v1, v12, v13, v6}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 168
    .line 169
    .line 170
    add-long v12, v20, v18

    .line 171
    .line 172
    and-int/lit8 v6, v14, 0x3f

    .line 173
    .line 174
    or-int/2addr v6, v15

    .line 175
    int-to-byte v6, v6

    .line 176
    invoke-static {v1, v4, v5, v6}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 177
    .line 178
    .line 179
    const/16 v6, 0x80

    .line 180
    .line 181
    goto :goto_104

    .line 182
    :goto_b5
    const-wide/16 v4, 0x4

    .line 183
    .line 184
    sub-long v22, v7, v4

    .line 185
    .line 186
    cmp-long v6, v20, v22

    .line 187
    .line 188
    if-gtz v6, :cond_11a

    .line 189
    .line 190
    add-int/lit8 v6, v2, 0x1

    .line 191
    .line 192
    if-eq v6, v9, :cond_112

    .line 193
    .line 194
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-static {v14, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_10e

    .line 203
    .line 204
    invoke-static {v14, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    add-long v12, v20, p3

    .line 209
    .line 210
    ushr-int/lit8 v14, v2, 0x12

    .line 211
    .line 212
    or-int/lit16 v14, v14, 0xf0

    .line 213
    .line 214
    int-to-byte v14, v14

    .line 215
    move-wide/from16 v22, v4

    .line 216
    .line 217
    move-wide/from16 v4, v20

    .line 218
    .line 219
    invoke-static {v1, v4, v5, v14}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 220
    .line 221
    .line 222
    move v14, v2

    .line 223
    add-long v2, v4, v16

    .line 224
    .line 225
    ushr-int/lit8 v16, v14, 0xc

    .line 226
    .line 227
    and-int/lit8 v15, v16, 0x3f

    .line 228
    .line 229
    move/from16 v16, v6

    .line 230
    .line 231
    const/16 v6, 0x80

    .line 232
    .line 233
    or-int/2addr v15, v6

    .line 234
    int-to-byte v15, v15

    .line 235
    invoke-static {v1, v12, v13, v15}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 236
    .line 237
    .line 238
    add-long v12, v4, v18

    .line 239
    .line 240
    ushr-int/lit8 v15, v14, 0x6

    .line 241
    .line 242
    and-int/lit8 v15, v15, 0x3f

    .line 243
    .line 244
    or-int/2addr v15, v6

    .line 245
    int-to-byte v15, v15

    .line 246
    invoke-static {v1, v2, v3, v15}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 247
    .line 248
    .line 249
    add-long v2, v4, v22

    .line 250
    .line 251
    and-int/lit8 v4, v14, 0x3f

    .line 252
    .line 253
    or-int/2addr v4, v6

    .line 254
    int-to-byte v4, v4

    .line 255
    invoke-static {v1, v12, v13, v4}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 256
    .line 257
    .line 258
    move-wide v12, v2

    .line 259
    move/from16 v2, v16

    .line 260
    .line 261
    :goto_104
    add-int/lit8 v2, v2, 0x1

    .line 262
    .line 263
    move-object/from16 v3, p0

    .line 264
    .line 265
    move v4, v6

    .line 266
    move-wide v5, v12

    .line 267
    move-wide/from16 v12, p3

    .line 268
    .line 269
    goto/16 :goto_3b

    .line 270
    .line 271
    :cond_10e
    move/from16 v16, v6

    .line 272
    .line 273
    move/from16 v2, v16

    .line 274
    .line 275
    :cond_112
    new-instance v0, Lcom/google/protobuf/u1;

    .line 276
    .line 277
    add-int/lit8 v2, v2, -0x1

    .line 278
    .line 279
    invoke-direct {v0, v2, v9}, Lcom/google/protobuf/u1;-><init>(II)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_11a
    move-wide/from16 v4, v20

    .line 284
    .line 285
    if-gt v13, v14, :cond_134

    .line 286
    .line 287
    if-gt v14, v12, :cond_134

    .line 288
    .line 289
    add-int/lit8 v1, v2, 0x1

    .line 290
    .line 291
    if-eq v1, v9, :cond_12e

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-static {v14, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_134

    .line 302
    .line 303
    :cond_12e
    new-instance v0, Lcom/google/protobuf/u1;

    .line 304
    .line 305
    invoke-direct {v0, v2, v9}, Lcom/google/protobuf/u1;-><init>(II)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_14c
    move-wide v4, v5

    .line 334
    long-to-int v0, v4

    .line 335
    :goto_14e
    return v0

    .line 336
    :cond_14f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 337
    .line 338
    add-int/lit8 v9, v9, -0x1

    .line 339
    .line 340
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    add-int/2addr v2, v4

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v1

    .line 367
    :pswitch_16e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    add-int/2addr v4, v2

    .line 372
    const/4 v5, 0x0

    .line 373
    :goto_174
    const/16 v6, 0x80

    .line 374
    .line 375
    if-ge v5, v3, :cond_188

    .line 376
    .line 377
    add-int v7, v5, v2

    .line 378
    .line 379
    if-ge v7, v4, :cond_188

    .line 380
    .line 381
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-ge v8, v6, :cond_188

    .line 386
    .line 387
    int-to-byte v6, v8

    .line 388
    aput-byte v6, v1, v7

    .line 389
    .line 390
    add-int/lit8 v5, v5, 0x1

    .line 391
    .line 392
    goto :goto_174

    .line 393
    :cond_188
    if-ne v5, v3, :cond_18e

    .line 394
    .line 395
    add-int v0, v2, v3

    .line 396
    .line 397
    goto/16 :goto_26b

    .line 398
    .line 399
    :cond_18e
    add-int/2addr v2, v5

    .line 400
    :goto_18f
    if-ge v5, v3, :cond_26a

    .line 401
    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-ge v7, v6, :cond_1a1

    .line 407
    .line 408
    if-ge v2, v4, :cond_1a1

    .line 409
    .line 410
    add-int/lit8 v8, v2, 0x1

    .line 411
    .line 412
    int-to-byte v7, v7

    .line 413
    aput-byte v7, v1, v2

    .line 414
    .line 415
    move v2, v8

    .line 416
    goto/16 :goto_225

    .line 417
    .line 418
    :cond_1a1
    const/16 v8, 0x800

    .line 419
    .line 420
    if-ge v7, v8, :cond_1bb

    .line 421
    .line 422
    add-int/lit8 v8, v4, -0x2

    .line 423
    .line 424
    if-gt v2, v8, :cond_1bb

    .line 425
    .line 426
    add-int/lit8 v8, v2, 0x1

    .line 427
    .line 428
    ushr-int/lit8 v9, v7, 0x6

    .line 429
    .line 430
    or-int/lit16 v9, v9, 0x3c0

    .line 431
    .line 432
    int-to-byte v9, v9

    .line 433
    aput-byte v9, v1, v2

    .line 434
    .line 435
    add-int/lit8 v2, v2, 0x2

    .line 436
    .line 437
    and-int/lit8 v7, v7, 0x3f

    .line 438
    .line 439
    or-int/2addr v7, v6

    .line 440
    int-to-byte v7, v7

    .line 441
    aput-byte v7, v1, v8

    .line 442
    .line 443
    goto :goto_225

    .line 444
    :cond_1bb
    const v8, 0xdfff

    .line 445
    .line 446
    .line 447
    const v9, 0xd800

    .line 448
    .line 449
    .line 450
    if-lt v7, v9, :cond_1c5

    .line 451
    .line 452
    if-ge v8, v7, :cond_1e5

    .line 453
    .line 454
    :cond_1c5
    add-int/lit8 v10, v4, -0x3

    .line 455
    .line 456
    if-gt v2, v10, :cond_1e5

    .line 457
    .line 458
    add-int/lit8 v8, v2, 0x1

    .line 459
    .line 460
    ushr-int/lit8 v9, v7, 0xc

    .line 461
    .line 462
    or-int/lit16 v9, v9, 0x1e0

    .line 463
    .line 464
    int-to-byte v9, v9

    .line 465
    aput-byte v9, v1, v2

    .line 466
    .line 467
    add-int/lit8 v9, v2, 0x2

    .line 468
    .line 469
    ushr-int/lit8 v10, v7, 0x6

    .line 470
    .line 471
    and-int/lit8 v10, v10, 0x3f

    .line 472
    .line 473
    or-int/2addr v10, v6

    .line 474
    int-to-byte v10, v10

    .line 475
    aput-byte v10, v1, v8

    .line 476
    .line 477
    add-int/lit8 v2, v2, 0x3

    .line 478
    .line 479
    and-int/lit8 v7, v7, 0x3f

    .line 480
    .line 481
    or-int/2addr v7, v6

    .line 482
    int-to-byte v7, v7

    .line 483
    aput-byte v7, v1, v9

    .line 484
    .line 485
    goto :goto_225

    .line 486
    :cond_1e5
    add-int/lit8 v10, v4, -0x4

    .line 487
    .line 488
    if-gt v2, v10, :cond_232

    .line 489
    .line 490
    add-int/lit8 v8, v5, 0x1

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-eq v8, v9, :cond_22a

    .line 497
    .line 498
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    invoke-static {v7, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 503
    .line 504
    .line 505
    move-result v9

    .line 506
    if-eqz v9, :cond_229

    .line 507
    .line 508
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    add-int/lit8 v7, v2, 0x1

    .line 513
    .line 514
    ushr-int/lit8 v9, v5, 0x12

    .line 515
    .line 516
    or-int/lit16 v9, v9, 0xf0

    .line 517
    .line 518
    int-to-byte v9, v9

    .line 519
    aput-byte v9, v1, v2

    .line 520
    .line 521
    add-int/lit8 v9, v2, 0x2

    .line 522
    .line 523
    ushr-int/lit8 v10, v5, 0xc

    .line 524
    .line 525
    and-int/lit8 v10, v10, 0x3f

    .line 526
    .line 527
    or-int/2addr v10, v6

    .line 528
    int-to-byte v10, v10

    .line 529
    aput-byte v10, v1, v7

    .line 530
    .line 531
    add-int/lit8 v7, v2, 0x3

    .line 532
    .line 533
    ushr-int/lit8 v10, v5, 0x6

    .line 534
    .line 535
    and-int/lit8 v10, v10, 0x3f

    .line 536
    .line 537
    or-int/2addr v10, v6

    .line 538
    int-to-byte v10, v10

    .line 539
    aput-byte v10, v1, v9

    .line 540
    .line 541
    add-int/lit8 v2, v2, 0x4

    .line 542
    .line 543
    and-int/lit8 v5, v5, 0x3f

    .line 544
    .line 545
    or-int/2addr v5, v6

    .line 546
    int-to-byte v5, v5

    .line 547
    aput-byte v5, v1, v7

    .line 548
    .line 549
    move v5, v8

    .line 550
    :goto_225
    add-int/lit8 v5, v5, 0x1

    .line 551
    .line 552
    goto/16 :goto_18f

    .line 553
    .line 554
    :cond_229
    move v5, v8

    .line 555
    :cond_22a
    new-instance v0, Lcom/google/protobuf/u1;

    .line 556
    .line 557
    add-int/lit8 v5, v5, -0x1

    .line 558
    .line 559
    invoke-direct {v0, v5, v3}, Lcom/google/protobuf/u1;-><init>(II)V

    .line 560
    .line 561
    .line 562
    throw v0

    .line 563
    :cond_232
    if-gt v9, v7, :cond_24e

    .line 564
    .line 565
    if-gt v7, v8, :cond_24e

    .line 566
    .line 567
    add-int/lit8 v1, v5, 0x1

    .line 568
    .line 569
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eq v1, v4, :cond_248

    .line 574
    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-static {v7, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-nez v0, :cond_24e

    .line 584
    .line 585
    :cond_248
    new-instance v0, Lcom/google/protobuf/u1;

    .line 586
    .line 587
    invoke-direct {v0, v5, v3}, Lcom/google/protobuf/u1;-><init>(II)V

    .line 588
    .line 589
    .line 590
    throw v0

    .line 591
    :cond_24e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 592
    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    const-string v3, "Failed writing "

    .line 596
    .line 597
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v3, " at index "

    .line 604
    .line 605
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_26a
    move v0, v2

    .line 620
    :goto_26b
    return v0

    .line 621
    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_16e
    .end packed-switch
.end method

.method public final e([BII)I
    .registers 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget v4, v2, Lcom/google/protobuf/t1;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_194

    .line 12
    .line 13
    .line 14
    or-int v4, v1, v3

    .line 15
    .line 16
    array-length v5, v0

    .line 17
    sub-int/2addr v5, v3

    .line 18
    or-int/2addr v4, v5

    .line 19
    if-ltz v4, :cond_fc

    .line 20
    .line 21
    int-to-long v4, v1

    .line 22
    int-to-long v6, v3

    .line 23
    sub-long/2addr v6, v4

    .line 24
    long-to-int v1, v6

    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    const-wide/16 v7, 0x1

    .line 28
    .line 29
    if-ge v1, v3, :cond_20

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    goto :goto_65

    .line 33
    :cond_20
    long-to-int v3, v4

    .line 34
    and-int/lit8 v3, v3, 0x7

    .line 35
    .line 36
    rsub-int/lit8 v3, v3, 0x8

    .line 37
    .line 38
    move-wide v10, v4

    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_27
    if-ge v9, v3, :cond_36

    .line 41
    .line 42
    add-long v12, v10, v7

    .line 43
    .line 44
    invoke-static {v0, v10, v11}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-gez v10, :cond_32

    .line 49
    .line 50
    goto :goto_65

    .line 51
    :cond_32
    add-int/lit8 v9, v9, 0x1

    .line 52
    .line 53
    move-wide v10, v12

    .line 54
    goto :goto_27

    .line 55
    :cond_36
    :goto_36
    add-int/lit8 v3, v9, 0x8

    .line 56
    .line 57
    if-gt v3, v1, :cond_55

    .line 58
    .line 59
    sget-wide v12, Lcom/google/protobuf/s1;->f:J

    .line 60
    .line 61
    add-long/2addr v12, v10

    .line 62
    sget-object v14, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 63
    .line 64
    invoke-virtual {v14, v0, v12, v13}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v12, v14

    .line 74
    const-wide/16 v14, 0x0

    .line 75
    .line 76
    cmp-long v12, v12, v14

    .line 77
    .line 78
    if-eqz v12, :cond_50

    .line 79
    .line 80
    goto :goto_55

    .line 81
    :cond_50
    const-wide/16 v12, 0x8

    .line 82
    .line 83
    add-long/2addr v10, v12

    .line 84
    move v9, v3

    .line 85
    goto :goto_36

    .line 86
    :cond_55
    :goto_55
    if-ge v9, v1, :cond_64

    .line 87
    .line 88
    add-long v12, v10, v7

    .line 89
    .line 90
    invoke-static {v0, v10, v11}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-gez v3, :cond_60

    .line 95
    .line 96
    goto :goto_65

    .line 97
    :cond_60
    add-int/lit8 v9, v9, 0x1

    .line 98
    .line 99
    move-wide v10, v12

    .line 100
    goto :goto_55

    .line 101
    :cond_64
    move v9, v1

    .line 102
    :goto_65
    sub-int/2addr v1, v9

    .line 103
    int-to-long v9, v9

    .line 104
    add-long/2addr v4, v9

    .line 105
    :goto_68
    const/4 v3, 0x0

    .line 106
    :goto_69
    if-lez v1, :cond_78

    .line 107
    .line 108
    add-long v9, v4, v7

    .line 109
    .line 110
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ltz v3, :cond_77

    .line 115
    .line 116
    add-int/lit8 v1, v1, -0x1

    .line 117
    .line 118
    move-wide v4, v9

    .line 119
    goto :goto_69

    .line 120
    :cond_77
    move-wide v4, v9

    .line 121
    :cond_78
    if-nez v1, :cond_7d

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    goto/16 :goto_fb

    .line 125
    .line 126
    :cond_7d
    add-int/lit8 v9, v1, -0x1

    .line 127
    .line 128
    const/16 v10, -0x20

    .line 129
    .line 130
    const/16 v11, -0x41

    .line 131
    .line 132
    if-ge v3, v10, :cond_9d

    .line 133
    .line 134
    if-nez v9, :cond_8a

    .line 135
    .line 136
    move v6, v3

    .line 137
    goto/16 :goto_fb

    .line 138
    .line 139
    :cond_8a
    add-int/lit8 v1, v1, -0x2

    .line 140
    .line 141
    const/16 v9, -0x3e

    .line 142
    .line 143
    if-lt v3, v9, :cond_fa

    .line 144
    .line 145
    add-long v9, v4, v7

    .line 146
    .line 147
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-le v3, v11, :cond_9a

    .line 152
    .line 153
    goto/16 :goto_fa

    .line 154
    .line 155
    :cond_9a
    move-wide v15, v7

    .line 156
    move-wide v4, v9

    .line 157
    goto :goto_f7

    .line 158
    :cond_9d
    const/16 v12, -0x10

    .line 159
    .line 160
    const-wide/16 v13, 0x2

    .line 161
    .line 162
    if-ge v3, v12, :cond_ca

    .line 163
    .line 164
    const/4 v12, 0x2

    .line 165
    if-ge v9, v12, :cond_ab

    .line 166
    .line 167
    invoke-static {v3, v9, v4, v5, v0}, Lcom/google/protobuf/t1;->f(IIJ[B)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    goto :goto_fb

    .line 172
    :cond_ab
    add-int/lit8 v1, v1, -0x3

    .line 173
    .line 174
    move-wide v15, v7

    .line 175
    add-long v6, v4, v15

    .line 176
    .line 177
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-gt v8, v11, :cond_fa

    .line 182
    .line 183
    const/16 v9, -0x60

    .line 184
    .line 185
    if-ne v3, v10, :cond_bc

    .line 186
    .line 187
    if-lt v8, v9, :cond_fa

    .line 188
    .line 189
    :cond_bc
    const/16 v10, -0x13

    .line 190
    .line 191
    if-ne v3, v10, :cond_c2

    .line 192
    .line 193
    if-ge v8, v9, :cond_fa

    .line 194
    .line 195
    :cond_c2
    add-long/2addr v4, v13

    .line 196
    invoke-static {v0, v6, v7}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-le v3, v11, :cond_f7

    .line 201
    .line 202
    goto :goto_fa

    .line 203
    :cond_ca
    move-wide v15, v7

    .line 204
    const/4 v6, 0x3

    .line 205
    if-ge v9, v6, :cond_d3

    .line 206
    .line 207
    invoke-static {v3, v9, v4, v5, v0}, Lcom/google/protobuf/t1;->f(IIJ[B)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    goto :goto_fb

    .line 212
    :cond_d3
    add-int/lit8 v1, v1, -0x4

    .line 213
    .line 214
    add-long v7, v4, v15

    .line 215
    .line 216
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-gt v6, v11, :cond_fa

    .line 221
    .line 222
    shl-int/lit8 v3, v3, 0x1c

    .line 223
    .line 224
    add-int/lit8 v6, v6, 0x70

    .line 225
    .line 226
    add-int/2addr v6, v3

    .line 227
    shr-int/lit8 v3, v6, 0x1e

    .line 228
    .line 229
    if-nez v3, :cond_fa

    .line 230
    .line 231
    add-long/2addr v13, v4

    .line 232
    invoke-static {v0, v7, v8}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-gt v3, v11, :cond_fa

    .line 237
    .line 238
    const-wide/16 v6, 0x3

    .line 239
    .line 240
    add-long/2addr v4, v6

    .line 241
    invoke-static {v0, v13, v14}, Lcom/google/protobuf/s1;->g([BJ)B

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-le v3, v11, :cond_f7

    .line 246
    .line 247
    goto :goto_fa

    .line 248
    :cond_f7
    :goto_f7
    move-wide v7, v15

    .line 249
    goto/16 :goto_68

    .line 250
    .line 251
    :cond_fa
    :goto_fa
    const/4 v6, -0x1

    .line 252
    :goto_fb
    return v6

    .line 253
    :cond_fc
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 254
    .line 255
    array-length v0, v0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v1, "Array length=%d, index=%d, limit=%d"

    .line 273
    .line 274
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {v4, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v4

    .line 282
    :goto_119
    :pswitch_119
    if-ge v1, v3, :cond_122

    .line 283
    .line 284
    aget-byte v4, v0, v1

    .line 285
    .line 286
    if-ltz v4, :cond_122

    .line 287
    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 289
    .line 290
    goto :goto_119

    .line 291
    :cond_122
    if-lt v1, v3, :cond_125

    .line 292
    .line 293
    goto :goto_127

    .line 294
    :cond_125
    :goto_125
    if-lt v1, v3, :cond_12a

    .line 295
    .line 296
    :goto_127
    const/4 v0, 0x0

    .line 297
    goto/16 :goto_190

    .line 298
    .line 299
    :cond_12a
    add-int/lit8 v4, v1, 0x1

    .line 300
    .line 301
    aget-byte v5, v0, v1

    .line 302
    .line 303
    if-gez v5, :cond_191

    .line 304
    .line 305
    const/16 v6, -0x20

    .line 306
    .line 307
    const/16 v7, -0x41

    .line 308
    .line 309
    if-ge v5, v6, :cond_145

    .line 310
    .line 311
    if-lt v4, v3, :cond_13a

    .line 312
    .line 313
    move v0, v5

    .line 314
    goto :goto_190

    .line 315
    :cond_13a
    const/16 v6, -0x3e

    .line 316
    .line 317
    if-lt v5, v6, :cond_18f

    .line 318
    .line 319
    add-int/lit8 v1, v1, 0x2

    .line 320
    .line 321
    aget-byte v4, v0, v4

    .line 322
    .line 323
    if-le v4, v7, :cond_125

    .line 324
    .line 325
    goto :goto_18f

    .line 326
    :cond_145
    const/16 v8, -0x10

    .line 327
    .line 328
    if-ge v5, v8, :cond_16b

    .line 329
    .line 330
    add-int/lit8 v8, v3, -0x1

    .line 331
    .line 332
    if-lt v4, v8, :cond_152

    .line 333
    .line 334
    invoke-static {v0, v4, v3}, Lcom/google/protobuf/v1;->a([BII)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    goto :goto_190

    .line 339
    :cond_152
    add-int/lit8 v8, v1, 0x2

    .line 340
    .line 341
    aget-byte v4, v0, v4

    .line 342
    .line 343
    if-gt v4, v7, :cond_18f

    .line 344
    .line 345
    const/16 v9, -0x60

    .line 346
    .line 347
    if-ne v5, v6, :cond_15e

    .line 348
    .line 349
    if-lt v4, v9, :cond_18f

    .line 350
    .line 351
    :cond_15e
    const/16 v6, -0x13

    .line 352
    .line 353
    if-ne v5, v6, :cond_164

    .line 354
    .line 355
    if-ge v4, v9, :cond_18f

    .line 356
    .line 357
    :cond_164
    add-int/lit8 v1, v1, 0x3

    .line 358
    .line 359
    aget-byte v4, v0, v8

    .line 360
    .line 361
    if-le v4, v7, :cond_125

    .line 362
    .line 363
    goto :goto_18f

    .line 364
    :cond_16b
    add-int/lit8 v6, v3, -0x2

    .line 365
    .line 366
    if-lt v4, v6, :cond_174

    .line 367
    .line 368
    invoke-static {v0, v4, v3}, Lcom/google/protobuf/v1;->a([BII)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    goto :goto_190

    .line 373
    :cond_174
    add-int/lit8 v6, v1, 0x2

    .line 374
    .line 375
    aget-byte v4, v0, v4

    .line 376
    .line 377
    if-gt v4, v7, :cond_18f

    .line 378
    .line 379
    shl-int/lit8 v5, v5, 0x1c

    .line 380
    .line 381
    add-int/lit8 v4, v4, 0x70

    .line 382
    .line 383
    add-int/2addr v4, v5

    .line 384
    shr-int/lit8 v4, v4, 0x1e

    .line 385
    .line 386
    if-nez v4, :cond_18f

    .line 387
    .line 388
    add-int/lit8 v4, v1, 0x3

    .line 389
    .line 390
    aget-byte v5, v0, v6

    .line 391
    .line 392
    if-gt v5, v7, :cond_18f

    .line 393
    .line 394
    add-int/lit8 v1, v1, 0x4

    .line 395
    .line 396
    aget-byte v4, v0, v4

    .line 397
    .line 398
    if-le v4, v7, :cond_125

    .line 399
    .line 400
    :cond_18f
    :goto_18f
    const/4 v0, -0x1

    .line 401
    :goto_190
    return v0

    .line 402
    :cond_191
    move v1, v4

    .line 403
    goto :goto_125

    .line 404
    nop

    .line 405
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_119
    .end packed-switch
.end method
