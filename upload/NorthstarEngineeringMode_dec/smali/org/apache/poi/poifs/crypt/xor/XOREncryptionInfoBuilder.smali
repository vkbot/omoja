.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 9
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 10
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 11
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 13
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 14
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 16
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    .line 2
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    .line 3
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 5
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    .line 6
    new-instance p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 8
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method
