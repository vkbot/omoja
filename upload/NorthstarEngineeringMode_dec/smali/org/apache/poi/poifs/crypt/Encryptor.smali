.class public abstract Lorg/apache/poi/poifs/crypt/Encryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field protected static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field private encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 3
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/crypt/Encryptor;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract confirmPassword(Ljava/lang/String;)V
.end method

.method public abstract confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
.end method

.method public abstract copy()Lorg/apache/poi/poifs/crypt/Encryptor;
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo p1, "this decryptor doesn\'t support writing directly to a stream"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/poifs/crypt/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/crypt/b;-><init>(Ljavax/crypto/SecretKey;I)V

    move-object p0, v0

    :goto_0
    const-string/jumbo v0, "secretKey"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method public setChunkSize(I)V
    .locals 0

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string/jumbo p1, "this decryptor doesn\'t support changing the chunk size"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method
