.class public abstract Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz/g;

.field public static final b:Lk/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz/g;

    invoke-direct {v0}, Lz/g;-><init>()V

    sput-object v0, Lz/f;->a:Lz/g;

    new-instance v0, Lk/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lk/e;-><init>(I)V

    sput-object v0, Lz/f;->b:Lk/e;

    return-void
.end method

.method public static a(Landroid/content/Context;[Le0/i;I)Landroid/graphics/Typeface;
    .locals 10

    sget-object v0, Lz/f;->a:Lz/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_4

    aget-object v6, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, v6, Le0/i;->a:Landroid/net/Uri;

    const-string v8, "r"

    invoke-virtual {p0, v7, v8, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_0

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_0
    :try_start_2
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v8, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget v9, v6, Le0/i;->c:I

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    iget-boolean v9, v6, Le0/i;->d:Z

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v8, v5}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    iget v6, v6, Le0/i;->b:I

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    if-nez v4, :cond_2

    new-instance v6, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v6, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    :try_start_6
    new-instance p0, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_6

    const/16 p1, 0x2bc

    goto :goto_5

    :cond_6
    const/16 p1, 0x190

    :goto_5
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    move v2, v5

    :cond_7
    invoke-direct {p0, p1, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :goto_6
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ly/c;Landroid/content/res/Resources;IILy/k;Z)Landroid/graphics/Typeface;
    .locals 14

    move-object v0, p1

    move/from16 v6, p4

    move-object/from16 v1, p5

    instance-of v2, v0, Ly/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x3

    if-eqz v2, :cond_d

    check-cast v0, Ly/f;

    iget-object v2, v0, Ly/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ly/k;->b(Landroid/graphics/Typeface;)V

    :cond_2
    return-object v2

    :cond_3
    if-eqz p6, :cond_4

    iget v2, v0, Ly/f;->c:I

    if-nez v2, :cond_5

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    :goto_2
    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v7

    :goto_3
    const/4 v3, -0x1

    if-eqz p6, :cond_6

    iget v4, v0, Ly/f;->b:I

    move v11, v4

    goto :goto_4

    :cond_6
    move v11, v3

    :goto_4
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lz/e;

    invoke-direct {v5, v1}, Lz/e;-><init>(Ly/k;)V

    iget-object v12, v0, Ly/f;->a:Le0/c;

    new-instance v13, Landroidx/appcompat/widget/d0;

    const/4 v0, 0x4

    invoke-direct {v13, v0, v5, v4}, Landroidx/appcompat/widget/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_9

    sget-object v0, Le0/g;->a:Lk/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Le0/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Le0/g;->a:Lk/e;

    invoke-virtual {v0, v1}, Lk/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v1, v13, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v1, Le0/j;

    iget-object v2, v13, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Le0/a;

    invoke-direct {v3, v13, v1, v0, v7}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_7
    if-ne v11, v3, :cond_8

    move-object v2, p0

    invoke-static {v1, p0, v12, v6}, Le0/g;->a(Ljava/lang/String;Landroid/content/Context;Le0/c;I)Le0/f;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/d0;->h(Le0/f;)V

    iget-object v8, v0, Le0/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_7

    :cond_8
    move-object v2, p0

    new-instance v9, Le0/d;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v3, v12

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Le0/d;-><init>(Ljava/lang/String;Landroid/content/Context;Le0/c;II)V

    :try_start_0
    sget-object v0, Le0/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v1, v11

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    check-cast v0, Le0/f;

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/d0;->h(Le0/f;)V

    iget-object v8, v0, Le0/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_7

    :catch_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object v0, v13, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v1, v13, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Le0/b;

    invoke-direct {v2, v13, v0, v10, v7}, Le0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_9
    move-object v2, p0

    sget-object v0, Le0/g;->a:Lk/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Le0/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Le0/g;->a:Lk/e;

    invoke-virtual {v0, v10}, Lk/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_a

    iget-object v1, v13, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v1, Le0/j;

    iget-object v2, v13, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Le0/a;

    invoke-direct {v3, v13, v1, v0, v7}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    move-object v8, v0

    goto :goto_7

    :cond_a
    new-instance v0, Le0/e;

    invoke-direct {v0, v7, v13}, Le0/e;-><init>(ILjava/lang/Object;)V

    sget-object v3, Le0/g;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v1, Le0/g;->d:Lk/j;

    invoke-virtual {v1, v10, v8}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_7

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10, v4}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v7, Le0/d;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v10

    move-object v2, p0

    move-object v3, v12

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Le0/d;-><init>(Ljava/lang/String;Landroid/content/Context;Le0/c;II)V

    sget-object v0, Le0/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Le0/e;

    invoke-direct {v1, v9, v10}, Le0/e;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_6

    :cond_c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    :goto_6
    new-instance v3, Le0/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v7, v1, v4}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    move-object/from16 v13, p2

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    sget-object v2, Lz/f;->a:Lz/g;

    check-cast v0, Ly/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v0, v0, Ly/d;->a:[Ly/e;

    array-length v2, v0

    move v3, v7

    move-object v4, v8

    :goto_8
    if-ge v3, v2, :cond_10

    aget-object v5, v0, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    new-instance v11, Landroid/graphics/fonts/Font$Builder;

    iget v12, v5, Ly/e;->e:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v13, p2

    :try_start_7
    invoke-direct {v11, v13, v12}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    iget v12, v5, Ly/e;->a:I

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget-boolean v12, v5, Ly/e;->b:Z

    if-eqz v12, :cond_e

    move v12, v9

    goto :goto_9

    :cond_e
    move v12, v7

    :goto_9
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget v12, v5, Ly/e;->d:I

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    iget-object v5, v5, Ly/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v5}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    if-nez v4, :cond_f

    new-instance v11, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v11, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v4, v11

    goto :goto_a

    :cond_f
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_4
    move-object/from16 v13, p2

    :catch_5
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v13, p2

    if-nez v4, :cond_11

    goto :goto_c

    :cond_11
    :try_start_8
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_12

    const/16 v2, 0x2bc

    goto :goto_b

    :cond_12
    const/16 v2, 0x190

    :goto_b
    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_13

    move v7, v9

    :cond_13
    invoke-direct {v0, v2, v7}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_c

    :catch_6
    move-object/from16 v13, p2

    :catch_7
    :goto_c
    if-eqz v1, :cond_15

    if-eqz v8, :cond_14

    invoke-virtual {v1, v8}, Ly/k;->b(Landroid/graphics/Typeface;)V

    goto :goto_d

    :cond_14
    invoke-virtual {v1, v10}, Ly/k;->a(I)V

    :cond_15
    :goto_d
    if-eqz v8, :cond_16

    sget-object v0, Lz/f;->b:Lk/e;

    invoke-static/range {p2 .. p4}, Lz/f;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lk/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v8
.end method

.method public static c(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Lz/f;->a:Lz/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lz/f;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz/f;->b:Lk/e;

    invoke-virtual {p1, p0, v0}, Lk/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
