.class public final Lorg/apache/commons/io/output/e;
.super Lorg/apache/commons/io/output/g;
.source "SourceFile"


# instance fields
.field public c:J


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/output/e;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/e;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
