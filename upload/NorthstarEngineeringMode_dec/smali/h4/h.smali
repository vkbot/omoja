.class public Lh4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;"
        }
    .end annotation
.end field

.field public r:J

.field public x:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh4/h;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lh4/h;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Lh4/h;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v1

    add-long/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3, p4}, Lh4/h;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 2

    iget-object p0, p0, Lh4/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    :try_start_0
    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "failed to close wrapped channel"

    invoke-direct {p0, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 2

    iget-object p0, p0, Lh4/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final position()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lh4/h;->r:J

    return-wide v0
.end method

.method public final declared-synchronized position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 9

    const-string v0, "Negative position: "

    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh4/h;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-wide p1, p0, Lh4/h;->r:J

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lh4/h;->c:Ljava/util/List;

    .line 3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lh4/h;->c:Ljava/util/List;

    .line 4
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SeekableByteChannel;

    .line 5
    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, p1, v6

    if-nez v8, :cond_0

    move-wide v6, p1

    move-wide p1, v1

    goto :goto_1

    :cond_0
    cmp-long v8, p1, v4

    if-gtz v8, :cond_1

    iput v0, p0, Lh4/h;->x:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    sub-long/2addr p1, v4

    move-wide v6, p1

    move-wide p1, v4

    .line 6
    :goto_1
    invoke-interface {v3, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    move-wide p1, v6

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit p0

    return-object p0

    .line 8
    :cond_3
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    .line 9
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lh4/h;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lh4/h;->x:I

    iget-object v3, p0, Lh4/h;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lh4/h;->c:Ljava/util/List;

    iget v3, p0, Lh4/h;->x:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget v0, p0, Lh4/h;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh4/h;->x:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    iget v0, p0, Lh4/h;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh4/h;->x:I

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    iget-wide v2, p0, Lh4/h;->r:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lh4/h;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    monitor-exit p0

    return v2

    :cond_5
    :try_start_2
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final size()J
    .locals 4

    invoke-virtual {p0}, Lh4/h;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lh4/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public final truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    new-instance p0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 0

    new-instance p0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p0
.end method
