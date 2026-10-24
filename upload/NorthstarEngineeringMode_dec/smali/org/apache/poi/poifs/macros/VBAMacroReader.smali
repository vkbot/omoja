.class public Lorg/apache/poi/poifs/macros/VBAMacroReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;
    }
.end annotation


# static fields
.field private static final DOC_STRING_RESERVED:I = 0x40

.field private static final HELP_FILE_PATH_RESERVED:I = 0x3d

.field private static final LOGGER:La5/d;

.field private static final MAX_STRING_LENGTH:I = 0x4e20

.field private static final MODULE_DOCSTRING_RESERVED:I = 0x48

.field private static final PROJECT_CONSTANTS_RESERVED:I = 0x3c

.field private static final REFERENCE_NAME_RESERVED:I = 0x3e

.field private static final STREAMNAME_RESERVED:I = 0x32

.field protected static final VBA_PROJECT_OOXML:Ljava/lang/String; = "vbaProject.bin"

.field protected static final VBA_PROJECT_POIFS:Ljava/lang/String; = "VBA"


# instance fields
.field private fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-void
.end method

.method private static findCompressedStreamWBruteForce(Ljava/io/InputStream;)[B
    .locals 6

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v3

    if-lez v3, :cond_1

    and-int/lit16 v3, v3, 0x7000

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    invoke-virtual {v0, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v0, v2}, Ln4/f$a;->p(I)V

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ln4/f$a;->n(I)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->tryToDecompress(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0x9

    if-le v3, v4, :cond_1

    const/16 v3, 0x14

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v3, "Attribute"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getModule(Ljava/lang/String;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;",
            ")",
            "Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    return-object p0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    return-object p0
.end method

.method private openOOXML(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "vbaProject.bin"

    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    new-instance p1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No VBA project found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private processDirStream(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 10

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->INFORMATION_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    move v4, p1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->lookup(I)Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->EOF:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->DIR_STREAM_TERMINATOR:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$1;->$SwitchMap$org$apache$poi$poifs$macros$VBAMacroReader$RecordType:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x3e

    packed-switch v7, :pswitch_data_0

    invoke-virtual {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->getConstantLength()I

    move-result v7

    if-le v7, v5, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->getConstantLength()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move p1, v4

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v5

    sget-object v6, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-static {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->access$200(Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;)I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v5, v8}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v5

    :cond_3
    const/16 v6, 0x30

    if-ne v5, v6, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Expected 0x30 as Reserved3 in a ReferenceControl record"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->MODULES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    invoke-static {v2, v3, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModuleMetadataFromDirStream(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    iget-object v6, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected x003C after stream name before Unicode stream name, but found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    sget-object v6, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->INFORMATION_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->REFERENCES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    :cond_6
    iget-object v6, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v6, v8, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;IZ)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->access$100(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)I

    move-result v7

    if-ne v7, v5, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-static {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->access$100(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)I

    move-result v5

    sget-object v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_REGISTERED:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-static {v7}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->access$200(Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;)I

    move-result v9

    if-ne v5, v9, :cond_8

    :pswitch_6
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected reserved character. Expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->access$200(Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->access$100(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    iget-object v5, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    const/16 v6, 0x3c

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    goto/16 :goto_0

    :pswitch_8
    iget-object v5, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    const/16 v6, 0x3d

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    goto/16 :goto_0

    :pswitch_9
    iget-object v5, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    const/16 v6, 0x40

    invoke-direct {p0, v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    goto/16 :goto_0

    :pswitch_a
    iget-object v3, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    const/16 v5, 0x32

    invoke-direct {p0, v2, v3, v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;->access$000(Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    iput-object v5, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    goto/16 :goto_0

    :pswitch_c
    sget-object v5, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_VERSION:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->getConstantLength()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move p1, v4

    goto :goto_4

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p0

    :goto_4
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred while reading macros at section id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readMBCS(ILjava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-lez p0, :cond_0

    const/16 v2, 0x4e20

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/commons/io/output/a;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private static readModuleFromDocumentStream(Lorg/apache/poi/poifs/filesystem/DocumentNode;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_0
    iget-object p2, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->buf:[B

    if-nez p2, :cond_2

    iget-object p2, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->offset:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    :try_start_3
    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object p2, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->offset:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    new-instance p2, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {p2, p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->read(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catchall_3
    move-exception p2

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v2

    :try_start_9
    invoke-virtual {p2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_1

    :catchall_6
    move-exception p2

    :try_start_a
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_2
    :try_start_b
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v1

    :try_start_c
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception p1

    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :try_start_e
    invoke-static {p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findCompressedStreamWBruteForce(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    if-eqz p0, :cond_2

    sget p1, Ln4/f;->Z:I

    new-instance p1, Ln4/f$a;

    invoke-direct {p1}, Ln4/f$a;-><init>()V

    invoke-virtual {p1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {p1}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->read(Ljava/io/InputStream;)V

    goto :goto_5

    :catchall_9
    move-exception p0

    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :catchall_a
    move-exception p2

    :try_start_10
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    goto :goto_4

    :catchall_b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Module offset for \'"

    const-string v0, "\' was never read."

    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_5
    return-void
.end method

.method private static readModuleMetadataFromDirStream(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result p0

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->offset:Ljava/lang/Integer;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RLEDecompressingInputStream;

    sget p2, Ln4/f;->Z:I

    new-instance p2, Ln4/f$a;

    invoke-direct {p2}, Ln4/f$a;-><init>()V

    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->buf:[B

    invoke-virtual {p2, v1}, Ln4/f$a;->m([B)V

    invoke-virtual {p2, p0}, Ln4/f$a;->p(I)V

    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->buf:[B

    array-length v1, v1

    sub-int/2addr v1, p0

    invoke-virtual {p2, v1}, Ln4/f$a;->n(I)V

    invoke-virtual {p2}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->read(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    :goto_0
    return-void
.end method

.method private static readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    int-to-long v0, p1

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result p0

    if-ne p0, p1, :cond_0

    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Tried to read: "

    const-string v1, ", but could only read: "

    invoke-static {v0, p1, v1, p0}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;I)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;IZ)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    move-result-object p0

    return-object p0
.end method

.method private readStringPair(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/nio/charset/Charset;IZ)Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v0

    .line 3
    invoke-static {p1, v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v0

    if-eq v0, p3, :cond_1

    if-nez p4, :cond_0

    .line 5
    new-instance p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "after name before Unicode name, but found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result p3

    .line 9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance p1, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ASCIIUnicodeStringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static readUnicode(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, 0x2

    :goto_0
    add-int v4, v1, v2

    const/16 v5, 0x4e20

    if-eqz v4, :cond_0

    if-ge v3, v5, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-lt v3, v5, :cond_1

    sget-object p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string/jumbo v1, "stopped reading unicode name after {} bytes"

    invoke-static {v3}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/a;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;
    .locals 2

    int-to-long v0, p2

    const/16 p0, 0x4e20

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/lang/String;

    sget-object p2, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static trySkip(Ljava/io/InputStream;J)V
    .locals 4

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string v2, "Tried skipping "

    if-gez p0, :cond_0

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes, but no bytes were skipped. The end of the stream has been reached or the stream is closed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes, but only "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes were skipped. This should never happen with a non-corrupt file."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static tryToDecompress(Ljava/io/InputStream;)[B
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-void
.end method

.method public findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VBA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public findModuleNameMap(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "projectwm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :try_start_0
    iget-object p3, p3, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readNameMapRecords(Ljava/io/InputStream;Ljava/util/Map;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findModuleNameMap(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findProjectProperties(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "project"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance p1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readProjectProperties(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findProjectProperties(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public readMacroModules()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/macros/Module;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findModuleNameMap(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findProjectProperties(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    iget-object v4, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    iput-object v4, v3, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public readMacros()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacroModules()Ljava/util/Map;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/macros/Module;

    invoke-interface {v1}, Lorg/apache/poi/poifs/macros/Module;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dir"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->processDirStream(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 9
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 11
    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "__SRP"

    invoke-static {v0, v1}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "_VBA_PROJECT"

    .line 13
    invoke-static {v0, v1}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-static {p1, v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModuleFromDocumentStream(Lorg/apache/poi/poifs/filesystem/DocumentNode;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readNameMapRecords(Ljava/io/InputStream;Ljava/util/Map;Ljava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    :cond_0
    :goto_0
    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_2

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->readByte(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p1, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMBCS(ILjava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readUnicode(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    return-void

    :cond_2
    sget-object p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "Hit max name records to read (10000). Stopped early."

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public readProjectProperties(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DocumentInputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p3, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200

    new-array v1, v1, [C

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p1, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n|\n\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_8

    aget-object v2, p1, v1

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    aget-object v4, v2, v5

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    :cond_1
    const-string v4, "Document"

    aget-object v6, v2, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "couldn\'t find module with name: {}"

    if-eqz v4, :cond_3

    array-length v4, v2

    if-le v4, v5, :cond_3

    aget-object v2, v2, v5

    const-string v4, "/&H"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->getModule(Ljava/lang/String;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v2, Lorg/apache/poi/poifs/macros/Module$ModuleType;->Document:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    iput-object v2, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->moduleType:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    goto :goto_2

    :cond_2
    sget-object v4, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    invoke-interface {v4}, La5/d;->g()La5/b;

    move-result-object v4

    invoke-interface {v4, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v4, "Module"

    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, v2

    if-le v4, v5, :cond_5

    aget-object v4, v2, v5

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->getModule(Ljava/lang/String;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v2, Lorg/apache/poi/poifs/macros/Module$ModuleType;->Module:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    iput-object v2, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->moduleType:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    goto :goto_2

    :cond_4
    sget-object v4, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    invoke-interface {v4}, La5/d;->g()La5/b;

    move-result-object v4

    aget-object v2, v2, v5

    invoke-interface {v4, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v4, "Class"

    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    array-length v4, v2

    if-le v4, v5, :cond_7

    aget-object v4, v2, v5

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->getModule(Ljava/lang/String;Ljava/util/Map;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v2, Lorg/apache/poi/poifs/macros/Module$ModuleType;->Class:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    iput-object v2, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->moduleType:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    goto :goto_2

    :cond_6
    sget-object v4, Lorg/apache/poi/poifs/macros/VBAMacroReader;->LOGGER:La5/d;

    invoke-interface {v4}, La5/d;->g()La5/b;

    move-result-object v4

    aget-object v2, v2, v5

    invoke-interface {v4, v2, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method
