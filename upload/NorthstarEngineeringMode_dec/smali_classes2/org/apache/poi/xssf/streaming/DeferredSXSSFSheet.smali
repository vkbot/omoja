.class public Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;
.super Lorg/apache/poi/xssf/streaming/SXSSFSheet;
.source "SourceFile"


# instance fields
.field private rowGenerator:Lorg/apache/poi/xssf/streaming/RowGeneratorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getRandomAccessWindowSize()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)V

    return-void
.end method


# virtual methods
.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported by DeferredSXSSFSheet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRowGenerator(Lorg/apache/poi/xssf/streaming/RowGeneratorFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;->rowGenerator:Lorg/apache/poi/xssf/streaming/RowGeneratorFunction;

    return-void
.end method

.method public writeRows(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    check-cast v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createSheetDataWriter(Ljava/io/OutputStream;)Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;->rowGenerator:Lorg/apache/poi/xssf/streaming/RowGeneratorFunction;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/apache/poi/xssf/streaming/RowGeneratorFunction;->generateRows(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error generating Excel rows"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    throw v1
.end method
