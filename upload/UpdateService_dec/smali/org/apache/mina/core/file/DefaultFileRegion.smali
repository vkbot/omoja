.class public Lorg/apache/mina/core/file/DefaultFileRegion;
.super Ljava/lang/Object;
.source "DefaultFileRegion.java"

# interfaces
.implements Lorg/apache/mina/core/file/FileRegion;


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final originalPosition:J

.field private position:J

.field private remainingBytes:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "remainingBytes"    # J

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-eqz p1, :cond_2

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 71
    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 75
    iput-object p1, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    .line 76
    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    .line 77
    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    .line 78
    iput-wide p4, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    .line 79
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remainingBytes may not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position may not be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public getRemainingBytes()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    return-wide v0
.end method

.method public getWrittenBytes()J
    .locals 4

    .line 86
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    iget-wide v2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public update(J)V
    .locals 2
    .param p1, "value"    # J

    .line 118
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    .line 119
    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    .line 120
    return-void
.end method
