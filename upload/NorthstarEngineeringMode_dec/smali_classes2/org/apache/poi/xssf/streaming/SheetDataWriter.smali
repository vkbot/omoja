.class public Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final _fd:Ljava/io/File;

.field private _lowestIndexOfFlushedRows:I

.field private _numberLastFlushedRow:I

.field private _numberOfCellsOfLastFlushedRow:I

.field private _numberOfFlushedRows:I

.field protected final _out:Ljava/io/Writer;

.field private _rownum:I

.field private _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->createTempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->createWriter(Ljava/io/File;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-void
.end method

.method public static replaceWithQuestionMark(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const v0, 0xfffe

    if-gt v0, p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method


# virtual methods
.method public beginRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "<row"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->hasCustomHeight()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    const-string v0, "customHeight"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHeightInPoints()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ht"

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getZeroHeight()Z

    move-result v0

    const-string v2, "hidden"

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->isFormatted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowStyleIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "s"

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "customFormat"

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "outlineLevel"

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHidden()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "0"

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCollapsed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCollapsed()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_1
    const-string p2, "collapsed"

    invoke-direct {p0, p2, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v0, ">\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_rownum:I

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public createTempFile()Ljava/io/File;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    const-string p0, "poi-sxssf-sheet"

    const-string v0, ".xml"

    invoke-static {p0, v0}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public createWriter(Ljava/io/File;)Ljava/io/Writer;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method

.method public decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 0

    return-object p1
.end method

.method public decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 0

    return-object p1
.end method

.method public dispose()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public endRow()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v0, "</row>\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getLastFlushedRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    return p0
.end method

.method public getLowestIndexOfFlushedRows()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_lowestIndexOfFlushedRows:I

    return p0
.end method

.method public getNumberOfCellsOfLastFlushedRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfCellsOfLastFlushedRow:I

    return p0
.end method

.method public getNumberOfFlushedRows()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    return p0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_fd:Ljava/io/File;

    return-object p0
.end method

.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getTempFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "getWorksheetXMLInputStream only works when a temp file is used"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasLeadingTrailingSpaces(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p0, v2

    :cond_1
    return p0
.end method

.method public outputEscapedString(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/CodepointsUtil;->primitiveIterator(Ljava/lang/String;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x26

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->replaceWithQuestionMark(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write([C)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&#xa0;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&#xd;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&#xa;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "&#x9;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :goto_1
    return-void
.end method

.method public writeCell(ILorg/apache/poi/ss/usermodel/Cell;)V
    .locals 13

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_rownum:I

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v1, "<c"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "r"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "n"

    const-string v5, "b"

    const-string v6, "e"

    const-string v7, "><v>"

    const-string v8, "</v>"

    const-string v9, "t"

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid cell type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v1, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq p1, v12, :cond_5

    if-eq p1, v11, :cond_4

    if-eq p1, v10, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v9, v6}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v9, v5}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v9, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v9, v4}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "><f>"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputEscapedString(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v4, "</f>"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "<v>"

    if-eq p1, v12, :cond_a

    if-eq p1, v11, :cond_9

    if-eq p1, v10, :cond_7

    if-eq p1, v1, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputEscapedString(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p2

    if-eqz p2, :cond_8

    move-object v2, v3

    :cond_8
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputEscapedString(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-direct {p0, v9, v6}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputEscapedString(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, v9, v5}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p2

    if-eqz p2, :cond_b

    move-object v2, v3

    :cond_b
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-eqz p1, :cond_c

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addSharedStringItem(Lorg/apache/poi/ss/usermodel/RichTextString;)I

    move-result p1

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-virtual {p2}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v9, p2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string p1, "inlineStr"

    invoke-direct {p0, v9, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v0, "><is><t"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->hasLeadingTrailingSpaces(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "xml:space"

    const-string v0, "preserve"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->outputEscapedString(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string p2, "</t></is>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v9, v4}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_out:Ljava/io/Writer;

    const-string p1, "</c>"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    if-nez v0, :cond_0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_lowestIndexOfFlushedRows:I

    :cond_0
    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberLastFlushedRow:I

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getLastCellNum()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfCellsOfLastFlushedRow:I

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->_numberOfFlushedRows:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->beginRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->allCellsIterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {p0, p2, v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeCell(ILorg/apache/poi/ss/usermodel/Cell;)V

    move p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->endRow()V

    return-void
.end method
