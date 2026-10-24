.class Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;
.super Lorg/apache/commons/compress/archivers/zip/o0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_MAX_ENTRY_SIZE:I = 0x5f5e100

.field private static final LOG:La5/d;

.field private static MAX_ENTRY_SIZE:I


# instance fields
.field private data:[B

.field private encryptedTempData:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

.field private tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->LOG:La5/d;

    const v0, 0x5f5e100

    sput v0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->MAX_ENTRY_SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/io/InputStream;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->getThresholdBytesForTempFiles()I

    move-result v2

    if-ltz v2, :cond_2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->shouldEncryptTempFiles()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->encryptedTempData:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    :try_start_0
    invoke-static {p2, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    const-string/jumbo v2, "poi-zip-entry"

    const-string v3, ".tmp"

    invoke-static {v2, v3}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    sget-object v2, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->f()La5/b;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lg5/a0;

    new-instance v4, Lorg/apache/poi/openxml4j/util/a;

    invoke-direct {v4, p0}, Lorg/apache/poi/openxml4j/util/a;-><init>(Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ls0/e;

    const/16 v5, 0xa

    invoke-direct {v4, v5, p1}, Ls0/e;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v4, v3, p1

    new-instance p1, Lorg/apache/poi/openxml4j/util/b;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/openxml4j/util/b;-><init>(J)V

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const-string p1, "created for temp file {} for zip entry {} of size {} bytes"

    invoke-interface {v2, p1, v3}, La5/b;->a(Ljava/lang/String;[Lg5/a0;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    invoke-static {p2, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)J

    goto :goto_2

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_5

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    if-nez p1, :cond_3

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->getMaxEntrySize()I

    move-result p1

    invoke-static {p2, p1}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_1

    :cond_3
    long-to-int p1, v0

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->getMaxEntrySize()I

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->data:[B

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "ZIP entry size is too large or invalid"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->lambda$new$1(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxEntrySize()I
    .locals 1

    sget v0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->MAX_ENTRY_SIZE:I

    return v0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxEntrySize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->MAX_ENTRY_SIZE:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->data:[B

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->encryptedTempData:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string/jumbo v0, "temp file was already deleted (probably due to previous call to close this resource)"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->encryptedTempData:Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to read from encrypted temp data"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "temp file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->tempFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->data:[B

    if-eqz v0, :cond_2

    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->data:[B

    invoke-virtual {v0, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot retrieve data from Zip Entry, probably because the Zip Entry was closed before the data was requested."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resolveIn(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 3

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/a;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Zip slip \'%s\' + \'%s\' -> \'%s\'"

    filled-new-array {p1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
