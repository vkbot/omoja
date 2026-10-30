.class public abstract Lorg/apache/commons/io/build/AbstractOriginSupplier;
.super Lorg/apache/commons/io/build/AbstractSupplier;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractOriginSupplier<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractSupplier<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private origin:Lorg/apache/commons/io/build/AbstractOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractSupplier;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newByteArrayOrigin([B)Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newChannelOrigin(Ljava/nio/channels/Channel;)Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;-><init>(Ljava/nio/channels/Channel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newCharSequenceOrigin(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;
    .locals 1

    .line 12
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static newInputStreamOrigin(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newOutputStreamOrigin(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newPathOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p0, v1}, Lai/onnxruntime/c;->t(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static newPathOrigin(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;
    .locals 1

    .line 14
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static newRandomAccessFileOrigin(Lorg/apache/commons/io/IORandomAccessFile;)Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;-><init>(Lorg/apache/commons/io/IORandomAccessFile;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newRandomAccessFileOrigin(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;
    .locals 1

    .line 7
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public static newReaderOrigin(Ljava/io/Reader;)Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newURIOrigin(Ljava/net/URI;)Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;-><init>(Ljava/net/URI;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newWriterOrigin(Ljava/io/Writer;)Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOriginSupplier;->origin:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "origin == null"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getOrigin()Lorg/apache/commons/io/build/AbstractOrigin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOriginSupplier;->origin:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasOrigin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/build/AbstractOriginSupplier;->origin:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newByteArrayOrigin([B)Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setChannel(Ljava/nio/channels/Channel;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/Channel;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newChannelOrigin(Ljava/nio/channels/Channel;)Lorg/apache/commons/io/build/AbstractOrigin$ChannelOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setCharSequence(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newCharSequenceOrigin(Ljava/lang/CharSequence;)Lorg/apache/commons/io/build/AbstractOrigin$CharSequenceOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setFile(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    return-object p1
.end method

.method public setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newInputStreamOrigin(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOrigin$InputStreamOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/build/AbstractOriginSupplier;->origin:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 8
    .line 9
    return-object p1
.end method

.method public setOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newOutputStreamOrigin(Ljava/io/OutputStream;)Lorg/apache/commons/io/build/AbstractOrigin$OutputStreamOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newPathOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    return-object p1
.end method

.method public setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newPathOrigin(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOrigin$PathOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setRandomAccessFile(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")TB;"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newRandomAccessFileOrigin(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/build/AbstractOrigin$RandomAccessFileOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p1

    return-object p1
.end method

.method public setRandomAccessFile(Lorg/apache/commons/io/IORandomAccessFile;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/IORandomAccessFile;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newRandomAccessFileOrigin(Lorg/apache/commons/io/IORandomAccessFile;)Lorg/apache/commons/io/build/AbstractOrigin$IORandomAccessFileOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setReader(Ljava/io/Reader;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newReaderOrigin(Ljava/io/Reader;)Lorg/apache/commons/io/build/AbstractOrigin$ReaderOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setURI(Ljava/net/URI;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newURIOrigin(Ljava/net/URI;)Lorg/apache/commons/io/build/AbstractOrigin$URIOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setWriter(Ljava/io/Writer;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newWriterOrigin(Ljava/io/Writer;)Lorg/apache/commons/io/build/AbstractOrigin$WriterOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
