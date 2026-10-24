.class public Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 1

    new-instance p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;-><init>(Ljava/io/InputStream;Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->nextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->processRecord(Lorg/apache/poi/hssf/record/Record;)S

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0
.end method


# virtual methods
.method public abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result p0

    return p0
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S
    .locals 1

    const-string v0, "Workbook"

    .line 2
    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)S
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S

    move-result p0

    return p0
.end method

.method public processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    :try_end_0
    .catch Lorg/apache/poi/hssf/eventusermodel/HSSFUserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    const-string v0, "WORKBOOK"

    .line 2
    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BOOK"

    .line 3
    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p2

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_4

    .line 9
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method
