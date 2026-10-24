.class public final Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# static fields
.field private static final LOG:La5/d;

.field private static final PADDING:Ljava/lang/String; = "PKCS5Padding"


# instance fields
.field private final ci:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final tmpFile:Ljava/io/File;

.field private final zipFile:Lorg/apache/commons/compress/archivers/zip/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:La5/d;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljavax/crypto/Cipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/a1;->builder()Lorg/apache/commons/compress/archivers/zip/a1$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lj4/a$b;

    invoke-direct {v1, p1}, Lj4/a;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lj4/b;->c:Lj4/a;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/a1$c;->k()Lorg/apache/commons/compress/archivers/zip/a1;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Lorg/apache/commons/compress/archivers/zip/a1;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return-void
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/File;[B[B)V
    .locals 6

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v2, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x1

    const-string v5, "PKCS5Padding"

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/q0;

    invoke-direct {p3, p0}, Lorg/apache/commons/compress/archivers/zip/q0;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/r0;

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_0
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/q0;->i()Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra([B)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    new-instance v1, Lorg/apache/commons/io/output/c;

    invoke-direct {v1, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p3, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_0
    :try_start_8
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/r0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz p0, :cond_1

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p0

    goto :goto_7

    :cond_1
    :goto_2
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/q0;->close()V

    return-void

    :catchall_5
    move-exception p1

    goto :goto_5

    :goto_3
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_b
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/r0;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception p1

    :try_start_c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_5
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception p2

    if-eqz p0, :cond_2

    :try_start_e
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_6

    :catchall_9
    move-exception p0

    :try_start_f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_6
    throw p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_7
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception p1

    :try_start_11
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/q0;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_8

    :catchall_b
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1
.end method

.method public static createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 4

    const/16 v0, 0x10

    :try_start_0
    new-array v1, v0, [B

    new-array v0, v0, [B

    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string/jumbo v2, "protectedXlsx"

    const-string v3, ".zip"

    invoke-static {v2, v3}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v2, v0, v1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->copyToFile(Ljava/io/InputStream;Ljava/io/File;[B[B)V

    invoke-static {v2, v0, v1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->fileToSource(Ljava/io/File;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->f()La5/b;

    move-result-object v1

    const-string v2, "Temp file was not deleted, may already have been deleted by another method."

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static fileToSource(Ljava/io/File;[B[B)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;
    .locals 6

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v2, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v4, 0x2

    const-string v5, "PKCS5Padding"

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;-><init>(Ljava/io/File;Ljavax/crypto/Cipher;)V

    return-object p2
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/a1;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->tmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{} can\'t be removed (or was already removed)."

    invoke-interface {v0, v1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntries()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->zipFile:Lorg/apache/commons/compress/archivers/zip/a1;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->ci:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->closed:Z

    return p0
.end method
