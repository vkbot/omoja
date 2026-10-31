.class public Lcom/sun/jna/Pointer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Pointer$Opaque;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/sun/jna/Pointer;


# instance fields
.field protected peer:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 5
    .line 6
    return-void
.end method

.method public static final createConstant(I)Lcom/sun/jna/Pointer;
    .registers 6

    .line 1
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    .line 2
    .line 3
    int-to-long v1, p0

    .line 4
    const-wide v3, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v1, v3

    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-direct {v0, v1, v2, p0}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final createConstant(J)Lcom/sun/jna/Pointer;
    .registers 4

    .line 15
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    return-object v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;)J
    .registers 3

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_5
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 7
    .line 8
    return-wide v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;J)V
    .registers 3

    .line 9
    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    return-void
.end method

.method private readArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne p4, v0, :cond_12

    .line 8
    .line 9
    move-object v3, p3

    .line 10
    check-cast v3, [B

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move-wide v1, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    move-wide v1, p1

    .line 20
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    if-ne p4, p1, :cond_20

    .line 23
    .line 24
    move-object v3, p3

    .line 25
    check-cast v3, [S

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v0, p0

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    if-ne p4, p1, :cond_2d

    .line 36
    .line 37
    move-object v3, p3

    .line 38
    check-cast v3, [C

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v0, p0

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-ne p4, p1, :cond_3a

    .line 49
    .line 50
    move-object v3, p3

    .line 51
    check-cast v3, [I

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    move-object v0, p0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    if-ne p4, p1, :cond_47

    .line 62
    .line 63
    move-object v3, p3

    .line 64
    check-cast v3, [J

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_47
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-ne p4, p1, :cond_54

    .line 75
    .line 76
    move-object v3, p3

    .line 77
    check-cast v3, [F

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_54
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    if-ne p4, p1, :cond_61

    .line 88
    .line 89
    move-object v3, p3

    .line 90
    check-cast v3, [D

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    const-class p1, Lcom/sun/jna/Pointer;

    .line 99
    .line 100
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_72

    .line 105
    .line 106
    move-object v3, p3

    .line 107
    check-cast v3, [Lcom/sun/jna/Pointer;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_72
    move-object v0, p0

    .line 116
    const-class p1, Lcom/sun/jna/Structure;

    .line 117
    .line 118
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/4 p2, 0x0

    .line 123
    if-eqz p1, :cond_da

    .line 124
    .line 125
    check-cast p3, [Lcom/sun/jna/Structure;

    .line 126
    .line 127
    const-class p1, Lcom/sun/jna/Structure$ByReference;

    .line 128
    .line 129
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_9b

    .line 134
    .line 135
    array-length p1, p3

    .line 136
    invoke-virtual {p0, v1, v2, p1}, Lcom/sun/jna/Pointer;->getPointerArray(JI)[Lcom/sun/jna/Pointer;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_8b
    array-length v1, p3

    .line 141
    if-ge p2, v1, :cond_116

    .line 142
    .line 143
    aget-object v1, p3, p2

    .line 144
    .line 145
    aget-object v2, p1, p2

    .line 146
    .line 147
    invoke-static {p4, v1, v2}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    aput-object v1, p3, p2

    .line 152
    .line 153
    add-int/lit8 p2, p2, 0x1

    .line 154
    .line 155
    goto :goto_8b

    .line 156
    :cond_9b
    aget-object p1, p3, p2

    .line 157
    .line 158
    const/4 v3, 0x1

    .line 159
    if-nez p1, :cond_ae

    .line 160
    .line 161
    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p4, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    .line 170
    .line 171
    .line 172
    aput-object p1, p3, p2

    .line 173
    .line 174
    goto :goto_b5

    .line 175
    :cond_ae
    long-to-int p2, v1

    .line 176
    invoke-virtual {p1, p0, p2, v3}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->read()V

    .line 180
    .line 181
    .line 182
    :goto_b5
    array-length p2, p3

    .line 183
    invoke-virtual {p1, p2}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    move p2, v3

    .line 188
    :goto_bb
    array-length p4, p3

    .line 189
    if-ge p2, p4, :cond_116

    .line 190
    .line 191
    aget-object p4, p3, p2

    .line 192
    .line 193
    if-nez p4, :cond_c7

    .line 194
    .line 195
    aget-object p4, p1, p2

    .line 196
    .line 197
    aput-object p4, p3, p2

    .line 198
    .line 199
    goto :goto_d7

    .line 200
    :cond_c7
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->size()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    mul-int/2addr v4, p2

    .line 205
    int-to-long v4, v4

    .line 206
    add-long/2addr v4, v1

    .line 207
    long-to-int v4, v4

    .line 208
    invoke-virtual {p4, p0, v4, v3}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 209
    .line 210
    .line 211
    aget-object p4, p3, p2

    .line 212
    .line 213
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->read()V

    .line 214
    .line 215
    .line 216
    :goto_d7
    add-int/lit8 p2, p2, 0x1

    .line 217
    .line 218
    goto :goto_bb

    .line 219
    :cond_da
    const-class p1, Lcom/sun/jna/NativeMapped;

    .line 220
    .line 221
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_117

    .line 226
    .line 227
    move-object p1, p3

    .line 228
    check-cast p1, [Lcom/sun/jna/NativeMapped;

    .line 229
    .line 230
    check-cast p1, [Lcom/sun/jna/NativeMapped;

    .line 231
    .line 232
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-static {v4, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    array-length v4, p1

    .line 245
    div-int/2addr p3, v4

    .line 246
    :goto_f5
    array-length v4, p1

    .line 247
    if-ge p2, v4, :cond_116

    .line 248
    .line 249
    mul-int v4, p3, p2

    .line 250
    .line 251
    int-to-long v4, v4

    .line 252
    add-long/2addr v4, v1

    .line 253
    invoke-virtual {v3}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    aget-object v7, p1, p2

    .line 258
    .line 259
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    new-instance v5, Lcom/sun/jna/FromNativeContext;

    .line 264
    .line 265
    invoke-direct {v5, p4}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Lcom/sun/jna/NativeMapped;

    .line 273
    .line 274
    aput-object v4, p1, p2

    .line 275
    .line 276
    add-int/lit8 p2, p2, 0x1

    .line 277
    .line 278
    goto :goto_f5

    .line 279
    :cond_116
    return-void

    .line 280
    :cond_117
    const-string p1, "Reading array of "

    .line 281
    .line 282
    const-string p2, " from memory not supported"

    .line 283
    .line 284
    invoke-static {p4, p1, p2}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method private writeArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p4, v2, :cond_f

    .line 4
    .line 5
    move-object v3, p3

    .line 6
    check-cast v3, [B

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    array-length v5, v3

    .line 10
    move-object v0, p0

    .line 11
    move-wide v1, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-ne p4, v2, :cond_1e

    .line 19
    .line 20
    move-object v3, p3

    .line 21
    check-cast v3, [S

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    array-length v5, v3

    .line 25
    move-object v0, p0

    .line 26
    move-wide v1, p1

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[SII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne p4, v2, :cond_2d

    .line 34
    .line 35
    move-object v3, p3

    .line 36
    check-cast v3, [C

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    array-length v5, v3

    .line 40
    move-object v0, p0

    .line 41
    move-wide v1, p1

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[CII)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-ne p4, v2, :cond_3c

    .line 49
    .line 50
    move-object v3, p3

    .line 51
    check-cast v3, [I

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    array-length v5, v3

    .line 55
    move-object v0, p0

    .line 56
    move-wide v1, p1

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[III)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    if-ne p4, v2, :cond_4b

    .line 64
    .line 65
    move-object v3, p3

    .line 66
    check-cast v3, [J

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    array-length v5, v3

    .line 70
    move-object v0, p0

    .line 71
    move-wide v1, p1

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[JII)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne p4, v2, :cond_5a

    .line 79
    .line 80
    move-object v3, p3

    .line 81
    check-cast v3, [F

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    array-length v5, v3

    .line 85
    move-object v0, p0

    .line 86
    move-wide v1, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[FII)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    if-ne p4, v2, :cond_69

    .line 94
    .line 95
    move-object v3, p3

    .line 96
    check-cast v3, [D

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    array-length v5, v3

    .line 100
    move-object v0, p0

    .line 101
    move-wide v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[DII)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_69
    const-class v2, Lcom/sun/jna/Pointer;

    .line 107
    .line 108
    invoke-virtual {v2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7c

    .line 113
    .line 114
    move-object v3, p3

    .line 115
    check-cast v3, [Lcom/sun/jna/Pointer;

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    array-length v5, v3

    .line 119
    move-object v0, p0

    .line 120
    move-wide v1, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_7c
    const-class v2, Lcom/sun/jna/Structure;

    .line 126
    .line 127
    invoke-virtual {v2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/4 v3, 0x0

    .line 132
    if-eqz v2, :cond_f1

    .line 133
    .line 134
    move-object v0, p3

    .line 135
    check-cast v0, [Lcom/sun/jna/Structure;

    .line 136
    .line 137
    const-class v2, Lcom/sun/jna/Structure$ByReference;

    .line 138
    .line 139
    invoke-virtual {v2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_b4

    .line 144
    .line 145
    array-length v5, v0

    .line 146
    move v2, v3

    .line 147
    new-array v3, v5, [Lcom/sun/jna/Pointer;

    .line 148
    .line 149
    :goto_94
    array-length v1, v0

    .line 150
    if-ge v2, v1, :cond_ad

    .line 151
    .line 152
    aget-object v1, v0, v2

    .line 153
    .line 154
    if-nez v1, :cond_9f

    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    aput-object v1, v3, v2

    .line 158
    .line 159
    goto :goto_aa

    .line 160
    :cond_9f
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    aput-object v1, v3, v2

    .line 165
    .line 166
    aget-object v1, v0, v2

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->write()V

    .line 169
    .line 170
    .line 171
    :goto_aa
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_94

    .line 174
    :cond_ad
    const/4 v4, 0x0

    .line 175
    move-object v0, p0

    .line 176
    move-wide v1, p1

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_b4
    move v2, v3

    .line 182
    aget-object v6, v0, v2

    .line 183
    .line 184
    const/4 v7, 0x1

    .line 185
    if-nez v6, :cond_c5

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-static {p4, v6}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    aput-object v6, v0, v2

    .line 196
    .line 197
    goto :goto_c9

    .line 198
    :cond_c5
    long-to-int v1, p1

    .line 199
    invoke-virtual {v6, p0, v1, v7}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 200
    .line 201
    .line 202
    :goto_c9
    invoke-virtual {v6}, Lcom/sun/jna/Structure;->write()V

    .line 203
    .line 204
    .line 205
    array-length v1, v0

    .line 206
    invoke-virtual {v6, v1}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move v2, v7

    .line 211
    :goto_d2
    array-length v6, v0

    .line 212
    if-ge v2, v6, :cond_129

    .line 213
    .line 214
    aget-object v6, v0, v2

    .line 215
    .line 216
    if-nez v6, :cond_de

    .line 217
    .line 218
    aget-object v6, v1, v2

    .line 219
    .line 220
    aput-object v6, v0, v2

    .line 221
    .line 222
    goto :goto_e9

    .line 223
    :cond_de
    invoke-virtual {v6}, Lcom/sun/jna/Structure;->size()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    mul-int/2addr v8, v2

    .line 228
    int-to-long v8, v8

    .line 229
    add-long/2addr v8, p1

    .line 230
    long-to-int v8, v8

    .line 231
    invoke-virtual {v6, p0, v8, v7}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 232
    .line 233
    .line 234
    :goto_e9
    aget-object v6, v0, v2

    .line 235
    .line 236
    invoke-virtual {v6}, Lcom/sun/jna/Structure;->write()V

    .line 237
    .line 238
    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    .line 241
    goto :goto_d2

    .line 242
    :cond_f1
    move v2, v3

    .line 243
    const-class v6, Lcom/sun/jna/NativeMapped;

    .line 244
    .line 245
    invoke-virtual {v6, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_12a

    .line 250
    .line 251
    move-object v6, p3

    .line 252
    check-cast v6, [Lcom/sun/jna/NativeMapped;

    .line 253
    .line 254
    check-cast v6, [Lcom/sun/jna/NativeMapped;

    .line 255
    .line 256
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-static {v8, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    array-length v8, v6

    .line 273
    div-int/2addr v0, v8

    .line 274
    :goto_111
    array-length v8, v6

    .line 275
    if-ge v2, v8, :cond_129

    .line 276
    .line 277
    aget-object v8, v6, v2

    .line 278
    .line 279
    new-instance v9, Lcom/sun/jna/ToNativeContext;

    .line 280
    .line 281
    invoke-direct {v9}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v8, v9}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    mul-int v9, v2, v0

    .line 289
    .line 290
    int-to-long v9, v9

    .line 291
    add-long/2addr v9, p1

    .line 292
    invoke-virtual {p0, v9, v10, v8, v7}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v2, v2, 0x1

    .line 296
    .line 297
    goto :goto_111

    .line 298
    :cond_129
    return-void

    .line 299
    :cond_12a
    const-string v0, "Writing array of "

    .line 300
    .line 301
    const-string v2, " to memory not supported"

    .line 302
    .line 303
    invoke-static {p4, v0, v2}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method


# virtual methods
.method public clear(J)V
    .registers 9

    .line 1
    const-wide/16 v1, 0x0

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v3, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->setMemory(JJB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dump(JI)Ljava/lang/String;
    .registers 11

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    mul-int/lit8 v1, p3, 0x2

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0xd

    .line 6
    .line 7
    div-int/lit8 v2, p3, 0x4

    .line 8
    .line 9
    mul-int/lit8 v2, v2, 0x4

    .line 10
    .line 11
    add-int/2addr v2, v1

    .line 12
    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/io/PrintWriter;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "memory dump"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_19
    const-string v3, "]"

    .line 27
    .line 28
    if-ge v2, p3, :cond_4d

    .line 29
    .line 30
    int-to-long v4, v2

    .line 31
    add-long/2addr v4, p1

    .line 32
    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getByte(J)B

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    rem-int/lit8 v5, v2, 0x4

    .line 37
    .line 38
    if-nez v5, :cond_2c

    .line 39
    .line 40
    const-string v6, "["

    .line 41
    .line 42
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    if-ltz v4, :cond_37

    .line 46
    .line 47
    const/16 v6, 0x10

    .line 48
    .line 49
    if-ge v4, v6, :cond_37

    .line 50
    .line 51
    const-string v6, "0"

    .line 52
    .line 53
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    and-int/lit16 v4, v4, 0xff

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    if-ne v5, v4, :cond_4a

    .line 67
    .line 68
    add-int/lit8 v4, p3, -0x1

    .line 69
    .line 70
    if-ge v2, v4, :cond_4a

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_19

    .line 78
    :cond_4d
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    add-int/lit8 p2, p2, -0x2

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/16 p2, 0x5d

    .line 97
    .line 98
    if-eq p1, p2, :cond_66

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_66
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Lcom/sun/jna/Pointer;

    .line 10
    .line 11
    if-eqz v2, :cond_17

    .line 12
    .line 13
    check-cast p1, Lcom/sun/jna/Pointer;

    .line 14
    .line 15
    iget-wide v2, p1, Lcom/sun/jna/Pointer;->peer:J

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 18
    .line 19
    cmp-long p1, v2, v4

    .line 20
    .line 21
    if-nez p1, :cond_17

    .line 22
    .line 23
    return v0

    .line 24
    :cond_17
    return v1
.end method

.method public getByte(J)B
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getByte(Lcom/sun/jna/Pointer;JJ)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getByteArray(JI)[B
    .registers 10

    .line 1
    new-array v3, p3, [B

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getByteBuffer(JJ)Ljava/nio/ByteBuffer;
    .registers 12

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move-wide v5, p3

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getChar(J)C
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getChar(Lcom/sun/jna/Pointer;JJ)C

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getCharArray(JI)[C
    .registers 10

    .line 1
    new-array v3, p3, [C

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getDouble(J)D
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getDouble(Lcom/sun/jna/Pointer;JJ)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getDoubleArray(JI)[D
    .registers 10

    .line 1
    new-array v3, p3, [D

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getFloat(J)F
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getFloat(Lcom/sun/jna/Pointer;JJ)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getFloatArray(JI)[F
    .registers 10

    .line 1
    new-array v3, p3, [F

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getInt(J)I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getInt(Lcom/sun/jna/Pointer;JJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIntArray(JI)[I
    .registers 10

    .line 1
    new-array v3, p3, [I

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getLong(J)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getLong(Lcom/sun/jna/Pointer;JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getLongArray(JI)[J
    .registers 10

    .line 1
    new-array v3, p3, [J

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getNativeLong(J)Lcom/sun/jna/NativeLong;
    .registers 6

    .line 1
    new-instance v0, Lcom/sun/jna/NativeLong;

    .line 2
    .line 3
    sget v1, Lcom/sun/jna/NativeLong;->SIZE:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-ne v1, v2, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-long p1, p1

    .line 19
    :goto_12
    invoke-direct {v0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public getPointer(J)Lcom/sun/jna/Pointer;
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getPointerArray(J)[Lcom/sun/jna/Pointer;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_b
    if-eqz v1, :cond_1a

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 18
    .line 19
    add-int/2addr v3, v1

    .line 20
    int-to-long v4, v3

    .line 21
    add-long/2addr v4, p1

    .line 22
    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_b

    .line 27
    :cond_1a
    new-array p1, v2, [Lcom/sun/jna/Pointer;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [Lcom/sun/jna/Pointer;

    .line 34
    .line 35
    return-object p1
.end method

.method public getPointerArray(JI)[Lcom/sun/jna/Pointer;
    .registers 10

    .line 36
    new-array v3, p3, [Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    return-object v3
.end method

.method public getShort(J)S
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getShort(Lcom/sun/jna/Pointer;JJ)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getShortArray(JI)[S
    .registers 10

    .line 1
    new-array v3, p3, [S

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-wide v1, p1

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    .line 8
    .line 9
    .line 10
    return-object v3
.end method

.method public getString(J)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getString(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(J)[Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    .line 103
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JI)[Ljava/lang/String;
    .registers 5

    .line 102
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JILjava/lang/String;)[Ljava/lang/String;
    .registers 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const-string v2, "--WIDE-STRING--"

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq p3, v1, :cond_3c

    .line 13
    .line 14
    int-to-long v6, v5

    .line 15
    add-long/2addr v6, p1

    .line 16
    invoke-virtual {p0, v6, v7}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move v6, v5

    .line 21
    move v7, v6

    .line 22
    :goto_15
    add-int/lit8 v8, v6, 0x1

    .line 23
    .line 24
    if-ge v6, p3, :cond_5b

    .line 25
    .line 26
    if-nez v1, :cond_1d

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_28

    .line 35
    .line 36
    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    invoke-virtual {v1, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    :goto_2c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    if-ge v8, p3, :cond_3a

    .line 49
    .line 50
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 51
    .line 52
    add-int/2addr v7, v1

    .line 53
    int-to-long v9, v7

    .line 54
    add-long/2addr v9, p1

    .line 55
    invoke-virtual {p0, v9, v10}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3a
    move v6, v8

    .line 60
    goto :goto_15

    .line 61
    :cond_3c
    move p3, v5

    .line 62
    :goto_3d
    int-to-long v6, p3

    .line 63
    add-long/2addr v6, p1

    .line 64
    invoke-virtual {p0, v6, v7}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_5b

    .line 69
    .line 70
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_50

    .line 75
    .line 76
    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    invoke-virtual {v1, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 89
    .line 90
    add-int/2addr p3, v1

    .line 91
    goto :goto_3d

    .line 92
    :cond_5b
    new-array p1, v5, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, [Ljava/lang/String;

    .line 99
    .line 100
    return-object p1
.end method

.method public getStringArray(JLjava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/Structure;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_24

    .line 9
    .line 10
    check-cast p4, Lcom/sun/jna/Structure;

    .line 11
    .line 12
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1c

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p3, p4, p1}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1c
    long-to-int p1, p1

    .line 30
    invoke-virtual {p4, p0, p1, v1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->read()V

    .line 34
    .line 35
    .line 36
    return-object p4

    .line 37
    :cond_24
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    if-eq p3, v0, :cond_1a7

    .line 40
    .line 41
    const-class v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    if-ne p3, v0, :cond_2e

    .line 44
    .line 45
    goto/16 :goto_1a7

    .line 46
    .line 47
    :cond_2e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    if-eq p3, v0, :cond_19e

    .line 50
    .line 51
    const-class v0, Ljava/lang/Byte;

    .line 52
    .line 53
    if-ne p3, v0, :cond_38

    .line 54
    .line 55
    goto/16 :goto_19e

    .line 56
    .line 57
    :cond_38
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    if-eq p3, v0, :cond_195

    .line 60
    .line 61
    const-class v0, Ljava/lang/Short;

    .line 62
    .line 63
    if-ne p3, v0, :cond_42

    .line 64
    .line 65
    goto/16 :goto_195

    .line 66
    .line 67
    :cond_42
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    if-eq p3, v0, :cond_18c

    .line 70
    .line 71
    const-class v0, Ljava/lang/Character;

    .line 72
    .line 73
    if-ne p3, v0, :cond_4c

    .line 74
    .line 75
    goto/16 :goto_18c

    .line 76
    .line 77
    :cond_4c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    if-eq p3, v0, :cond_183

    .line 80
    .line 81
    const-class v0, Ljava/lang/Integer;

    .line 82
    .line 83
    if-ne p3, v0, :cond_56

    .line 84
    .line 85
    goto/16 :goto_183

    .line 86
    .line 87
    :cond_56
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    if-eq p3, v0, :cond_17a

    .line 90
    .line 91
    const-class v0, Ljava/lang/Long;

    .line 92
    .line 93
    if-ne p3, v0, :cond_60

    .line 94
    .line 95
    goto/16 :goto_17a

    .line 96
    .line 97
    :cond_60
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    if-eq p3, v0, :cond_171

    .line 100
    .line 101
    const-class v0, Ljava/lang/Float;

    .line 102
    .line 103
    if-ne p3, v0, :cond_6a

    .line 104
    .line 105
    goto/16 :goto_171

    .line 106
    .line 107
    :cond_6a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    if-eq p3, v0, :cond_168

    .line 110
    .line 111
    const-class v0, Ljava/lang/Double;

    .line 112
    .line 113
    if-ne p3, v0, :cond_74

    .line 114
    .line 115
    goto/16 :goto_168

    .line 116
    .line 117
    :cond_74
    const-class v0, Lcom/sun/jna/Pointer;

    .line 118
    .line 119
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x0

    .line 124
    if-eqz v0, :cond_98

    .line 125
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_97

    .line 131
    .line 132
    instance-of p2, p4, Lcom/sun/jna/Pointer;

    .line 133
    .line 134
    if-eqz p2, :cond_8a

    .line 135
    .line 136
    move-object v1, p4

    .line 137
    check-cast v1, Lcom/sun/jna/Pointer;

    .line 138
    .line 139
    :cond_8a
    if-eqz v1, :cond_96

    .line 140
    .line 141
    iget-wide p2, p1, Lcom/sun/jna/Pointer;->peer:J

    .line 142
    .line 143
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 144
    .line 145
    cmp-long p2, p2, v2

    .line 146
    .line 147
    if-eqz p2, :cond_95

    .line 148
    .line 149
    goto :goto_96

    .line 150
    :cond_95
    return-object v1

    .line 151
    :cond_96
    :goto_96
    return-object p1

    .line 152
    :cond_97
    return-object v1

    .line 153
    :cond_98
    const-class v0, Ljava/lang/String;

    .line 154
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    if-ne p3, v0, :cond_aa

    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_a9

    .line 164
    .line 165
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_a9
    return-object v1

    .line 171
    :cond_aa
    const-class v0, Lcom/sun/jna/WString;

    .line 172
    .line 173
    if-ne p3, v0, :cond_bf

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_be

    .line 180
    .line 181
    new-instance p2, Lcom/sun/jna/WString;

    .line 182
    .line 183
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p2, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object p2

    .line 191
    :cond_be
    return-object v1

    .line 192
    :cond_bf
    const-class v0, Lcom/sun/jna/Callback;

    .line 193
    .line 194
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_e0

    .line 199
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-nez p1, :cond_ce

    .line 205
    .line 206
    return-object v1

    .line 207
    :cond_ce
    check-cast p4, Lcom/sun/jna/Callback;

    .line 208
    .line 209
    invoke-static {p4}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p1, p2}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-nez p2, :cond_df

    .line 218
    .line 219
    invoke-static {p3, p1}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    return-object p1

    .line 224
    :cond_df
    return-object p4

    .line 225
    :cond_e0
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 226
    .line 227
    if-eqz v0, :cond_10d

    .line 228
    .line 229
    const-class v0, Ljava/nio/Buffer;

    .line 230
    .line 231
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_10d

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-nez p1, :cond_f3

    .line 242
    .line 243
    return-object v1

    .line 244
    :cond_f3
    if-nez p4, :cond_f6

    .line 245
    .line 246
    goto :goto_fd

    .line 247
    :cond_f6
    move-object p2, p4

    .line 248
    check-cast p2, Ljava/nio/Buffer;

    .line 249
    .line 250
    invoke-static {p2}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    :goto_fd
    if-eqz v1, :cond_106

    .line 255
    .line 256
    invoke-virtual {v1, p1}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_106

    .line 261
    .line 262
    return-object p4

    .line 263
    :cond_106
    const-string p1, "Can\'t autogenerate a direct buffer on memory read"

    .line 264
    .line 265
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const/4 p1, 0x0

    .line 269
    return-object p1

    .line 270
    :cond_10d
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 271
    .line 272
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_148

    .line 277
    .line 278
    check-cast p4, Lcom/sun/jna/NativeMapped;

    .line 279
    .line 280
    if-eqz p4, :cond_132

    .line 281
    .line 282
    invoke-interface {p4}, Lcom/sun/jna/NativeMapped;->nativeType()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    .line 291
    .line 292
    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 293
    .line 294
    .line 295
    invoke-interface {p4, p1, p2}, Lcom/sun/jna/NativeMapped;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_131

    .line 304
    .line 305
    return-object p4

    .line 306
    :cond_131
    return-object p1

    .line 307
    :cond_132
    invoke-static {p3}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 308
    .line 309
    .line 310
    move-result-object p4

    .line 311
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    .line 320
    .line 321
    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p4, p1, p2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    return-object p1

    .line 329
    :cond_148
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_15f

    .line 334
    .line 335
    if-eqz p4, :cond_158

    .line 336
    .line 337
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sun/jna/Pointer;->readArray(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 342
    .line 343
    .line 344
    return-object p4

    .line 345
    :cond_158
    const-string p1, "Need an initialized array"

    .line 346
    .line 347
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const/4 p1, 0x0

    .line 351
    return-object p1

    .line 352
    :cond_15f
    const-string p1, "Reading \""

    .line 353
    .line 354
    const-string p2, "\" from memory is not supported"

    .line 355
    .line 356
    invoke-static {p3, p1, p2}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    const/4 p1, 0x0

    .line 360
    return-object p1

    .line 361
    :cond_168
    :goto_168
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getDouble(J)D

    .line 362
    .line 363
    .line 364
    move-result-wide p1

    .line 365
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    return-object p1

    .line 370
    :cond_171
    :goto_171
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getFloat(J)F

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    return-object p1

    .line 379
    :cond_17a
    :goto_17a
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    .line 380
    .line 381
    .line 382
    move-result-wide p1

    .line 383
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    return-object p1

    .line 388
    :cond_183
    :goto_183
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    return-object p1

    .line 397
    :cond_18c
    :goto_18c
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getChar(J)C

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    return-object p1

    .line 406
    :cond_195
    :goto_195
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getShort(J)S

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    return-object p1

    .line 415
    :cond_19e
    :goto_19e
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    return-object p1

    .line 424
    :cond_1a7
    :goto_1a7
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-eqz p1, :cond_1ae

    .line 429
    .line 430
    goto :goto_1af

    .line 431
    :cond_1ae
    const/4 v1, 0x0

    .line 432
    :goto_1af
    invoke-static {v1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    return-object p1
.end method

.method public getWideString(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getWideStringArray(J)[Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getWideStringArray(JI)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWideStringArray(JI)[Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "--WIDE-STRING--"

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hashCode()I
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    const-wide v4, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v4

    .line 13
    add-long/2addr v2, v0

    .line 14
    long-to-int v0, v2

    .line 15
    return v0
.end method

.method public indexOf(JB)J
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->indexOf(Lcom/sun/jna/Pointer;JJB)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public read(J[BII)V
    .registers 14

    .line 41
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public read(J[CII)V
    .registers 14

    .line 36
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public read(J[DII)V
    .registers 14

    .line 40
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public read(J[FII)V
    .registers 14

    .line 39
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public read(J[III)V
    .registers 14

    .line 37
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public read(J[JII)V
    .registers 14

    .line 38
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public read(J[Lcom/sun/jna/Pointer;II)V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-ge v0, p5, :cond_21

    .line 3
    .line 4
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 5
    .line 6
    mul-int/2addr v1, v0

    .line 7
    int-to-long v1, v1

    .line 8
    add-long/2addr v1, p1

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    add-int v2, v0, p4

    .line 14
    .line 15
    aget-object v3, p3, v2

    .line 16
    .line 17
    if-eqz v3, :cond_1c

    .line 18
    .line 19
    if-eqz v1, :cond_1c

    .line 20
    .line 21
    iget-wide v4, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 22
    .line 23
    iget-wide v6, v3, Lcom/sun/jna/Pointer;->peer:J

    .line 24
    .line 25
    cmp-long v3, v4, v6

    .line 26
    .line 27
    if-eqz v3, :cond_1e

    .line 28
    .line 29
    :cond_1c
    aput-object v1, p3, v2

    .line 30
    .line 31
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_21
    return-void
.end method

.method public read(J[SII)V
    .registers 14

    .line 35
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method

.method public setByte(JB)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setByte(Lcom/sun/jna/Pointer;JJB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setChar(JC)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setChar(Lcom/sun/jna/Pointer;JJC)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDouble(JD)V
    .registers 12

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move-wide v5, p3

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setDouble(Lcom/sun/jna/Pointer;JJD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFloat(JF)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setFloat(Lcom/sun/jna/Pointer;JJF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setInt(JI)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setInt(Lcom/sun/jna/Pointer;JJI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLong(JJ)V
    .registers 12

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move-wide v5, p3

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setLong(Lcom/sun/jna/Pointer;JJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMemory(JJB)V
    .registers 14

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move-wide v5, p3

    .line 6
    move v7, p5

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->setMemory(Lcom/sun/jna/Pointer;JJJB)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setNativeLong(JLcom/sun/jna/NativeLong;)V
    .registers 6

    .line 1
    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_e

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/sun/jna/IntegerType;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p3}, Lcom/sun/jna/IntegerType;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setInt(JI)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setPointer(JLcom/sun/jna/Pointer;)V
    .registers 11

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    if-eqz p3, :cond_a

    .line 4
    .line 5
    iget-wide v3, p3, Lcom/sun/jna/Pointer;->peer:J

    .line 6
    .line 7
    :goto_6
    move-object v0, p0

    .line 8
    move-wide v5, v3

    .line 9
    move-wide v3, p1

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    goto :goto_6

    .line 14
    :goto_d
    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setPointer(Lcom/sun/jna/Pointer;JJJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setShort(JS)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setShort(Lcom/sun/jna/Pointer;JJS)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setString(JLcom/sun/jna/WString;)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_8

    .line 21
    :cond_4
    invoke-virtual {p3}, Lcom/sun/jna/WString;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .registers 5

    .line 20
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {p3, p4}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    const/4 v4, 0x0

    .line 6
    array-length v5, v3

    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 10
    .line 11
    .line 12
    array-length p1, v3

    .line 13
    int-to-long p1, p1

    .line 14
    add-long/2addr p1, v1

    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setByte(JB)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setValue(JLjava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p4, v0, :cond_159

    .line 5
    .line 6
    const-class v0, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-ne p4, v0, :cond_b

    .line 9
    .line 10
    goto/16 :goto_159

    .line 11
    .line 12
    :cond_b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    if-eq p4, v0, :cond_14c

    .line 15
    .line 16
    const-class v0, Ljava/lang/Byte;

    .line 17
    .line 18
    if-ne p4, v0, :cond_15

    .line 19
    .line 20
    goto/16 :goto_14c

    .line 21
    .line 22
    :cond_15
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-eq p4, v0, :cond_13f

    .line 25
    .line 26
    const-class v0, Ljava/lang/Short;

    .line 27
    .line 28
    if-ne p4, v0, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_13f

    .line 31
    .line 32
    :cond_1f
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-eq p4, v0, :cond_132

    .line 35
    .line 36
    const-class v0, Ljava/lang/Character;

    .line 37
    .line 38
    if-ne p4, v0, :cond_29

    .line 39
    .line 40
    goto/16 :goto_132

    .line 41
    .line 42
    :cond_29
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-eq p4, v0, :cond_125

    .line 45
    .line 46
    const-class v0, Ljava/lang/Integer;

    .line 47
    .line 48
    if-ne p4, v0, :cond_33

    .line 49
    .line 50
    goto/16 :goto_125

    .line 51
    .line 52
    :cond_33
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    if-eq p4, v0, :cond_116

    .line 55
    .line 56
    const-class v0, Ljava/lang/Long;

    .line 57
    .line 58
    if-ne p4, v0, :cond_3d

    .line 59
    .line 60
    goto/16 :goto_116

    .line 61
    .line 62
    :cond_3d
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-eq p4, v0, :cond_108

    .line 65
    .line 66
    const-class v0, Ljava/lang/Float;

    .line 67
    .line 68
    if-ne p4, v0, :cond_47

    .line 69
    .line 70
    goto/16 :goto_108

    .line 71
    .line 72
    :cond_47
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    if-eq p4, v0, :cond_f9

    .line 75
    .line 76
    const-class v0, Ljava/lang/Double;

    .line 77
    .line 78
    if-ne p4, v0, :cond_51

    .line 79
    .line 80
    goto/16 :goto_f9

    .line 81
    .line 82
    :cond_51
    const-class v0, Lcom/sun/jna/Pointer;

    .line 83
    .line 84
    if-ne p4, v0, :cond_5b

    .line 85
    .line 86
    check-cast p3, Lcom/sun/jna/Pointer;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5b
    const-class v0, Ljava/lang/String;

    .line 93
    .line 94
    if-ne p4, v0, :cond_65

    .line 95
    .line 96
    check-cast p3, Lcom/sun/jna/Pointer;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    const-class v0, Lcom/sun/jna/WString;

    .line 103
    .line 104
    if-ne p4, v0, :cond_6f

    .line 105
    .line 106
    check-cast p3, Lcom/sun/jna/Pointer;

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    const-class v0, Lcom/sun/jna/Structure;

    .line 113
    .line 114
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x0

    .line 119
    if-eqz v0, :cond_9b

    .line 120
    .line 121
    check-cast p3, Lcom/sun/jna/Structure;

    .line 122
    .line 123
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 124
    .line 125
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    if-eqz p4, :cond_92

    .line 130
    .line 131
    if-nez p3, :cond_85

    .line 132
    .line 133
    goto :goto_89

    .line 134
    :cond_85
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :goto_89
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 139
    .line 140
    .line 141
    if-eqz p3, :cond_91

    .line 142
    .line 143
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->autoWrite()V

    .line 144
    .line 145
    .line 146
    :cond_91
    return-void

    .line 147
    :cond_92
    long-to-int p1, p1

    .line 148
    const/4 p2, 0x1

    .line 149
    invoke-virtual {p3, p0, p1, p2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->write()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_9b
    const-class v0, Lcom/sun/jna/Callback;

    .line 157
    .line 158
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_ad

    .line 163
    .line 164
    check-cast p3, Lcom/sun/jna/Callback;

    .line 165
    .line 166
    invoke-static {p3}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_ad
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 175
    .line 176
    if-eqz v0, :cond_c6

    .line 177
    .line 178
    const-class v0, Ljava/nio/Buffer;

    .line 179
    .line 180
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_c6

    .line 185
    .line 186
    if-nez p3, :cond_bc

    .line 187
    .line 188
    goto :goto_c2

    .line 189
    :cond_bc
    check-cast p3, Ljava/nio/Buffer;

    .line 190
    .line 191
    invoke-static {p3}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_c2
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_c6
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 200
    .line 201
    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_e3

    .line 206
    .line 207
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 208
    .line 209
    .line 210
    move-result-object p4

    .line 211
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    .line 216
    .line 217
    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p4, p3, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_e3
    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_f1

    .line 233
    .line 234
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->writeArray(JLjava/lang/Object;Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_f1
    const-string p1, "Writing "

    .line 243
    .line 244
    const-string p2, " to memory is not supported"

    .line 245
    .line 246
    invoke-static {p4, p1, p2}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_f9
    :goto_f9
    if-nez p3, :cond_fe

    .line 251
    .line 252
    const-wide/16 p3, 0x0

    .line 253
    .line 254
    goto :goto_104

    .line 255
    :cond_fe
    check-cast p3, Ljava/lang/Double;

    .line 256
    .line 257
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 258
    .line 259
    .line 260
    move-result-wide p3

    .line 261
    :goto_104
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setDouble(JD)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_108
    :goto_108
    if-nez p3, :cond_10c

    .line 266
    .line 267
    const/4 p3, 0x0

    .line 268
    goto :goto_112

    .line 269
    :cond_10c
    check-cast p3, Ljava/lang/Float;

    .line 270
    .line 271
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    :goto_112
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setFloat(JF)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_116
    :goto_116
    if-nez p3, :cond_11b

    .line 280
    .line 281
    const-wide/16 p3, 0x0

    .line 282
    .line 283
    goto :goto_121

    .line 284
    :cond_11b
    check-cast p3, Ljava/lang/Long;

    .line 285
    .line 286
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide p3

    .line 290
    :goto_121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_125
    :goto_125
    if-nez p3, :cond_128

    .line 295
    .line 296
    goto :goto_12e

    .line 297
    :cond_128
    check-cast p3, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    :goto_12e
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_132
    :goto_132
    if-nez p3, :cond_135

    .line 308
    .line 309
    goto :goto_13b

    .line 310
    :cond_135
    check-cast p3, Ljava/lang/Character;

    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    :goto_13b
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setChar(JC)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_13f
    :goto_13f
    if-nez p3, :cond_142

    .line 321
    .line 322
    goto :goto_148

    .line 323
    :cond_142
    check-cast p3, Ljava/lang/Short;

    .line 324
    .line 325
    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    :goto_148
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_14c
    :goto_14c
    if-nez p3, :cond_14f

    .line 334
    .line 335
    goto :goto_155

    .line 336
    :cond_14f
    check-cast p3, Ljava/lang/Byte;

    .line 337
    .line 338
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    :goto_155
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setByte(JB)V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :cond_159
    :goto_159
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {p4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p3

    .line 352
    if-eqz p3, :cond_162

    .line 353
    .line 354
    const/4 v1, -0x1

    .line 355
    :cond_162
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    .line 356
    .line 357
    .line 358
    return-void
.end method

.method public setWideString(JLjava/lang/String;)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v3, p1

    .line 5
    move-object v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public share(J)Lcom/sun/jna/Pointer;
    .registers 5

    const-wide/16 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public share(JJ)Lcom/sun/jna/Pointer;
    .registers 7

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p3, p1, p3

    .line 4
    .line 5
    if-nez p3, :cond_7

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance p3, Lcom/sun/jna/Pointer;

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 11
    .line 12
    add-long/2addr v0, p1

    .line 13
    invoke-direct {p3, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "native@0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public write(J[BII)V
    .registers 14

    .line 26
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public write(J[CII)V
    .registers 14

    .line 21
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public write(J[DII)V
    .registers 14

    .line 25
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public write(J[FII)V
    .registers 14

    .line 24
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public write(J[III)V
    .registers 14

    .line 22
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public write(J[JII)V
    .registers 14

    .line 23
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public write(J[Lcom/sun/jna/Pointer;II)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-ge v0, p5, :cond_12

    .line 3
    .line 4
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 5
    .line 6
    mul-int/2addr v1, v0

    .line 7
    int-to-long v1, v1

    .line 8
    add-long/2addr v1, p1

    .line 9
    add-int v3, p4, v0

    .line 10
    .line 11
    aget-object v3, p3, v3

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_12
    return-void
.end method

.method public write(J[SII)V
    .registers 14

    .line 20
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method
