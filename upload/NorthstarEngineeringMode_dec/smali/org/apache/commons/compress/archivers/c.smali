.class public abstract Lorg/apache/commons/compress/archivers/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/commons/compress/archivers/a;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# static fields
.field static final BYTE_MASK:I = 0xff


# instance fields
.field private bytesWritten:J

.field private final oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/c;->oneByte:[B

    return-void
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/a;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract closeArchiveEntry()V
.end method

.method public count(I)V
    .locals 2

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/c;->count(J)V

    return-void
.end method

.method public count(J)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/c;->bytesWritten:J

    :cond_0
    return-void
.end method

.method public abstract createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation
.end method

.method public varargs createArchiveEntry(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lorg/apache/commons/compress/archivers/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/c;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/a;

    move-result-object p0

    return-object p0
.end method

.method public abstract finish()V
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c;->bytesWritten:J

    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/c;->bytesWritten:J

    long-to-int p0, v0

    return p0
.end method

.method public abstract putArchiveEntry(Lorg/apache/commons/compress/archivers/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/c;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
