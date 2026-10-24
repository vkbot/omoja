.class public abstract Ly/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly/l;

.field public static final b:Lj/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Ly/j;

    invoke-direct {v0}, Ly/j;-><init>()V

    sput-object v0, Ly/f;->a:Ly/l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Ly/i;

    invoke-direct {v0}, Ly/i;-><init>()V

    sput-object v0, Ly/f;->a:Ly/l;

    goto :goto_0

    :cond_1
    new-instance v0, Ly/h;

    invoke-direct {v0}, Ly/h;-><init>()V

    sput-object v0, Ly/f;->a:Ly/l;

    :goto_0
    new-instance v0, Lj/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lj/e;-><init>(I)V

    sput-object v0, Ly/f;->b:Lj/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Lx/c;Landroid/content/res/Resources;IILx/k;Z)Landroid/graphics/Typeface;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p4

    move-object/from16 v2, p5

    instance-of v3, v1, Lx/f;

    const/4 v8, -0x3

    if-eqz v3, :cond_d

    check-cast v1, Lx/f;

    iget-object v3, v1, Lx/f;->d:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v9

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lx/k;->b(Landroid/graphics/Typeface;)V

    :cond_2
    return-object v3

    :cond_3
    const/4 v11, 0x1

    if-eqz p6, :cond_4

    iget v3, v1, Lx/f;->c:I

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    :goto_2
    move v3, v11

    goto :goto_3

    :cond_5
    move v3, v10

    :goto_3
    const/4 v4, -0x1

    if-eqz p6, :cond_6

    iget v5, v1, Lx/f;->b:I

    move v12, v5

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_4
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Ly/e;

    invoke-direct {v6, v2}, Ly/e;-><init>(Lx/k;)V

    iget-object v13, v1, Lx/f;->a:Ld0/c;

    new-instance v14, Landroidx/appcompat/widget/d0;

    const/4 v1, 0x4

    invoke-direct {v14, v1, v6, v5}, Landroidx/appcompat/widget/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v3, :cond_9

    sget-object v1, Ld0/g;->a:Lj/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Ld0/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Ld0/g;->a:Lj/e;

    invoke-virtual {v1, v2}, Lj/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_7

    iget-object v0, v14, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Ld0/j;

    iget-object v2, v14, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Ld0/a;

    invoke-direct {v3, v14, v0, v1, v10}, Ld0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_7
    if-ne v12, v4, :cond_8

    invoke-static {v2, p0, v13, v7}, Ld0/g;->a(Ljava/lang/String;Landroid/content/Context;Ld0/c;I)Ld0/f;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/appcompat/widget/d0;->g(Ld0/f;)V

    iget-object v9, v0, Ld0/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_7

    :cond_8
    new-instance v11, Ld0/d;

    const/4 v6, 0x0

    move-object v1, v11

    move-object v3, p0

    move-object v4, v13

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Ld0/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ld0/c;II)V

    :try_start_0
    sget-object v0, Ld0/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v1, v12

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    check-cast v0, Ld0/f;

    invoke-virtual {v14, v0}, Landroidx/appcompat/widget/d0;->g(Ld0/f;)V

    iget-object v9, v0, Ld0/f;->a:Landroid/graphics/Typeface;

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
    iget-object v0, v14, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Ld0/j;

    iget-object v1, v14, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Ld0/b;

    invoke-direct {v2, v14, v0, v8, v10}, Ld0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_9
    sget-object v1, Ld0/g;->a:Lj/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Ld0/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Ld0/g;->a:Lj/e;

    invoke-virtual {v1, v8}, Lj/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_a

    iget-object v0, v14, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Ld0/j;

    iget-object v2, v14, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Ld0/a;

    invoke-direct {v3, v14, v0, v1, v10}, Ld0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    move-object v9, v1

    goto :goto_7

    :cond_a
    new-instance v1, Ld0/e;

    invoke-direct {v1, v10, v14}, Ld0/e;-><init>(ILjava/lang/Object;)V

    sget-object v3, Ld0/g;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Ld0/g;->d:Lj/j;

    invoke-virtual {v2, v8, v9}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_7

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8, v4}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v10, Ld0/d;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v2, v8

    move-object v3, p0

    move-object v4, v13

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Ld0/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ld0/c;II)V

    sget-object v0, Ld0/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ld0/e;

    invoke-direct {v1, v11, v8}, Ld0/e;-><init>(ILjava/lang/Object;)V

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
    new-instance v3, Ld0/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v10, v1, v4}, Ld0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    move-object/from16 v4, p2

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    sget-object v3, Ly/f;->a:Ly/l;

    check-cast v1, Lx/d;

    move-object/from16 v4, p2

    invoke-virtual {v3, p0, v1, v4, v7}, Ly/l;->a(Landroid/content/Context;Lx/d;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v9

    if-eqz v2, :cond_f

    if-eqz v9, :cond_e

    invoke-virtual {v2, v9}, Lx/k;->b(Landroid/graphics/Typeface;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v2, v8}, Lx/k;->a(I)V

    :cond_f
    :goto_8
    if-eqz v9, :cond_10

    sget-object v0, Ly/f;->b:Lj/e;

    invoke-static/range {p2 .. p4}, Ly/f;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lj/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v9
.end method

.method public static b(Landroid/content/res/Resources;II)Ljava/lang/String;
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
