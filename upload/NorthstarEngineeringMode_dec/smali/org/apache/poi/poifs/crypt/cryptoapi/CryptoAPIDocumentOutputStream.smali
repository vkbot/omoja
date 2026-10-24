.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;
.super Lorg/apache/commons/io/output/b;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/io/output/b;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public setBlock(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/io/output/a;->count:I

    return-void
.end method

.method public toInputStream(J)Ljava/io/InputStream;
    .locals 3

    :try_start_0
    sget v0, Ln4/a;->Z:I

    new-instance v0, Ln4/a$b;

    invoke-direct {v0}, Ln4/a$b;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/io/output/b;->toInputStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Lj4/a$c;

    invoke-direct {v1, p0}, Lj4/a;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lj4/b;->c:Lj4/a;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Ln4/a$a;->f1:J

    invoke-virtual {v0}, Ln4/a$b;->k()Ln4/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public declared-synchronized write(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    const/4 v0, 0x0

    int-to-byte p1, p1

    .line 1
    aput-byte p1, v4, v0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, v4

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    .line 3
    invoke-super {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    .line 6
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 7
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/b;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
