.class public final Lorg/apache/poi/hssf/record/FilePassRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final ENCRYPTION_OTHER:I = 0x1

.field private static final ENCRYPTION_XOR:I = 0x0

.field public static final sid:S = 0x2fs


# instance fields
.field private final encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private final encryptionType:I


# direct methods
.method private constructor <init>(Lorg/apache/poi/hssf/record/FilePassRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    .line 3
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->copy()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "invalid encryption type"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 12
    :goto_0
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->xor:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    .line 6
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FilePassRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->copy()Lorg/apache/poi/hssf/record/FilePassRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/FilePassRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/FilePassRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->copy()Lorg/apache/poi/hssf/record/FilePassRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->copy()Lorg/apache/poi/hssf/record/FilePassRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 2

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/FilePassRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    return p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/p0;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "type"

    const-string v2, "encryptionInfo"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FILE_PASS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lorg/apache/poi/hssf/record/FilePassRecord$1;->$SwitchMap$org$apache$poi$poifs$crypt$EncryptionMode:[I

    iget-object v4, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    invoke-interface {p1, v0, v2, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
