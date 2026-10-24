.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->LOG:La5/d;

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->lambda$createEncryptionInfoEntry$0(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method

.method private getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createEncryptionInfoEntry$0(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result p0

    invoke-virtual {p3, p0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p1, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    invoke-virtual {p2, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    new-array v6, v1, [B

    new-array v7, v1, [B

    .line 2
    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3
    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 4
    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    .line 6
    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getKeySizeInBytes()I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    const/4 p3, 0x0

    .line 9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 10
    :try_start_0
    invoke-virtual {p0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 13
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p4

    iget p4, p4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    .line 14
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 15
    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 16
    invoke-virtual {p2, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Password confirmation failed"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->copy()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;)V

    return-object v0
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    new-instance v2, Lc2/a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3, v1}, Lc2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p0, "EncryptionInfo"

    invoke-static {p1, p0, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public getKeySizeInBytes()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
