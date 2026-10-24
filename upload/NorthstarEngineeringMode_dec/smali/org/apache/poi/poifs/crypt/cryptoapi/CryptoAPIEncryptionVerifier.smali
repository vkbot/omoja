.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V

    return-void
.end method

.method public setSalt([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    return-void
.end method
