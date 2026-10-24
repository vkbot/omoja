.class public final Lo4/b;
.super Lo4/a;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v0}, Lz4/b;->g(D[D)D

    move-result-wide v0

    new-instance v2, Lz4/e;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lz4/e;-><init>(I)V

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_3

    int-to-long v7, v4

    invoke-static {v0, v1, v7, v8}, Lz4/b;->k(DJ)D

    move-result-wide v7

    sget-object v9, Lz4/a;->a:[J

    if-ltz v4, :cond_2

    if-gt v4, v3, :cond_1

    sget-object v9, Lz4/a;->a:[J

    aget-wide v9, v9, v4

    long-to-double v9, v9

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    monitor-enter v2

    :try_start_0
    iget-object v7, v2, Lz4/e;->y:[D

    array-length v7, v7

    iget v8, v2, Lz4/e;->Z:I

    if-gt v7, v8, :cond_0

    invoke-virtual {v2}, Lz4/e;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v7, v2, Lz4/e;->y:[D

    iget v8, v2, Lz4/e;->Z:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lz4/e;->Z:I

    aput-wide v5, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v2

    throw v0

    :cond_1
    new-instance v0, Lp4/c;

    invoke-direct {v0}, Lp4/c;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lp4/j;

    sget-object v1, Lq4/c;->g1:Lq4/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lp4/j;-><init>(Lq4/c;Ljava/lang/Integer;)V

    throw v0

    :cond_3
    monitor-enter v2

    :try_start_1
    iget v0, v2, Lz4/e;->Z:I

    new-array v1, v0, [D

    iget-object v3, v2, Lz4/e;->y:[D

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
