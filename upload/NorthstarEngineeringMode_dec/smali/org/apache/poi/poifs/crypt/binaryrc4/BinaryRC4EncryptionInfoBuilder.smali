.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 11
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 12
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 13
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 15
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 16
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 18
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    .line 3
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 4
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 5
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 7
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 8
    new-instance p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 10
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method
