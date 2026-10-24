.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;
.super Ljava/io/InputStream;
.source "AbstractIoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    .line 1500
    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1503
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 1508
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    monitor-exit p0

    return-void

    .line 1507
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1513
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 1518
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1522
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1527
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    .line 1528
    .local v0, "remaining":I
    if-lez v0, :cond_0

    .line 1529
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1530
    .local v1, "readBytes":I
    iget-object v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1531
    return v1

    .line 1534
    .end local v1    # "readBytes":I
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1539
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    monitor-exit p0

    return-void

    .line 1538
    .end local p0    # "this":Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J

    .line 1545
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    .local v0, "bytes":I
    goto :goto_0

    .line 1548
    .end local v0    # "bytes":I
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1550
    .restart local v0    # "bytes":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1551
    int-to-long v1, v0

    return-wide v1
.end method
