.class public final Ls/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/h$b;
    }
.end annotation


# static fields
.field public static final f:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Li/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Li/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ls/h$a;

.field public static final k:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lm/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lm/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Li/b;->x:Li/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Ls/h;->f:Li/g;

    sget-object v0, Li/i;->c:Li/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Ls/h;->g:Li/g;

    sget-object v0, Ls/g;->a:Ls/g$e;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v1

    sput-object v1, Ls/h;->h:Li/g;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Ls/h;->i:Li/g;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v0, Ls/h$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls/h;->j:Ls/h$a;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    sget-object v0, Lf0/j;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Ls/h;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lm/d;Lm/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ls/l;->a()Ls/l;

    move-result-object v0

    iput-object v0, p0, Ls/h;->e:Ls/l;

    iput-object p1, p0, Ls/h;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    if-eqz p2, :cond_2

    iput-object p2, p0, Ls/h;->b:Landroid/util/DisplayMetrics;

    if-eqz p3, :cond_1

    iput-object p3, p0, Ls/h;->a:Lm/d;

    if-eqz p4, :cond_0

    iput-object p4, p0, Ls/h;->c:Lm/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/h$b;Lm/d;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    invoke-interface {p2}, Ls/h$b;->a()V

    invoke-interface {p0}, Ls/m;->a()V

    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, Ls/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p0, p1}, Ls/m;->c(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {v4, v1, v2, v3, p1}, Ls/h;->e(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {p3, v0}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, Ls/h;->c(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/h$b;Lm/d;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Ls/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_1
    :try_start_3
    throw v1

    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    sget-object p1, Ls/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception decoding bitmap, outWidth: "

    const-string v2, ", outHeight: "

    const-string v3, ", outMimeType: "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", inBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Ls/h;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final a(Ls/m;IILi/h;Ls/h$b;)Ls/d;
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    iget-object v1, v12, Ls/h;->c:Lm/b;

    const/high16 v2, 0x10000

    const-class v3, [B

    invoke-interface {v1, v3, v2}, Lm/b;->c(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    const-class v1, Ls/h;

    monitor-enter v1

    :try_start_0
    sget-object v14, Ls/h;->k:Ljava/util/ArrayDeque;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v2, :cond_0

    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2}, Ls/h;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move-object v15, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :goto_0
    monitor-exit v1

    iput-object v13, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v1, Ls/h;->f:Li/g;

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Li/b;

    sget-object v1, Ls/h;->g:Li/g;

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Li/i;

    sget-object v1, Ls/g;->d:Li/g;

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ls/g;

    sget-object v1, Ls/h;->h:Li/g;

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Ls/h;->i:Li/g;

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    :try_start_3
    invoke-virtual/range {v1 .. v11}, Ls/h;->b(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/g;Li/b;Li/i;ZIIZLs/h$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v12, Ls/h;->a:Lm/d;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    new-instance v2, Ls/d;

    invoke-direct {v2, v0, v1}, Ls/d;-><init>(Landroid/graphics/Bitmap;Lm/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v2

    :goto_3
    invoke-static {v15}, Ls/h;->f(Landroid/graphics/BitmapFactory$Options;)V

    monitor-enter v14

    :try_start_4
    invoke-virtual {v14, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, v12, Ls/h;->c:Lm/b;

    invoke-interface {v1, v13}, Lm/b;->d(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {v15}, Ls/h;->f(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v2, Ls/h;->k:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_6
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, v12, Ls/h;->c:Lm/b;

    invoke-interface {v1, v13}, Lm/b;->d(Ljava/lang/Object;)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    monitor-exit v1

    throw v0
.end method

.method public final b(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/g;Li/b;Li/i;ZIIZLs/h$b;)Landroid/graphics/Bitmap;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    sget v8, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v11, v1, Ls/h;->a:Lm/d;

    invoke-static {v2, v3, v7, v11}, Ls/h;->c(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/h$b;Lm/d;)Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v13, v14}, [I

    move-result-object v13

    aget v14, v13, v12

    aget v13, v13, v10

    iget-object v15, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v12, -0x1

    if-eq v14, v12, :cond_1

    if-ne v13, v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v12, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ls/m;->b()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    const/4 v10, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v10, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v10, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v17, 0xb4

    move/from16 v10, v17

    :goto_2
    packed-switch v16, :pswitch_data_1

    move-wide/from16 v19, v8

    const/4 v8, 0x0

    goto :goto_3

    :pswitch_3
    move-wide/from16 v19, v8

    const/4 v8, 0x1

    :goto_3
    const/high16 v9, -0x80000000

    if-ne v5, v9, :cond_4

    const/16 v9, 0x5a

    if-eq v10, v9, :cond_3

    const/16 v9, 0x10e

    if-ne v10, v9, :cond_2

    goto :goto_5

    :cond_2
    move v5, v14

    :goto_4
    const/high16 v9, -0x80000000

    goto :goto_6

    :cond_3
    const/16 v9, 0x10e

    :goto_5
    move v5, v13

    goto :goto_4

    :cond_4
    :goto_6
    if-ne v6, v9, :cond_7

    const/16 v9, 0x5a

    if-eq v10, v9, :cond_6

    const/16 v9, 0x10e

    if-ne v10, v9, :cond_5

    goto :goto_7

    :cond_5
    move v9, v13

    goto :goto_8

    :cond_6
    :goto_7
    move v9, v14

    goto :goto_8

    :cond_7
    move v9, v6

    :goto_8
    invoke-interface/range {p1 .. p1}, Ls/m;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    move-object/from16 v17, v15

    const-string v15, ", target density: "

    const-string v4, ", density: "

    move/from16 v22, v8

    const-string/jumbo v8, "x"

    move/from16 v23, v12

    const-string v12, "Downsampler"

    const-string v1, "]"

    if-lez v14, :cond_1c

    if-gtz v13, :cond_8

    move-object v0, v1

    move-object v2, v4

    move-object v4, v11

    move v11, v13

    move v10, v14

    move-object v1, v15

    const/4 v7, 0x3

    const/16 v21, 0x0

    move-object v14, v8

    move-object v8, v12

    goto/16 :goto_17

    :cond_8
    move-object/from16 p6, v1

    const/16 v1, 0x5a

    if-eq v10, v1, :cond_a

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_9

    goto :goto_a

    :cond_9
    move-object/from16 v18, v4

    move v4, v13

    move v1, v14

    :goto_9
    move-object/from16 v24, v15

    goto :goto_b

    :cond_a
    :goto_a
    move-object/from16 v18, v4

    move v1, v13

    move v4, v14

    goto :goto_9

    :goto_b
    invoke-virtual {v0, v1, v4, v5, v9}, Ls/g;->b(IIII)F

    move-result v15

    const/16 v21, 0x0

    cmpg-float v25, v15, v21

    if-lez v25, :cond_1b

    move/from16 v25, v10

    invoke-virtual {v0, v1, v4, v5, v9}, Ls/g;->a(IIII)Ls/g$g;

    move-result-object v10

    if-eqz v10, :cond_1a

    move-object/from16 v26, v8

    int-to-float v8, v1

    move/from16 v27, v13

    mul-float v13, v15, v8

    move/from16 v28, v14

    float-to-double v13, v13

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v29

    double-to-int v13, v13

    int-to-float v14, v4

    move-object/from16 v31, v12

    mul-float v12, v15, v14

    move-object/from16 v32, v11

    float-to-double v11, v12

    add-double v11, v11, v29

    double-to-int v11, v11

    div-int v12, v1, v13

    div-int v11, v4, v11

    sget-object v13, Ls/g$g;->c:Ls/g$g;

    if-ne v10, v13, :cond_b

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_c

    :cond_b
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_c
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v10, v13, :cond_c

    int-to-float v10, v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v13, v12, v15

    cmpg-float v10, v10, v13

    if-gez v10, :cond_c

    shl-int/lit8 v11, v11, 0x1

    :cond_c
    iput v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v10, :cond_e

    const/16 v1, 0x8

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    div-float/2addr v14, v1

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v1, v12

    div-int/lit8 v6, v11, 0x8

    if-lez v6, :cond_d

    div-int/2addr v4, v6

    div-int/2addr v1, v6

    :cond_d
    move v6, v4

    :goto_d
    move-object/from16 v4, v32

    goto :goto_11

    :cond_e
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v6, v10, :cond_f

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v10, :cond_10

    :cond_f
    move-object/from16 v4, v32

    goto :goto_10

    :cond_10
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v6, v10, :cond_11

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v6, v10, :cond_12

    :cond_11
    move-object/from16 v4, v32

    goto :goto_f

    :cond_12
    rem-int v6, v1, v11

    if-nez v6, :cond_13

    rem-int v6, v4, v11

    if-eqz v6, :cond_14

    :cond_13
    const/4 v1, 0x1

    goto :goto_e

    :cond_14
    div-int/2addr v1, v11

    div-int/2addr v4, v11

    move v6, v1

    move v1, v4

    goto :goto_d

    :goto_e
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v4, v32

    invoke-static {v2, v3, v7, v4}, Ls/h;->c(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/h$b;Lm/d;)Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v8, v10}, [I

    move-result-object v8

    aget v10, v8, v6

    aget v6, v8, v1

    move v1, v6

    move v6, v10

    goto :goto_11

    :goto_f
    int-to-float v1, v11

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_11

    :goto_10
    int-to-float v1, v11

    div-float/2addr v8, v1

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v6, v12

    div-float/2addr v14, v1

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v1, v12

    :goto_11
    invoke-virtual {v0, v6, v1, v5, v9}, Ls/g;->b(IIII)F

    move-result v0

    float-to-double v12, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v12, v32

    if-gtz v0, :cond_15

    move-wide/from16 v34, v12

    goto :goto_12

    :cond_15
    div-double v34, v32, v12

    :goto_12
    const-wide v36, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    move v8, v11

    int-to-double v10, v7

    mul-double/2addr v10, v12

    add-double v10, v10, v29

    double-to-int v10, v10

    int-to-float v11, v10

    int-to-float v7, v7

    div-float/2addr v11, v7

    move/from16 p3, v8

    float-to-double v7, v11

    div-double v7, v12, v7

    int-to-double v10, v10

    mul-double/2addr v7, v10

    add-double v7, v7, v29

    double-to-int v7, v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_16

    move-wide/from16 v32, v12

    goto :goto_13

    :cond_16
    div-double v32, v32, v12

    :goto_13
    mul-double v32, v32, v36

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_17

    if-lez v0, :cond_17

    if-eq v7, v0, :cond_17

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_14
    move-object/from16 v8, v31

    const/4 v7, 0x2

    goto :goto_15

    :cond_17
    const/4 v0, 0x0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_14

    :goto_15
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "Calculate scaling, source: ["

    const-string v7, "], degreesToRotate: "

    move-object/from16 v14, v26

    move/from16 v11, v27

    move/from16 v10, v28

    invoke-static {v0, v10, v14, v11, v7}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", target: ["

    move/from16 v2, v25

    invoke-static {v0, v2, v7, v5, v14}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "], power of two scaled: ["

    invoke-static {v0, v9, v2, v6, v14}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], exact scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power of 2 sample size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjusted scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_18
    move-object/from16 v2, v18

    move-object/from16 v1, v24

    move-object/from16 v14, v26

    move/from16 v11, v27

    move/from16 v10, v28

    :cond_19
    :goto_16
    move-object/from16 v6, p0

    goto/16 :goto_18

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move v11, v13

    move v10, v14

    move-object v14, v8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot scale with factor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-static {v2, v10, v14, v11, v0}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    move-object v0, v1

    move-object v2, v4

    move-object v4, v11

    move v11, v13

    move v10, v14

    move-object v1, v15

    const/16 v21, 0x0

    move-object v14, v8

    move-object v8, v12

    const/4 v7, 0x3

    :goto_17
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Unable to determine dimensions for: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with target ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :goto_18
    iget-object v0, v6, Ls/h;->e:Ls/l;

    move/from16 v12, v22

    move/from16 v7, v23

    invoke-virtual {v0, v5, v9, v7, v12}, Ls/l;->b(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_1d
    if-eqz v0, :cond_1e

    move/from16 v12, v21

    goto :goto_1a

    :cond_1e
    sget-object v0, Li/b;->c:Li/b;

    move-object/from16 v7, p4

    move/from16 v12, v21

    if-eq v7, v0, :cond_20

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ls/m;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_19

    :catch_0
    move-exception v0

    const/4 v13, 0x3

    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1f

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_19
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v7, :cond_21

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_1a

    :cond_20
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_21
    :goto_1a
    if-ltz v10, :cond_22

    if-ltz v11, :cond_22

    if-eqz p9, :cond_22

    goto :goto_1c

    :cond_22
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v0, :cond_23

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v5, :cond_23

    if-eq v0, v5, :cond_23

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    goto :goto_1b

    :cond_23
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1b
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v10

    int-to-float v9, v5

    div-float/2addr v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    int-to-float v12, v11

    div-float/2addr v12, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v9, v9

    mul-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v12, 0x2

    invoke-static {v8, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_24

    const-string v12, "Calculated target ["

    const-string v13, "] for source ["

    invoke-static {v12, v7, v14, v9, v13}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], sampleSize: "

    invoke-static {v12, v10, v14, v11, v13}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", targetDensity: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", density multiplier: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move v5, v7

    :goto_1c
    if-lez v5, :cond_27

    if-lez v9, :cond_27

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v7, :cond_25

    goto :goto_1e

    :cond_25
    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    if-nez v7, :cond_26

    goto :goto_1d

    :cond_26
    move-object v0, v7

    :goto_1d
    invoke-interface {v4, v5, v9, v0}, Lm/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_27
    :goto_1e
    sget-object v0, Li/i;->r:Li/i;

    move-object/from16 v5, p5

    if-ne v5, v0, :cond_28

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1f

    :cond_28
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1f
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    move-object/from16 v5, p1

    move-object/from16 v7, p10

    invoke-static {v5, v3, v7, v4}, Ls/h;->c(Ls/m;Landroid/graphics/BitmapFactory$Options;Ls/h$b;Lm/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v7, v0, v4}, Ls/h$b;->b(Landroid/graphics/Bitmap;Lm/d;)V

    const/4 v5, 0x2

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_29

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Decoded "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls/h;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with inBitmap "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7}, Ls/h;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], sample size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Lf0/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v2, v6, Ls/h;->b:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v16, :pswitch_data_2

    move-object v1, v0

    goto/16 :goto_22

    :pswitch_4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, -0x40800000    # -1.0f

    packed-switch v16, :pswitch_data_3

    goto :goto_20

    :pswitch_5
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_6
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_8
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    :pswitch_9
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    :pswitch_a
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_b
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_20
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    goto :goto_21

    :cond_2a
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_21
    invoke-interface {v4, v5, v6, v7}, Lm/d;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v3, Ls/s;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v7, Ls/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v5

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-interface {v4, v0}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    goto :goto_23

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2b
    :goto_23
    return-object v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
