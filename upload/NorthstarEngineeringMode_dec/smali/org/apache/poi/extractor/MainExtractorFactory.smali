.class public Lorg/apache/poi/extractor/MainExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/ExtractorProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/extractor/MainExtractorFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/extractor/MainExtractorFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const-string p2, "Book"

    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :try_start_1
    sget-object p2, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES_CASE_INSENSITIVE:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getPreferEventExtractor()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :cond_3
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 12
    throw p1
.end method
