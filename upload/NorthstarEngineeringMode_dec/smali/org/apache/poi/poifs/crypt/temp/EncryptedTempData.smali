.class public Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;

.field private static final PADDING:Ljava/lang/String; = "PKCS5Padding"

.field private static final cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field private final ivBytes:[B

.field private outputStream:Lorg/apache/commons/io/output/e;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->LOG:La5/d;

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    new-array v0, v0, [B

    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v0, "poi-temp-data"

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lg5/a0;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg1/z;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Lg1/z;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const-string/jumbo p0, "{} can\'t be removed (or was already removed)."

    invoke-interface {v0, p0, v1}, La5/b;->a(Ljava/lang/String;[Lg5/a0;)V

    :cond_0
    return-void
.end method

.method public getByteCount()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->outputStream:Lorg/apache/commons/io/output/e;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/output/e;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    const/4 v4, 0x2

    const-string v5, "PKCS5Padding"

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    const/4 v4, 0x1

    const-string v5, "PKCS5Padding"

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/output/e;

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->outputStream:Lorg/apache/commons/io/output/e;

    return-object v1
.end method
