.class Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/r0;
.source "SourceFile"


# instance fields
.field private final out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->close()V

    return-void
.end method

.method public closeArchiveEntry()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->closeEntry()V

    return-void
.end method

.method public finish()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->finish()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public bridge synthetic putArchiveEntry(Lorg/apache/commons/compress/archivers/a;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V

    return-void
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->putNextEntry(Ljava/lang/String;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->setLevel(I)V

    return-void
.end method

.method public write(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;->out:Lorg/apache/poi/xssf/streaming/OpcOutputStream;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->write([BII)V

    return-void
.end method
