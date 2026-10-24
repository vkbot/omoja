.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 2
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedKey([B)V

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 5
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedKey([B)V

    new-array v0, v0, [B

    .line 7
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;)V

    return-object v0
.end method

.method public final setEncryptedKey([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    return-void
.end method

.method public final setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    return-void
.end method
