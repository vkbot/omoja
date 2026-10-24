.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CryptoAPICipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public calculateChecksum(Ljava/io/File;I)V
    .locals 0

    return-void
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 0

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "createEncryptionInfoEntry not supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->flush()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->initCipherForBlockNoFlush(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public initCipherForBlockNoFlush(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 1

    iget-object p3, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p3

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p0, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method
