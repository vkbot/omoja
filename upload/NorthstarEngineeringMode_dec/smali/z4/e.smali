.class public final Lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/e$a;
    }
.end annotation


# instance fields
.field public Z:I

.field public final c:D

.field public final r:D

.field public final x:Lz4/e$a;

.field public y:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lz4/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    sget-object v0, Lz4/e$a;->c:Lz4/e$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    iput-wide v1, p0, Lz4/e;->c:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iput-wide v3, p0, Lz4/e;->r:D

    iput-object v0, p0, Lz4/e;->x:Lz4/e$a;

    const/4 v5, 0x0

    iput v5, p0, Lz4/e;->Z:I

    if-lez p1, :cond_0

    iput-wide v3, p0, Lz4/e;->r:D

    iput-wide v1, p0, Lz4/e;->c:D

    iput-object v0, p0, Lz4/e;->x:Lz4/e$a;

    .line 3
    new-array p1, p1, [D

    iput-object p1, p0, Lz4/e;->y:[D

    iput v5, p0, Lz4/e;->Z:I

    return-void

    .line 4
    :cond_0
    new-instance p0, Lp4/k;

    sget-object v0, Lq4/c;->j1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lp4/k;-><init>(Lq4/c;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz4/e;->x:Lz4/e$a;

    sget-object v1, Lz4/e$a;->c:Lz4/e$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lz4/e;->y:[D

    array-length v0, v0

    int-to-double v0, v0

    iget-wide v2, p0, Lz4/e;->r:D

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    sget-object v2, Lz4/b;->a:[[D

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lz4/b;->f(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_2

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    mul-double/2addr v0, v2

    :goto_0
    double-to-int v0, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lz4/e;->y:[D

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lz4/e;->r:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lz4/b;->f(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    new-array v0, v0, [D

    iget-object v1, p0, Lz4/e;->y:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lz4/e;->y:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lz4/e;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lz4/e;

    iget-wide v2, v0, Lz4/e;->c:D

    iget-wide v4, p0, Lz4/e;->c:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lz4/e;->r:D

    iget-wide v4, p0, Lz4/e;->r:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, v0, Lz4/e;->x:Lz4/e$a;

    iget-object v3, p0, Lz4/e;->x:Lz4/e$a;

    if-ne v2, v3, :cond_2

    iget v2, v0, Lz4/e;->Z:I

    iget v3, p0, Lz4/e;->Z:I

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lz4/e;->y:[D

    iget-object v0, v0, Lz4/e;->y:[D

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v1

    :goto_0
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized hashCode()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [I

    iget-wide v1, p0, Lz4/e;->r:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-wide v3, p0, Lz4/e;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lz4/e;->x:Lz4/e$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v1, p0, Lz4/e;->y:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v1, p0, Lz4/e;->Z:I

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
