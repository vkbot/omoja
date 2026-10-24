.class public final Lh4/c;
.super Lh4/b;
.source "SourceFile"


# instance fields
.field public final y:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(JJLjava/nio/channels/SeekableByteChannel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lh4/b;-><init>(JJ)V

    iput-object p5, p0, Lh4/c;->y:Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;J)I
    .locals 2

    iget-object v0, p0, Lh4/c;->y:Ljava/nio/channels/SeekableByteChannel;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4/c;->y:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    iget-object p0, p0, Lh4/c;->y:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
