.class public final Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"


# instance fields
.field protected data:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p3}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    :cond_0
    :try_start_0
    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    invoke-virtual {v0, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;-><init>(Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 1

    :try_start_0
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method
