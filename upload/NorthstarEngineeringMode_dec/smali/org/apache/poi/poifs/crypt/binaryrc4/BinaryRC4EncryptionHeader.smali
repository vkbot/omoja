.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    const/16 v0, 0x28

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    .line 5
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 6
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setSizeExtra(I)V

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setFlags(I)V

    const-string v0, ""

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;)V

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    return-void
.end method
