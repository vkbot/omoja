.class public abstract Lorg/apache/commons/compress/archivers/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/commons/compress/archivers/a;",
        ">",
        "Ljava/io/FilterInputStream;"
    }
.end annotation


# instance fields
.field public final c:[B

.field public r:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    sget v0, Li4/a;->a:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/b;->c:[B

    if-nez v0, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/b;->r:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final read()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/b;->c:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-byte p0, v0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_0
    return v2
.end method

.method public final declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
