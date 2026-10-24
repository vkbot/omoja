.class public Lorg/apache/poi/poifs/crypt/EncryptionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final ENCRYPTION_INFO_ENTRY:Ljava/lang/String; = "EncryptionInfo"

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field public static final flagAES:Lorg/apache/poi/util/BitField;

.field public static final flagCryptoAPI:Lorg/apache/poi/util/BitField;

.field public static final flagDocProps:Lorg/apache/poi/util/BitField;

.field public static final flagExternal:Lorg/apache/poi/util/BitField;


# instance fields
.field private decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

.field private final encryptionFlags:I

.field private final encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field private encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

.field private header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

.field private verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

.field private final versionMajor:I

.field private final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->FLAGS_MASKS:[I

    const-string v0, "EXTERNAL"

    const-string v1, "AES"

    const-string v2, "CRYPTO_API"

    const-string v3, "DOC_PROPS"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 34
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 35
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 36
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 37
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 38
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 39
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->copy()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 41
    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    .line 42
    :cond_2
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->copy()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 44
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 24
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 26
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 27
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 28
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 29
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 30
    invoke-interface/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void

    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    const-string v0, "EncryptionInfo"

    .line 2
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p2, v0, :cond_0

    .line 5
    iget v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 6
    iget v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    :goto_0
    iget v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 9
    iget v2, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v4, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v2, v4, :cond_1

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_2

    .line 10
    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v2, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v4, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v2, v4, :cond_2

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iput v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    if-gt v0, v1, :cond_5

    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    if-ne v2, v0, :cond_5

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 12
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-eq p2, v1, :cond_4

    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    invoke-virtual {p2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    :cond_4
    :goto_1
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_2

    .line 13
    :cond_5
    sget-object p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v0, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    iget v1, p2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_6

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    :goto_2
    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 15
    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-interface {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V

    return-void

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 18
    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 19
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown encryption: version major: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / version minor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " / fCrypto: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    .line 20
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " / fExternal: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " / fDocProps: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " / fAES: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    .line 23
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    return-object p0
.end method


# virtual methods
.method public copy()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-object p0
.end method

.method public getEncryptionFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    return p0
.end method

.method public getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionMode:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object p0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/poifs/crypt/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/f;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string v3, "encryptionMode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/g;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/g;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string/jumbo v3, "versionMajor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/h;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/h;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string/jumbo v2, "versionMinor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/f;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->FLAGS_MASKS:[I

    sget-object v4, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v3, "encryptionFlags"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/g;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/g;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string v3, "header"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/h;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/h;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string/jumbo v2, "verifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/f;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string v3, "decryptor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/poifs/crypt/g;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/poifs/crypt/g;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    const-string p0, "encryptor"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-object p0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-object p0
.end method

.method public getVersionMajor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    return p0
.end method

.method public getVersionMinor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    return p0
.end method

.method public isDocPropsEncrypted()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-void
.end method

.method public setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-void
.end method

.method public setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-void
.end method

.method public setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-void
.end method
