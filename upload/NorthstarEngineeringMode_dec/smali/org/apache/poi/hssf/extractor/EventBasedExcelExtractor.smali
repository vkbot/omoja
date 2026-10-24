.class public Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/POIOLE2TextExtractor;
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    }
.end annotation


# instance fields
.field private final _dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field _formulasNotResults:Z

.field _includeSheetNames:Z

.field private doCloseFilesystem:Z

.field private final poifs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->doCloseFilesystem:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->poifs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->doCloseFilesystem:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->poifs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-void
.end method

.method private triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;-><init>(Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;)V

    new-instance v1, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;-><init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    iput-object v1, v0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    new-instance v3, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v2, v3, p0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/extractor/POITextExtractor;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->isCloseFilesystem()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->getDocument()Lorg/apache/poi/POIDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/POIDocument;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilesystem()Ljava/io/Closeable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->poifs:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-object p0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object p0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Comment extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Header/Footer extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    return-void
.end method
