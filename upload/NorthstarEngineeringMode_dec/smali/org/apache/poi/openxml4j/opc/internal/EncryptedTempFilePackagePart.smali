.class public final Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p3}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/internal/ContentType;Z)V

    .line 3
    new-instance p1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->getOutputStreamImpl()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Failed to clear data in temp file"

    invoke-interface {v0, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->tempFile:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/EncryptedTempFilePackagePart;->getOutputStreamImpl()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
