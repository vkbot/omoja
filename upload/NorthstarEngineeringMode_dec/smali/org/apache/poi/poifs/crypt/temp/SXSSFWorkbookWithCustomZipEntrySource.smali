.class public Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;
.super Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setCompressTempFiles(Z)V

    return-void
.end method


# virtual methods
.method public createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 4

    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/SXSSFWorkbookWithCustomZipEntrySource;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->f()La5/b;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isCompressTempFiles()Z

    move-result v2

    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "isCompressTempFiles: {}"

    invoke-interface {v1, v3, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, La5/d;->f()La5/b;

    move-result-object v0

    const-string v1, "SharedStringSource: {}"

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p0

    invoke-interface {v0, p0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;-><init>()V

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    new-instance v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocument;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;->createZipEntrySource(Ljava/io/InputStream;)Lorg/apache/poi/poifs/crypt/temp/AesZipFileZipEntrySource;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_4
    move-exception p0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception v2

    :try_start_a
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->dispose()V

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
