.class public final Lh4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field public c:[B

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lh4/i;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lh4/i;->c:[B

    array-length p1, p1

    iput p1, p0, Lh4/i;->y:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lh4/i;->c:[B

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    if-ge p1, v1, :cond_2

    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lh4/i;->c:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lh4/i;->c:[B

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lh4/i;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lh4/i;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final position()J
    .locals 2

    .line 1
    iget p0, p0, Lh4/i;->x:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lh4/i;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lh4/i;->x:I

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Position has to be in range 0.. 2147483647"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p0}, Lh4/i;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lh4/i;->y:I

    iget v2, p0, Lh4/i;->x:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lh4/i;->c:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lh4/i;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Lh4/i;->x:I

    return v0

    :cond_2
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public final size()J
    .locals 2

    iget p0, p0, Lh4/i;->y:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget v0, p0, Lh4/i;->y:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    long-to-int v0, p1

    iput v0, p0, Lh4/i;->y:I

    :cond_0
    iget v0, p0, Lh4/i;->x:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    long-to-int p1, p1

    iput p1, p0, Lh4/i;->x:I

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size has to be in range 0.. 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p0}, Lh4/i;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lh4/i;->y:I

    iget v2, p0, Lh4/i;->x:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    add-int/2addr v2, v0

    if-gez v2, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lh4/i;->a(I)V

    iget v1, p0, Lh4/i;->x:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lh4/i;->a(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lh4/i;->c:[B

    iget v2, p0, Lh4/i;->x:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lh4/i;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Lh4/i;->x:I

    iget v1, p0, Lh4/i;->y:I

    if-ge v1, p1, :cond_2

    iput p1, p0, Lh4/i;->y:I

    :cond_2
    return v0

    :cond_3
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method
