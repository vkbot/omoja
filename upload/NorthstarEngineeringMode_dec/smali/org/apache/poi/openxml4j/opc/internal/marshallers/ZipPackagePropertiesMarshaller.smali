.class public final Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPackagePropertiesMarshaller;
.super Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 3

    instance-of v0, p2, Lorg/apache/commons/compress/archivers/zip/r0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/r0;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-static {p0, p2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZipOutputStream expected!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
