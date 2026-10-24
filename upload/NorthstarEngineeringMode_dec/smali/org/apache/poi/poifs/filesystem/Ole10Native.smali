.class public Lorg/apache/poi/poifs/filesystem/Ole10Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final DEFAULT_MAX_STRING_LENGTH:I = 0x400

.field private static MAX_RECORD_LENGTH:I = 0x0

.field private static MAX_STRING_LENGTH:I = 0x0

.field public static final OLE10_NATIVE:Ljava/lang/String; = "\u0001Ole10Native"

.field private static final OLE_MARKER_BYTES:[B

.field private static final OLE_MARKER_NAME:Ljava/lang/String; = "\u0001Ole"

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private command:Ljava/lang/String;

.field private command2:Ljava/lang/String;

.field private dataBuffer:[B

.field private fileName:Ljava/lang/String;

.field private fileName2:Ljava/lang/String;

.field private flags1:S

.field private flags2:S

.field private label:Ljava/lang/String;

.field private label2:Ljava/lang/String;

.field private mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field private totalSize:I

.field private unknown1:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->UTF8:Ljava/nio/charset/Charset;

    const v0, 0x5f5e100

    sput v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    const/16 v0, 0x400

    sput v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->OLE_MARKER_BYTES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setLabel(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setFileName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setCommand(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setDataBuffer([B)V

    .line 6
    sget-object p1, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    const/4 v1, 0x3

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 8
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    .line 9
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 p1, p1, 0x4

    .line 10
    invoke-virtual {v1, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->limit(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 12
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    if-ne p2, v0, :cond_1

    .line 13
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 14
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    if-eqz p1, :cond_0

    .line 16
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readParsed(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 17
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readCompact(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 19
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readUnparsed(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 20
    :goto_1
    new-instance p1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string p2, "Invalid Ole10Native"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 3

    const-string v0, "\u0001Ole10Native"

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v0

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object v0

    .line 5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object p0

    return-object p0
.end method

.method public static createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 3

    const-string v0, "\u0001Ole"

    .line 1
    invoke-interface {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget v1, Ln4/f;->Z:I

    .line 3
    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    sget-object v2, Lorg/apache/poi/poifs/filesystem/Ole10Native;->OLE_MARKER_BYTES:[B

    .line 4
    invoke-virtual {v1, v2}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    :cond_0
    return-void
.end method

.method public static createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createOleMarkerEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static getMaxStringLength()I
    .locals 1

    sget v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    return v0
.end method

.method private static readAsciiLen(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p0

    array-length v1, p0

    if-nez v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static readAsciiZ(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 5

    sget v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    if-nez v4, :cond_0

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUTF8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsciiZ string was not null terminated after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    const-string v2, " bytes - Exiting."

    invoke-static {v0, v1, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCompact(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v0, v0, -0x2

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-void
.end method

.method private readParsed(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readAsciiZ(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readAsciiZ(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readAsciiLen(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readUtf16(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readUtf16(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->readUtf16(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private readUnparsed(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    sget v1, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-void
.end method

.method private static readUtf16(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    sget v2, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    invoke-static {p0, v1, v2}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public static setMaxStringLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->MAX_STRING_LENGTH:I

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-object p0
.end method

.method public getCommand2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    return-object p0
.end method

.method public getDataBuffer()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return p0
.end method

.method public getFlags2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    return p0
.end method

.method public getUnknown1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return p0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-void
.end method

.method public setCommand2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    return-void
.end method

.method public setDataBuffer([B)V
    .locals 0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileName2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    return-void
.end method

.method public setFlags1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return-void
.end method

.method public setFlags2(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-void
.end method

.method public setLabel2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    return-void
.end method

.method public setUnknown1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 7

    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_1
    sget v1, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/poifs/filesystem/Ole10Native;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags2()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getUnknown1()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeUInt(J)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command2:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeUInt(J)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label2:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeUInt(J)V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName2:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/output/a;->writeToImpl(Ljava/io/OutputStream;)V

    :goto_2
    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method
