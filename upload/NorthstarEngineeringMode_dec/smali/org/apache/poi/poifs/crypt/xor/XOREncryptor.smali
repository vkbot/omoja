.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorArray1(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    const/4 v4, 0x0

    .line 5
    invoke-static {v2, v4, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 6
    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedKey([B)V

    .line 7
    invoke-static {v2, v4, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 8
    invoke-virtual {v3, v2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedVerifier([B)V

    .line 9
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "XOR"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->confirmPassword(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;)V

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public getKeySizeInBytes()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setChunkSize(I)V
    .locals 0

    return-void
.end method
