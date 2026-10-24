.class public Lcom/github/mjdev/libaums/driver/ByteBlockDevice;
.super Ljava/lang/Object;
.source "ByteBlockDevice.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/driver/ByteBlockDevice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0012H\u0016R\u0014\u0010\u0006\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/ByteBlockDevice;",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "targetBlockDevice",
        "logicalOffsetToAdd",
        "",
        "(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;I)V",
        "blockSize",
        "getBlockSize",
        "()I",
        "blocks",
        "",
        "getBlocks",
        "()J",
        "init",
        "",
        "read",
        "byteOffset",
        "dest",
        "Ljava/nio/ByteBuffer;",
        "write",
        "src",
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
.field public static final Companion:Lcom/github/mjdev/libaums/driver/ByteBlockDevice$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final logicalOffsetToAdd:I

.field private final targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->Companion:Lcom/github/mjdev/libaums/driver/ByteBlockDevice$Companion;

    .line 110
    const-class v0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ByteBlockDevice::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;I)V
    .locals 1
    .param p1, "targetBlockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .param p2, "logicalOffsetToAdd"    # I

    const-string v0, "targetBlockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    iput p2, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->logicalOffsetToAdd:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 12
    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;I)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getBlocks()J
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->getBlocks()J

    move-result-wide v0

    return-wide v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->init()V

    .line 22
    return-void
.end method

.method public read(JLjava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "byteOffset"    # J
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p1, v0

    iget v2, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->logicalOffsetToAdd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 29
    .local v0, "devOffset":J
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    .local v2, "tmp":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    const-string v4, "tmp"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    rem-long v3, p1, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 37
    .local v3, "limit":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 43
    .end local v2    # "tmp":Ljava/nio/ByteBuffer;
    .end local v3    # "limit":I
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_3

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v5

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    .line 48
    .local v3, "rounded":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v5, "ByteBuffer.allocate(rounded)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    .line 49
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 51
    .end local v3    # "rounded":I
    :cond_1
    move-object v2, p3

    .line 52
    :goto_0
    nop

    .line 54
    iget-object v3, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v3, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method

.method public write(JLjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "byteOffset"    # J
    .param p3, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p1, v0

    iget v2, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->logicalOffsetToAdd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 69
    .local v0, "devOffset":J
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 73
    .local v2, "tmp":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    const-string v4, "tmp"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 74
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    rem-long v3, p1, v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 77
    .local v3, "remaining":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 80
    iget-object v4, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v4, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 82
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 85
    .end local v2    # "tmp":Ljava/nio/ByteBuffer;
    .end local v3    # "remaining":I
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->getBlockSize()I

    move-result v5

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    .line 92
    .local v3, "rounded":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v5, "ByteBuffer.allocate(rounded)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    .line 93
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 97
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 101
    .end local v3    # "rounded":I
    :cond_1
    move-object v2, p3

    .line 102
    :goto_0
    nop

    .line 104
    iget-object v3, p0, Lcom/github/mjdev/libaums/driver/ByteBlockDevice;->targetBlockDevice:Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    invoke-interface {v3, v0, v1, v2}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->write(JLjava/nio/ByteBuffer;)V

    .line 106
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method
