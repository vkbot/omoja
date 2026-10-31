.class public final Lq/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final f:Lh/g;

.field public static final g:Lh/g;

.field public static final h:Lh/g;

.field public static final i:Lh/g;

.field public static final j:Lp2/e;

.field public static final k:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lk/b;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lk/g;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lq/w;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    .line 3
    sget-object v1, Lh/a;->d:Lh/a;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lh/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lh/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lq/q;->f:Lh/g;

    .line 10
    .line 11
    new-instance v0, Lh/g;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    sget-object v2, Lh/g;->e:Lc5/e;

    .line 15
    .line 16
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lh/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lh/f;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lq/q;->g:Lh/g;

    .line 22
    .line 23
    sget-object v0, Lq/o;->b:Lq/o;

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lh/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lh/g;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lq/q;->h:Lh/g;

    .line 34
    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lh/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lh/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lq/q;->i:Lh/g;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    const-string v1, "image/vnd.wap.wbmp"

    .line 46
    .line 47
    const-string v2, "image/x-ico"

    .line 48
    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lp2/e;

    .line 64
    .line 65
    const/16 v1, 0x10

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lq/q;->j:Lp2/e;

    .line 71
    .line 72
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 73
    .line 74
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 75
    .line 76
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lc0/p;->a:[C

    .line 86
    .line 87
    new-instance v0, Ljava/util/ArrayDeque;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lq/q;->k:Ljava/util/ArrayDeque;

    .line 94
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lk/b;Lk/g;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lq/w;->a()Lq/w;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq/q;->e:Lq/w;

    .line 9
    .line 10
    iput-object p1, p0, Lq/q;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lq/q;->b:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lq/q;->a:Lk/b;

    .line 23
    .line 24
    invoke-static {p4, p1}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, Lq/q;->c:Lk/g;

    .line 28
    .line 29
    return-void
.end method

.method public static c(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/p;Lk/b;)Landroid/graphics/Bitmap;
    .registers 13

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_22

    .line 6
    .line 7
    invoke-interface {p2}, Lq/p;->d()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, La5/h;->b:I

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_84

    .line 13
    .line 14
    .line 15
    goto :goto_22

    .line 16
    :pswitch_f
    iget-object v1, p0, La5/h;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lq/x;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_18
    iget-object v2, v1, Lq/x;->b:[B

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    iput v2, v1, Lq/x;->d:I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_22

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw p0

    .line 35
    :cond_22
    :goto_22
    :pswitch_22
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v4, Lq/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    .line 45
    .line 46
    :try_start_2d
    invoke-virtual {p0, p1}, La5/h;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_31} :catch_35
    .catchall {:try_start_2d .. :try_end_31} :catchall_7c

    .line 50
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_35
    move-exception v4

    .line 55
    :try_start_36
    new-instance v5, Ljava/io/IOException;

    .line 56
    .line 57
    const-string v6, "Exception decoding bitmap, outWidth: "

    .line 58
    .line 59
    const-string v7, ", outHeight: "

    .line 60
    .line 61
    const-string v8, ", outMimeType: "

    .line 62
    .line 63
    invoke-static {v6, v1, v2, v7, v8}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", inBitmap: "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-static {v2}, Lq/q;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_66

    .line 97
    .line 98
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 99
    .line 100
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_66
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_7c

    .line 104
    .line 105
    if-eqz v0, :cond_7b

    .line 106
    .line 107
    :try_start_6a
    invoke-interface {p3, v0}, Lk/b;->c(Landroid/graphics/Bitmap;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    invoke-static {p0, p1, p2, p3}, Lq/q;->c(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/p;Lk/b;)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_74} :catch_7a
    .catchall {:try_start_6a .. :try_end_74} :catchall_7c

    .line 117
    sget-object p1, Lq/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :catch_7a
    :try_start_7a
    throw v5

    .line 124
    :cond_7b
    throw v5
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_7c

    .line 125
    :catchall_7c
    move-exception p0

    .line 126
    sget-object p1, Lq/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    nop

    .line 133
    :pswitch_data_84
    .packed-switch 0x15
        :pswitch_22
        :pswitch_f
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_22

    .line 25
    .line 26
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->r(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->z(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lorg/apache/commons/net/util/a;->B(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(La5/h;IILh/h;Lq/p;)Lq/e;
    .registers 20

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    iget-object v2, p0, Lq/q;->c:Lk/g;

    .line 4
    .line 5
    const/high16 v3, 0x10000

    .line 6
    .line 7
    const-class v4, [B

    .line 8
    .line 9
    invoke-virtual {v2, v3, v4}, Lk/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v12, v2

    .line 14
    check-cast v12, [B

    .line 15
    .line 16
    const-class v2, Lq/q;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_12
    sget-object v13, Lq/q;->k:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    monitor-enter v13
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_27

    .line 22
    :try_start_15
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 27
    .line 28
    monitor-exit v13
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_a4

    .line 29
    if-nez v3, :cond_2a

    .line 30
    .line 31
    :try_start_1e
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lq/q;->e(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    .line 37
    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto/16 :goto_a7

    .line 42
    .line 43
    :cond_2a
    :goto_2a
    monitor-exit v2

    .line 44
    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 45
    .line 46
    sget-object v2, Lq/q;->f:Lh/g;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v5, v2

    .line 53
    check-cast v5, Lh/a;

    .line 54
    .line 55
    sget-object v2, Lq/q;->g:Lh/g;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v6, v2

    .line 62
    check-cast v6, Lh/i;

    .line 63
    .line 64
    sget-object v2, Lq/o;->g:Lh/g;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v4, v2

    .line 71
    check-cast v4, Lq/o;

    .line 72
    .line 73
    sget-object v2, Lq/q;->h:Lh/g;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    sget-object v2, Lq/q;->i:Lh/g;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-eqz v7, :cond_73

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lh/h;->c(Lh/g;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_73

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    :goto_69
    move-object v1, p0

    .line 107
    move-object v2, p1

    .line 108
    move/from16 v8, p2

    .line 109
    .line 110
    move/from16 v9, p3

    .line 111
    .line 112
    move-object/from16 v11, p5

    .line 113
    .line 114
    move v7, v0

    .line 115
    goto :goto_75

    .line 116
    :cond_73
    const/4 v0, 0x0

    .line 117
    goto :goto_69

    .line 118
    :goto_75
    :try_start_75
    invoke-virtual/range {v1 .. v11}, Lq/q;->b(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/o;Lh/a;Lh/i;ZIIZLq/p;)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v2, p0, Lq/q;->a:Lk/b;

    .line 123
    .line 124
    invoke-static {v0, v2}, Lq/e;->c(Landroid/graphics/Bitmap;Lk/b;)Lq/e;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_90

    .line 128
    invoke-static {v3}, Lq/q;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 129
    .line 130
    .line 131
    monitor-enter v13

    .line 132
    :try_start_83
    invoke-virtual {v13, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    monitor-exit v13
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_8d

    .line 136
    iget-object v2, p0, Lq/q;->c:Lk/g;

    .line 137
    .line 138
    invoke-virtual {v2, v12}, Lk/g;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :catchall_8d
    move-exception v0

    .line 143
    :try_start_8e
    monitor-exit v13
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .line 144
    throw v0

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    invoke-static {v3}, Lq/q;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 147
    .line 148
    .line 149
    sget-object v4, Lq/q;->k:Ljava/util/ArrayDeque;

    .line 150
    .line 151
    monitor-enter v4

    .line 152
    :try_start_97
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_a1

    .line 156
    iget-object v2, p0, Lq/q;->c:Lk/g;

    .line 157
    .line 158
    invoke-virtual {v2, v12}, Lk/g;->g(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :catchall_a1
    move-exception v0

    .line 163
    :try_start_a2
    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    .line 164
    throw v0

    .line 165
    :catchall_a4
    move-exception v0

    .line 166
    :try_start_a5
    monitor-exit v13
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    .line 167
    :try_start_a6
    throw v0

    .line 168
    :goto_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_27

    .line 169
    throw v0
.end method

.method public final b(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/o;Lh/a;Lh/i;ZIIZLq/p;)Landroid/graphics/Bitmap;
    .registers 54

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    .line 1
    sget v9, Lc0/j;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    const/4 v11, 0x1

    .line 3
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    iget-object v12, v1, Lq/q;->a:Lk/b;

    invoke-static {v2, v3, v8, v12}, Lq/q;->c(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/p;Lk/b;)Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    .line 5
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    .line 7
    aget v15, v14, v13

    .line 8
    aget v14, v14, v11

    .line 9
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v13, -0x1

    if-eq v15, v13, :cond_36

    if-ne v14, v13, :cond_33

    goto :goto_36

    :cond_33
    move/from16 v17, p6

    goto :goto_38

    :cond_36
    :goto_36
    const/16 v17, 0x0

    .line 10
    :goto_38
    iget v13, v2, La5/h;->b:I

    const/16 v19, 0x0

    packed-switch v13, :pswitch_data_5f4

    .line 11
    iget-object v13, v2, La5/h;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    move-wide/from16 v20, v9

    iget-object v9, v2, La5/h;->e:Ljava/lang/Object;

    check-cast v9, Lcom/bumptech/glide/load/data/i;

    iget-object v10, v2, La5/h;->c:Ljava/lang/Object;

    check-cast v10, Lk/g;

    move-object/from16 p6, v9

    .line 12
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v22, v11

    const/4 v11, 0x0

    :goto_56
    if-ge v11, v9, :cond_9d

    .line 13
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, Lh/d;

    move/from16 v23, v11

    .line 14
    :try_start_64
    new-instance v11, Lq/x;

    move-object/from16 v25, v13

    new-instance v13, Ljava/io/FileInputStream;

    .line 15
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v11, v13, v10}, Lq/x;-><init>(Ljava/io/InputStream;Lk/g;)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_93

    .line 16
    :try_start_78
    invoke-interface {v9, v11, v10}, Lh/d;->b(Ljava/io/InputStream;Lk/g;)I

    move-result v5
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_8f

    .line 17
    invoke-virtual {v11}, Lq/x;->c()V

    .line 18
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    const/4 v9, -0x1

    if-eq v5, v9, :cond_88

    :goto_85
    move v13, v5

    goto/16 :goto_106

    :cond_88
    add-int/lit8 v11, v23, 0x1

    move/from16 v9, v24

    move-object/from16 v13, v25

    goto :goto_56

    :catchall_8f
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_94

    :catchall_93
    move-exception v0

    :goto_94
    if-eqz v19, :cond_99

    .line 19
    invoke-virtual/range {v19 .. v19}, Lq/x;->c()V

    .line 20
    :cond_99
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/i;->e()Landroid/os/ParcelFileDescriptor;

    .line 21
    throw v0

    :cond_9d
    const/4 v13, -0x1

    goto :goto_106

    :pswitch_9f
    move-wide/from16 v20, v9

    move-object/from16 v22, v11

    .line 22
    iget-object v5, v2, La5/h;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v9, v2, La5/h;->c:Ljava/lang/Object;

    check-cast v9, Lcom/bumptech/glide/load/data/i;

    .line 23
    iget-object v9, v9, Lcom/bumptech/glide/load/data/i;->c:Ljava/lang/Object;

    check-cast v9, Lq/x;

    .line 24
    invoke-virtual {v9}, Lq/x;->reset()V

    .line 25
    iget-object v10, v2, La5/h;->d:Ljava/lang/Object;

    check-cast v10, Lk/g;

    .line 26
    invoke-static {v5, v9, v10}, Lo4/b;->t(Ljava/util/List;Ljava/io/InputStream;Lk/g;)I

    move-result v13

    goto :goto_106

    :pswitch_bb
    move-wide/from16 v20, v9

    move-object/from16 v22, v11

    .line 27
    iget-object v5, v2, La5/h;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v9, v2, La5/h;->c:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 28
    invoke-static {v9}, Lc0/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v2, La5/h;->e:Ljava/lang/Object;

    check-cast v10, Lk/g;

    if-nez v9, :cond_d3

    :cond_d1
    const/4 v10, -0x1

    goto :goto_105

    .line 29
    :cond_d3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_d8
    if-ge v13, v11, :cond_d1

    .line 30
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v5

    move-object/from16 v5, v23

    check-cast v5, Lh/d;

    .line 31
    :try_start_e4
    invoke-interface {v5, v9, v10}, Lh/d;->d(Ljava/nio/ByteBuffer;Lk/g;)I

    move-result v5
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_fc

    move-object/from16 v23, v10

    const/4 v10, 0x0

    .line 32
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/ByteBuffer;

    const/4 v10, -0x1

    if-eq v5, v10, :cond_f5

    goto :goto_85

    :cond_f5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p6

    move-object/from16 v10, v23

    goto :goto_d8

    :catchall_fc
    move-exception v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 33
    throw v0

    :goto_105
    move v13, v10

    :goto_106
    const/16 v5, 0x5a

    packed-switch v13, :pswitch_data_5fc

    const/4 v10, 0x0

    goto :goto_114

    :pswitch_10d
    const/16 v10, 0x10e

    goto :goto_114

    :pswitch_110
    move v10, v5

    goto :goto_114

    :pswitch_112
    const/16 v10, 0xb4

    :goto_114
    packed-switch v13, :pswitch_data_60c

    const/4 v11, 0x0

    goto :goto_11a

    :pswitch_119
    const/4 v11, 0x1

    :goto_11a
    const/high16 v9, -0x80000000

    if-ne v6, v9, :cond_12d

    if-eq v10, v5, :cond_128

    const/16 v5, 0x10e

    if-ne v10, v5, :cond_125

    goto :goto_12a

    :cond_125
    move/from16 v27, v15

    goto :goto_131

    :cond_128
    const/16 v5, 0x10e

    :goto_12a
    move/from16 v27, v14

    goto :goto_131

    :cond_12d
    const/16 v5, 0x10e

    move/from16 v27, v6

    :goto_131
    if-ne v7, v9, :cond_13e

    const/16 v9, 0x5a

    if-eq v10, v9, :cond_13c

    if-ne v10, v5, :cond_13a

    goto :goto_13c

    :cond_13a
    move v5, v14

    goto :goto_13f

    :cond_13c
    :goto_13c
    move v5, v15

    goto :goto_13f

    :cond_13e
    move v5, v7

    .line 34
    :goto_13f
    invoke-virtual {v2}, La5/h;->m()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    move/from16 v23, v13

    .line 35
    const-string v13, ", target density: "

    const/16 v25, 0x0

    const-string v7, ", density: "

    const/high16 v28, 0x3f800000    # 1.0f

    const-string v6, "x"

    const-string v4, "Downsampler"

    move/from16 v29, v11

    const-string v11, "]"

    if-lez v15, :cond_159

    if-gtz v14, :cond_163

    :cond_159
    move-object v8, v7

    move-object v0, v11

    move-object/from16 p3, v12

    move-object v7, v13

    move/from16 v1, v27

    const/4 v10, 0x3

    goto/16 :goto_353

    :cond_163
    const/16 v1, 0x5a

    if-eq v10, v1, :cond_177

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_16c

    goto :goto_177

    :cond_16c
    move-object/from16 v18, v7

    move-object/from16 p6, v11

    move v7, v14

    move v11, v15

    :goto_172
    move/from16 v1, v27

    move-object/from16 v27, v13

    goto :goto_17e

    :cond_177
    :goto_177
    move-object/from16 v18, v7

    move-object/from16 p6, v11

    move v11, v14

    move v7, v15

    goto :goto_172

    .line 36
    :goto_17e
    invoke-virtual {v0, v11, v7, v1, v5}, Lq/o;->b(IIII)F

    move-result v13

    cmpg-float v30, v13, v25

    if-lez v30, :cond_315

    move/from16 v30, v13

    .line 37
    invoke-virtual {v0, v11, v7, v1, v5}, Lq/o;->a(IIII)I

    move-result v13

    if-eqz v13, :cond_30f

    move/from16 v31, v10

    int-to-float v10, v11

    move/from16 p6, v10

    mul-float v10, v30, p6

    move/from16 v32, v11

    float-to-double v10, v10

    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v33

    double-to-int v10, v10

    int-to-float v11, v7

    move/from16 v35, v7

    mul-float v7, v30, v11

    move/from16 v36, v10

    move/from16 v37, v11

    float-to-double v10, v7

    add-double v10, v10, v33

    double-to-int v7, v10

    .line 38
    div-int v11, v32, v36

    .line 39
    div-int v7, v35, v7

    const/4 v10, 0x1

    if-ne v13, v10, :cond_1b6

    .line 40
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1ba

    .line 41
    :cond_1b6
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 42
    :goto_1ba
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ne v13, v10, :cond_1cd

    int-to-float v10, v7

    div-float v11, v28, v30

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1cd

    shl-int/lit8 v7, v7, 0x1

    .line 43
    :cond_1cd
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 44
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v10, :cond_1f4

    const/16 v9, 0x8

    .line 45
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v10, p6, v9

    float-to-double v10, v10

    .line 46
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v37, v9

    move v13, v10

    float-to-double v9, v11

    .line 47
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 48
    div-int/lit8 v10, v7, 0x8

    if-lez v10, :cond_234

    .line 49
    div-int v11, v13, v10

    .line 50
    div-int/2addr v9, v10

    move v10, v11

    goto :goto_249

    .line 51
    :cond_1f4
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v10, :cond_236

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v10, :cond_1fd

    goto :goto_236

    .line 52
    :cond_1fd
    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v9

    if-eqz v9, :cond_211

    int-to-float v9, v7

    div-float v10, p6, v9

    .line 53
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    div-float v11, v37, v9

    .line 54
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_249

    .line 55
    :cond_211
    rem-int v11, v32, v7

    if-nez v11, :cond_219

    rem-int v9, v35, v7

    if-eqz v9, :cond_21b

    :cond_219
    const/4 v10, 0x1

    goto :goto_220

    .line 56
    :cond_21b
    div-int v10, v32, v7

    .line 57
    div-int v9, v35, v7

    goto :goto_249

    .line 58
    :goto_220
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    invoke-static {v2, v3, v8, v12}, Lq/q;->c(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/p;Lk/b;)Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    .line 60
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v11, v13}, [I

    move-result-object v11

    .line 62
    aget v13, v11, v9

    .line 63
    aget v9, v11, v10

    :cond_234
    :goto_234
    move v10, v13

    goto :goto_249

    :cond_236
    :goto_236
    int-to-float v9, v7

    div-float v10, p6, v9

    float-to-double v10, v10

    .line 64
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v37, v9

    move v13, v10

    float-to-double v9, v11

    .line 65
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    goto :goto_234

    .line 66
    :goto_249
    invoke-virtual {v0, v10, v9, v1, v5}, Lq/o;->b(IIII)F

    move-result v0

    move-object v13, v12

    float-to-double v11, v0

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v11, v35

    if-gtz v0, :cond_258

    move-wide/from16 v37, v11

    goto :goto_25a

    :cond_258
    div-double v37, v35, v11

    :goto_25a
    const-wide v39, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v37, v37, v39

    move-wide/from16 v41, v11

    .line 67
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    move-object/from16 p3, v13

    int-to-double v12, v11

    mul-double v12, v12, v41

    add-double v12, v12, v33

    double-to-int v12, v12

    int-to-float v13, v12

    int-to-float v11, v11

    div-float/2addr v13, v11

    move v11, v7

    float-to-double v7, v13

    div-double v7, v41, v7

    int-to-double v12, v12

    mul-double/2addr v7, v12

    add-double v7, v7, v33

    double-to-int v7, v7

    .line 68
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_283

    move-wide/from16 v35, v41

    goto :goto_285

    :cond_283
    div-double v35, v35, v41

    :goto_285
    mul-double v35, v35, v39

    .line 69
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v0, v7

    .line 70
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 71
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_29b

    if-lez v0, :cond_29b

    if-eq v7, v0, :cond_29b

    const/4 v7, 0x1

    .line 72
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_299
    const/4 v7, 0x2

    goto :goto_2a1

    :cond_29b
    const/4 v7, 0x0

    .line 73
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_299

    .line 74
    :goto_2a1
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 75
    const-string v0, "Calculate scaling, source: ["

    const-string v7, "], degreesToRotate: "

    .line 76
    invoke-static {v0, v15, v14, v6, v7}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, v31

    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", target: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], power of two scaled: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], exact scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", power of 2 sample size: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adjusted scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v41

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v7, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_307
    :goto_307
    move-object/from16 v9, p0

    goto :goto_37c

    :cond_30a
    move-object/from16 v8, v18

    move-object/from16 v7, v27

    goto :goto_307

    .line 78
    :cond_30f
    const-string v0, "Cannot round with null rounding"

    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    return-object v19

    :cond_315
    move v7, v13

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot scale with factor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :goto_353
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_307

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to determine dimensions for: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_307

    .line 82
    :goto_37c
    iget-object v0, v9, Lq/q;->e:Lq/w;

    move/from16 v10, v17

    move/from16 v11, v29

    .line 83
    invoke-virtual {v0, v1, v5, v10, v11}, Lq/w;->c(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_392

    .line 84
    invoke-static {}, Lc5/h;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    .line 85
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_393

    :cond_392
    const/4 v10, 0x0

    :goto_393
    if-eqz v0, :cond_397

    :cond_395
    const/4 v11, 0x1

    goto :goto_3d6

    .line 86
    :cond_397
    sget-object v0, Lh/a;->b:Lh/a;

    move-object/from16 v11, p4

    if-eq v11, v0, :cond_3d1

    .line 87
    :try_start_39d
    invoke-virtual {v2}, La5/h;->m()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_3a5
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3a5} :catch_3a6

    goto :goto_3c0

    :catch_3a6
    move-exception v0

    const/4 v12, 0x3

    .line 88
    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3bf

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3bf
    move v0, v10

    :goto_3c0
    if-eqz v0, :cond_3c5

    .line 90
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3c7

    :cond_3c5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_3c7
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v11, :cond_395

    const/4 v11, 0x1

    .line 92
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_3d6

    :cond_3d1
    const/4 v11, 0x1

    .line 93
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_3d6
    if-ltz v15, :cond_3de

    if-ltz v14, :cond_3de

    if-eqz p9, :cond_3de

    goto/16 :goto_457

    .line 94
    :cond_3de
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_3ea

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v1, :cond_3ea

    if-eq v0, v1, :cond_3ea

    move v1, v11

    goto :goto_3eb

    :cond_3ea
    move v1, v10

    :goto_3eb
    if-eqz v1, :cond_3f3

    int-to-float v0, v0

    .line 95
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3f5

    :cond_3f3
    move/from16 v0, v28

    .line 96
    :goto_3f5
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v15

    int-to-float v12, v1

    div-float/2addr v5, v12

    float-to-double v10, v5

    .line 97
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    int-to-float v10, v14

    div-float/2addr v10, v12

    float-to-double v10, v10

    .line 98
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v5, v5

    mul-float/2addr v5, v0

    .line 99
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v10, v10

    mul-float/2addr v10, v0

    .line 100
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, 0x2

    .line 101
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_455

    .line 102
    const-string v11, "Calculated target ["

    const-string v12, "] for source ["

    .line 103
    invoke-static {v11, v5, v10, v6, v12}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 104
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "], sampleSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetDensity: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density multiplier: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_455
    move v1, v5

    move v5, v10

    :goto_457
    const/16 v0, 0x1a

    if-lez v1, :cond_47e

    if-lez v5, :cond_47e

    .line 105
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v0, :cond_46f

    .line 106
    iget-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lc5/h;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    if-ne v10, v11, :cond_46a

    goto :goto_47e

    .line 107
    :cond_46a
    invoke-static {v3}, Lorg/apache/commons/net/util/a;->h(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    goto :goto_471

    :cond_46f
    move-object/from16 v10, v19

    :goto_471
    if-nez v10, :cond_475

    .line 108
    iget-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_475
    move-object/from16 v13, p3

    .line 109
    invoke-interface {v13, v1, v5, v10}, Lk/b;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_480

    :cond_47e
    :goto_47e
    move-object/from16 v13, p3

    :goto_480
    if-eqz p5, :cond_4b3

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_4b6

    .line 111
    sget-object v0, Lh/i;->b:Lh/i;

    move-object/from16 v5, p5

    if-ne v5, v0, :cond_4a0

    invoke-static {v3}, Lorg/apache/commons/net/util/a;->j(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_4a0

    invoke-static {v3}, Lorg/apache/commons/net/util/a;->j(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lorg/apache/commons/net/util/a;->x(Landroid/graphics/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_4a0

    const/4 v11, 0x1

    goto :goto_4a1

    :cond_4a0
    const/4 v11, 0x0

    :goto_4a1
    if-eqz v11, :cond_4a8

    .line 113
    invoke-static {}, Lorg/apache/commons/net/util/a;->i()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_4ac

    :cond_4a8
    invoke-static {}, Lai/onnxruntime/c;->o()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_4ac
    invoke-static {v0}, Landroidx/core/graphics/a;->i(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/net/util/a;->s(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    :cond_4b3
    :goto_4b3
    move-object/from16 v1, p10

    goto :goto_4c3

    :cond_4b6
    if-lt v1, v0, :cond_4b3

    .line 114
    invoke-static {}, Lai/onnxruntime/c;->o()Landroid/graphics/ColorSpace$Named;

    invoke-static {}, Lai/onnxruntime/c;->p()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/net/util/a;->s(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_4b3

    .line 115
    :goto_4c3
    invoke-static {v2, v3, v1, v13}, Lq/q;->c(La5/h;Landroid/graphics/BitmapFactory$Options;Lq/p;Lk/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    invoke-interface {v1, v0, v13}, Lq/p;->l(Landroid/graphics/Bitmap;Lk/b;)V

    const/4 v11, 0x2

    .line 117
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_554

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Lq/q;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lq/q;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static/range {v20 .. v21}, Lc0/j;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_554
    if-eqz v0, :cond_5f3

    .line 125
    iget-object v1, v9, Lq/q;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v23, :pswitch_data_61e

    move-object v3, v0

    goto/16 :goto_5e8

    .line 126
    :pswitch_563
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch v23, :pswitch_data_630

    goto :goto_5a0

    .line 127
    :pswitch_574
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5a0

    .line 128
    :pswitch_578
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    move/from16 v4, v28

    .line 129
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5a0

    .line 130
    :pswitch_581
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5a0

    :pswitch_585
    move/from16 v4, v28

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 132
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5a0

    :pswitch_58e
    move/from16 v4, v28

    .line 133
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 134
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5a0

    .line 135
    :pswitch_597
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5a0

    :pswitch_59b
    move/from16 v4, v28

    .line 136
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    :goto_5a0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v5, v25

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 139
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 140
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_5cf

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    goto :goto_5d1

    :cond_5cf
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 142
    :goto_5d1
    invoke-interface {v13, v3, v4, v5}, Lk/b;->j(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    iget v4, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 145
    invoke-static {v0, v3, v1}, Lq/z;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 146
    :goto_5e8
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f1

    .line 147
    invoke-interface {v13, v0}, Lk/b;->c(Landroid/graphics/Bitmap;)V

    :cond_5f1
    move-object/from16 v19, v3

    :cond_5f3
    return-object v19

    :pswitch_data_5f4
    .packed-switch 0x15
        :pswitch_bb
        :pswitch_9f
    .end packed-switch

    :pswitch_data_5fc
    .packed-switch 0x3
        :pswitch_112
        :pswitch_112
        :pswitch_110
        :pswitch_110
        :pswitch_10d
        :pswitch_10d
    .end packed-switch

    :pswitch_data_60c
    .packed-switch 0x2
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
    .end packed-switch

    :pswitch_data_61e
    .packed-switch 0x2
        :pswitch_563
        :pswitch_563
        :pswitch_563
        :pswitch_563
        :pswitch_563
        :pswitch_563
        :pswitch_563
    .end packed-switch

    :pswitch_data_630
    .packed-switch 0x2
        :pswitch_59b
        :pswitch_597
        :pswitch_58e
        :pswitch_585
        :pswitch_581
        :pswitch_578
        :pswitch_574
    .end packed-switch
.end method
