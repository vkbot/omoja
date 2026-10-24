.class Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectBufferByteArray"
.end annotation


# instance fields
.field private freed:Z

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayPool;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 129
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    .line 130
    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 131
    return-void
.end method


# virtual methods
.method public free()V
    .locals 7

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$000(Lorg/apache/mina/util/byteaccess/ByteArrayPool;I)I

    move-result v0

    .line 146
    .local v0, "bits":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    monitor-enter v1

    .line 147
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$200(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$500(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$208(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)I

    .line 150
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayPool;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayPool;)J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->last()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/apache/mina/util/byteaccess/ByteArrayPool;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayPool;J)J

    .line 151
    monitor-exit v1

    return-void

    .line 153
    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 141
    .end local v0    # "bits":I
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already freed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    throw v0

    .line 144
    .restart local p0    # "this":Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setFreed(Z)V
    .locals 0
    .param p1, "freed"    # Z

    .line 134
    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayPool$DirectBufferByteArray;->freed:Z

    .line 135
    return-void
.end method
