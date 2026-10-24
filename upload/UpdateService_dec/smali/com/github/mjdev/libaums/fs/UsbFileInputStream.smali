.class public final Lcom/github/mjdev/libaums/fs/UsbFileInputStream;
.super Ljava/io/InputStream;
.source "UsbFileInputStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/UsbFileInputStream$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/UsbFileInputStream;",
        "Ljava/io/InputStream;",
        "file",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "(Lcom/github/mjdev/libaums/fs/UsbFile;)V",
        "currentByteOffset",
        "",
        "available",
        "",
        "close",
        "",
        "read",
        "buffer",
        "",
        "byteOffset",
        "byteCount",
        "skip",
        "Companion",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/mjdev/libaums/fs/UsbFileInputStream$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentByteOffset:J

.field private final file:Lcom/github/mjdev/libaums/fs/UsbFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/UsbFileInputStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->Companion:Lcom/github/mjdev/libaums/fs/UsbFileInputStream$Companion;

    .line 114
    const-class v0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbFileInputStream::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/fs/UsbFile;)V
    .locals 2
    .param p1, "file"    # Lcom/github/mjdev/libaums/fs/UsbFile;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    .line 34
    invoke-interface {p1}, Lcom/github/mjdev/libaums/fs/UsbFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UsbFileInputStream cannot be created on directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->TAG:Ljava/lang/String;

    const-string v1, "available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->close()V

    .line 64
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v2}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 50
    const/4 v0, -0x1

    return v0

    .line 53
    :cond_0
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    const-string v4, "buffer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->read(JLjava/nio/ByteBuffer;)V

    .line 56
    iget-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    return v1
.end method

.method public read([B)I
    .locals 9
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v2}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 70
    const/4 v0, -0x1

    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v0

    .line 74
    .local v0, "length":J
    array-length v2, p1

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    .local v2, "toRead":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 77
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    long-to-int v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    iget-object v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v6, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    const-string v8, "byteBuffer"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6, v7, v4}, Lcom/github/mjdev/libaums/fs/UsbFile;->read(JLjava/nio/ByteBuffer;)V

    .line 80
    iget-wide v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    .line 82
    long-to-int v5, v2

    return v5
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-wide v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v2}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v0

    .line 93
    .local v0, "length":J
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 95
    .local v2, "toRead":J
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 96
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    long-to-int v5, v2

    add-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    iget-object v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    iget-wide v6, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    const-string v8, "byteBuffer"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6, v7, v4}, Lcom/github/mjdev/libaums/fs/UsbFile;->read(JLjava/nio/ByteBuffer;)V

    .line 100
    iget-wide v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    .line 102
    long-to-int v5, v2

    return v5
.end method

.method public skip(J)J
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->file:Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 108
    .local v0, "skippedBytes":J
    iget-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/github/mjdev/libaums/fs/UsbFileInputStream;->currentByteOffset:J

    .line 109
    return-wide v0
.end method
