.class public final Lu/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/j;


# static fields
.field public static final f:Lz3/f;

.field public static final g:Ll/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ll/c;

.field public final d:Lz3/f;

.field public final e:Ll/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lz3/f;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz3/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu/a;->f:Lz3/f;

    .line 9
    .line 10
    new-instance v0, Ll/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ll/c;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lu/a;->g:Ll/c;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lk/b;Lk/g;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lu/a;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lu/a;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object p1, Lu/a;->f:Lz3/f;

    .line 13
    .line 14
    iput-object p1, p0, Lu/a;->d:Lz3/f;

    .line 15
    .line 16
    new-instance p1, Ll/d;

    .line 17
    .line 18
    const/16 p2, 0x12

    .line 19
    .line 20
    invoke-direct {p1, p2, p3, p4}, Ll/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lu/a;->e:Ll/d;

    .line 24
    .line 25
    sget-object p1, Lu/a;->g:Ll/c;

    .line 26
    .line 27
    iput-object p1, p0, Lu/a;->c:Ll/c;

    .line 28
    .line 29
    return-void
.end method

.method public static d(Lg/b;II)I
    .registers 8

    .line 1
    iget v0, p0, Lg/b;->g:I

    .line 2
    .line 3
    div-int/2addr v0, p2

    .line 4
    iget v1, p0, Lg/b;->f:I

    .line 5
    .line 6
    div-int/2addr v1, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_12
    const/4 v1, 0x1

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    const-string v3, "BufferGifDecoder"

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_4d

    .line 32
    .line 33
    if-le v0, v1, :cond_4d

    .line 34
    .line 35
    const-string v1, "Downsampling GIF, sampleSize: "

    .line 36
    .line 37
    const-string v2, ", target dimens: ["

    .line 38
    .line 39
    const-string v4, "x"

    .line 40
    .line 41
    invoke-static {v1, v0, p1, v2, v4}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, "], actual dimens: ["

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lg/b;->f:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lg/b;->g:I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "]"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_4d
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILh/h;)Lj/d0;
    .registers 12

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object p1, p0, Lu/a;->c:Ll/c;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_6
    iget-object v0, p1, Ll/c;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lg/c;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_54

    .line 14
    .line 15
    if-nez v0, :cond_15

    .line 16
    .line 17
    :try_start_10
    new-instance v0, Lg/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lg/c;-><init>()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    .line 20
    .line 21
    .line 22
    :cond_15
    move-object v5, v0

    .line 23
    goto :goto_1b

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    move-object p2, v0

    .line 26
    move-object v1, p0

    .line 27
    goto :goto_57

    .line 28
    :goto_1b
    const/4 v0, 0x0

    .line 29
    :try_start_1c
    iput-object v0, v5, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    iget-object v0, v5, Lg/c;->a:[B

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lg/b;

    .line 38
    .line 39
    invoke-direct {v0}, Lg/b;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, v5, Lg/c;->c:Lg/b;

    .line 43
    .line 44
    iput v1, v5, Lg/c;->d:I

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, v5, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    iget-object v0, v5, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_54

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    move-object v1, p0

    .line 64
    move v3, p2

    .line 65
    move v4, p3

    .line 66
    move-object v6, p4

    .line 67
    :try_start_42
    invoke-virtual/range {v1 .. v6}, Lu/a;->c(Ljava/nio/ByteBuffer;IILg/c;Lh/h;)Ls/b;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4c

    .line 71
    iget-object p2, v1, Lu/a;->c:Ll/c;

    .line 72
    .line 73
    invoke-virtual {p2, v5}, Ll/c;->a(Lg/c;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    move-object p1, v0

    .line 79
    iget-object p2, v1, Lu/a;->c:Ll/c;

    .line 80
    .line 81
    invoke-virtual {p2, v5}, Ll/c;->a(Lg/c;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :catchall_54
    move-exception v0

    .line 86
    move-object v1, p0

    .line 87
    :goto_56
    move-object p2, v0

    .line 88
    :goto_57
    :try_start_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_59

    .line 89
    throw p2

    .line 90
    :catchall_59
    move-exception v0

    .line 91
    goto :goto_56
.end method

.method public final b(Ljava/lang/Object;Lh/h;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, Lu/g;->b:Lh/g;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_1c

    .line 16
    .line 17
    iget-object p2, p0, Lu/a;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lo4/b;->w(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    .line 25
    if-ne p1, p2, :cond_1c

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final c(Ljava/nio/ByteBuffer;IILg/c;Lh/h;)Ls/b;
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Decoded GIF from stream in "

    .line 4
    .line 5
    const-string v3, "BufferGifDecoder"

    .line 6
    .line 7
    sget v0, Lc0/j;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v6, 0x2

    .line 14
    :try_start_d
    invoke-virtual/range {p4 .. p4}, Lg/c;->b()Lg/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v7, v0, Lg/b;->c:I

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-lez v7, :cond_9e

    .line 22
    .line 23
    iget v7, v0, Lg/b;->b:I

    .line 24
    .line 25
    if-eqz v7, :cond_1c

    .line 26
    .line 27
    goto/16 :goto_9e

    .line 28
    .line 29
    :cond_1c
    sget-object v7, Lu/g;->a:Lh/g;

    .line 30
    .line 31
    move-object/from16 v9, p5

    .line 32
    .line 33
    invoke-virtual {v9, v7}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    sget-object v9, Lh/a;->c:Lh/a;

    .line 38
    .line 39
    if-ne v7, v9, :cond_32

    .line 40
    .line 41
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    :goto_2a
    move/from16 v12, p2

    .line 44
    .line 45
    move/from16 v13, p3

    .line 46
    .line 47
    goto :goto_35

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    goto/16 :goto_ab

    .line 50
    .line 51
    :cond_32
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    goto :goto_2a

    .line 54
    :goto_35
    invoke-static {v0, v12, v13}, Lu/a;->d(Lg/b;II)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    iget-object v10, v1, Lu/a;->d:Lz3/f;

    .line 59
    .line 60
    iget-object v11, v1, Lu/a;->e:Ll/d;

    .line 61
    .line 62
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v10, Lg/d;

    .line 66
    .line 67
    move-object/from16 v14, p1

    .line 68
    .line 69
    invoke-direct {v10, v11, v0, v14, v9}, Lg/d;-><init>(Ll/d;Lg/b;Ljava/nio/ByteBuffer;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v7}, Lg/d;->c(Landroid/graphics/Bitmap$Config;)V

    .line 73
    .line 74
    .line 75
    iget v0, v10, Lg/d;->k:I

    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    add-int/2addr v0, v7

    .line 79
    iget-object v9, v10, Lg/d;->l:Lg/b;

    .line 80
    .line 81
    iget v9, v9, Lg/b;->c:I

    .line 82
    .line 83
    rem-int/2addr v0, v9

    .line 84
    iput v0, v10, Lg/d;->k:I

    .line 85
    .line 86
    invoke-virtual {v10}, Lg/d;->b()Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v14
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_2f

    .line 90
    if-nez v14, :cond_75

    .line 91
    .line 92
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_aa

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_66
    invoke-static {v4, v5}, Lc0/j;->a(J)D

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-object v8

    .line 118
    :cond_75
    :try_start_75
    new-instance v0, Lu/b;

    .line 119
    .line 120
    iget-object v8, v1, Lu/a;->a:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v15, Lr3/a;

    .line 123
    .line 124
    new-instance v9, Lu/f;

    .line 125
    .line 126
    invoke-static {v8}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    move-object v11, v10

    .line 131
    move-object v10, v8

    .line 132
    invoke-direct/range {v9 .. v14}, Lu/f;-><init>(Lcom/bumptech/glide/b;Lg/d;IILandroid/graphics/Bitmap;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v15, v9}, Lr3/a;-><init>(Lu/f;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v15}, Lu/b;-><init>(Lr3/a;)V

    .line 139
    .line 140
    .line 141
    new-instance v8, Ls/b;

    .line 142
    .line 143
    invoke-direct {v8, v0, v7}, Ls/b;-><init>(Landroid/graphics/drawable/Drawable;I)V
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_2f

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_9d

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_66

    .line 158
    :cond_9d
    return-object v8

    .line 159
    :cond_9e
    :goto_9e
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_aa

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_66

    .line 171
    :cond_aa
    return-object v8

    .line 172
    :goto_ab
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_c4

    .line 177
    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v4, v5}, Lc0/j;->a(J)D

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_c4
    throw v0
.end method
