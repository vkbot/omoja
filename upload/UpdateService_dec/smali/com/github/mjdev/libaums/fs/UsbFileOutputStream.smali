.class public final Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;
.super Ljava/io/OutputStream;
.source "UsbFileOutputStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;",
        "Ljava/io/OutputStream;",
        "file",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "append",
        "",
        "(Lcom/github/mjdev/libaums/fs/UsbFile;Z)V",
        "currentByteOffset",
        "",
        "close",
        "",
        "flush",
        "write",
        "buffer",
        "",
        "offset",
        "",
        "count",
        "oneByte",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private currentByteOffset:J

.field private final file:Lcom/github/mjdev/libaums/fs/UsbFile;


# direct methods
.method public constructor <init>(Lcom/github/mjdev/libaums/fs/UsbFile;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;-><init>(Lcom/github/mjdev/libaums/fs/UsbFile;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/fs/UsbFile;Z)V
    .locals 2
    .param p1, "file"    # Lcom/github/mjdev/libaums/fs/UsbFile;
    .param p2, "append"    # Z

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    .line 32
    invoke-interface {p1}, Lcom/github/mjdev/libaums/fs/UsbFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    .line 39
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UsbFileOutputStream cannot be created on directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/github/mjdev/libaums/fs/UsbFile;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 28
    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;-><init>(Lcom/github/mjdev/libaums/fs/UsbFile;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    invoke-interface {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/UsbFile;->setLength(J)V

    .line 52
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->close()V

    .line 53
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->flush()V

    .line 58
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    const-string v4, "byteBuffer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->write(JLjava/nio/ByteBuffer;)V

    .line 46
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    .line 47
    return-void
.end method

.method public write([B)V
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    const-string v4, "byteBuffer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->write(JLjava/nio/ByteBuffer;)V

    .line 65
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    array-length v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    .line 66
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    add-int v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 75
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    const-string v4, "byteBuffer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->write(JLjava/nio/ByteBuffer;)V

    .line 77
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileOutputStream;->currentByteOffset:J

    .line 78
    return-void
.end method
