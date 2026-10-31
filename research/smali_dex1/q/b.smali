.class public final Lq/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/k;


# static fields
.field public static final c:Lh/g;

.field public static final d:Lh/g;


# instance fields
.field public final b:Lk/g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lh/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lh/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lq/b;->c:Lh/g;

    .line 14
    .line 15
    new-instance v0, Lh/g;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    sget-object v2, Lh/g;->e:Lc5/e;

    .line 19
    .line 20
    const-string v3, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lh/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lh/f;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lq/b;->d:Lh/g;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lk/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq/b;->b:Lk/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Lh/h;)I
    .registers 2

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public final h(Ljava/lang/Object;Ljava/io/File;Lh/h;)Z
    .registers 12

    .line 1
    check-cast p1, Lj/d0;

    .line 2
    .line 3
    const-string v0, "BitmapEncoder"

    .line 4
    .line 5
    invoke-interface {p1}, Lj/d0;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    sget-object v1, Lq/b;->d:Lh/g;

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/graphics/Bitmap$CompressFormat;

    .line 18
    .line 19
    if-eqz v2, :cond_15

    .line 20
    .line 21
    goto :goto_20

    .line 22
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1e

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 32
    .line 33
    :goto_20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    .line 38
    .line 39
    sget v3, Lc0/j;->b:I

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    sget-object v5, Lq/b;->c:Lh/g;

    .line 46
    .line 47
    invoke-virtual {p3, v5}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x0

    .line 58
    :try_start_39
    new-instance v7, Ljava/io/FileOutputStream;

    .line 59
    .line 60
    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_60
    .catchall {:try_start_39 .. :try_end_3e} :catchall_5e

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lq/b;->b:Lk/g;

    .line 64
    .line 65
    if-eqz p2, :cond_4f

    .line 66
    .line 67
    :try_start_42
    new-instance v6, Lcom/bumptech/glide/load/data/c;

    .line 68
    .line 69
    invoke-direct {v6, v7, p2}, Lcom/bumptech/glide/load/data/c;-><init>(Ljava/io/FileOutputStream;Lk/g;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_4c
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    .line 70
    .line 71
    .line 72
    goto :goto_50

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    move-object v6, v7

    .line 75
    goto/16 :goto_bc

    .line 76
    .line 77
    :catch_4c
    move-exception p2

    .line 78
    move-object v6, v7

    .line 79
    goto :goto_61

    .line 80
    :cond_4f
    move-object v6, v7

    .line 81
    :goto_50
    :try_start_50
    invoke-virtual {p1, v2, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_60
    .catchall {:try_start_50 .. :try_end_56} :catchall_5e

    .line 85
    .line 86
    .line 87
    :try_start_56
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5c
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    .line 88
    .line 89
    .line 90
    goto :goto_5c

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    goto :goto_c2

    .line 93
    :catch_5c
    :goto_5c
    const/4 p2, 0x1

    .line 94
    goto :goto_73

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    goto :goto_bc

    .line 97
    :catch_60
    move-exception p2

    .line 98
    :goto_61
    const/4 v5, 0x3

    .line 99
    :try_start_62
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_6d

    .line 104
    .line 105
    const-string v5, "Failed to encode Bitmap"

    .line 106
    .line 107
    invoke-static {v0, v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5e

    .line 108
    .line 109
    .line 110
    :cond_6d
    if-eqz v6, :cond_72

    .line 111
    .line 112
    :try_start_6f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_5a

    .line 113
    .line 114
    .line 115
    :catch_72
    :cond_72
    const/4 p2, 0x0

    .line 116
    :goto_73
    const/4 v5, 0x2

    .line 117
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_bb

    .line 122
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v6, "Compressed with type: "

    .line 126
    .line 127
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " of size "

    .line 134
    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lc0/p;->c(Landroid/graphics/Bitmap;)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " in "

    .line 146
    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v4}, Lc0/j;->a(J)D

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ", options format: "

    .line 158
    .line 159
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v1}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p3, ", hasAlpha: "

    .line 170
    .line 171
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_bb
    return p2

    .line 189
    :goto_bc
    if-eqz v6, :cond_c3

    .line 190
    .line 191
    :try_start_be
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c3
    .catchall {:try_start_be .. :try_end_c1} :catchall_5a

    .line 192
    .line 193
    .line 194
    goto :goto_c3

    .line 195
    :goto_c2
    throw p1

    .line 196
    :catch_c3
    :cond_c3
    :goto_c3
    throw p1
.end method
