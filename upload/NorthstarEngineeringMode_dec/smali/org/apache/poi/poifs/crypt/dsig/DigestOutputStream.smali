.class Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field final key:Ljava/security/PrivateKey;

.field private md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->key:Ljava/security/PrivateKey;

    return-void
.end method

.method public static isMSCapi(Ljava/security/PrivateKey;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mscapi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getHashMagic()[B
    .locals 5

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/ietf/jgss/Oid;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->rsaOid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/ietf/jgss/Oid;->getDER()[B

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v3, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v0, v3}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget p0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

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
    move-exception v1

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
    throw v1
    :try_end_5
    .catch Lorg/ietf/jgss/GSSException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :array_0
    .array-data 1
        0x5t
        0x0t
        0x4t
    .end array-data
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->isMSCapi(Ljava/security/PrivateKey;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->md:Ljava/security/MessageDigest;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Windows keystore entries can\'t be signed with the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->algo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sign()[B
    .locals 8

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->getHashMagic()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->key:Ljava/security/PrivateKey;

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v4, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "PKCS1Padding"

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public write(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->md:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestOutputStream;->md:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
