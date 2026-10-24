.class public Lorg/apache/poi/openxml4j/opc/ZipPackagePart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"


# instance fields
.field private zipEntry:Lorg/apache/commons/compress/archivers/zip/o0;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p4}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, v0, p5}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;Z)V

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Method not implemented !"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Method not implemented !"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    check-cast v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-interface {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZipArchive()Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/ZipPackagePart;->zipEntry:Lorg/apache/commons/compress/archivers/zip/o0;

    return-object p0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "Method not implemented !"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method
