.class public Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$SheetContentsHandler;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CHECK_ALL_ROWS:I = -0x1


# instance fields
.field private final cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

.field private final comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

.field private currentRow:I

.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final formulasNotResults:Z

.field private final handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field private lastEndedRow:I

.field private lastStartedRow:I

.field private rkBuffer:[B

.field private final stringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

.field private final styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

.field private xlWideStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-direct {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iput-object p6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iput-boolean p7, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formulasNotResults:Z

    return-void
.end method

.method private beforeCellValue([B)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->parse([BIILorg/apache/poi/xssf/binary/XSSFBCellHeader;)V

    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(II)V

    return-void
.end method

.method private checkMissedComments(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    if-eq p1, v1, :cond_1

    .line 14
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    .line 16
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 17
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    .line 18
    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    .line 19
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkMissedComments(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    .line 6
    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    return-void

    .line 9
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-le v2, p2, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    if-le v1, p1, :cond_1

    :cond_5
    return-void
.end method

.method private dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method private endRow(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    return-void
.end method

.method private formatVal(DI)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v0, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v1, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatIndex(I)S

    move-result p3

    if-nez v0, :cond_0

    const/4 p3, 0x0

    invoke-static {p3}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleBoolean([B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const/16 v0, 0x8

    aget-byte p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "TRUE"

    goto :goto_0

    :cond_0
    const-string p1, "FALSE"

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleBrtCellIsst([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/model/SharedStrings;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/model/SharedStrings;->getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellError([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const-string p1, "ERROR"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellReal([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellRk([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkNumber([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellSt([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x8

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellValue(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method private handleFmlaError([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const-string p1, "ERROR"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleFmlaNum([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleFmlaString([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x8

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleHeaderFooter([B)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->parse([B)Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeader()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooter()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    return-void
.end method

.method private outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader()Z

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getHeaderFooterTypeLabel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rkNumber([BI)D
    .locals 6

    aget-byte v0, p1, p2

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    shr-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    const/4 v5, 0x4

    aput-byte v0, v4, v5

    add-int/2addr p2, v3

    const/4 v0, 0x5

    const/4 v3, 0x3

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getDouble([B)D

    move-result-wide p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    invoke-static {p0, v5}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    shr-int/lit8 p0, p0, 0x2

    int-to-double p0, p0

    :goto_1
    if-eqz v1, :cond_3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    :cond_3
    return-wide p0
.end method

.method private startRow(I)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleHeaderFooter([B)V

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaError([B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaNum([B)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaString([B)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellError([B)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBoolean([B)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellReal([B)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellRk([B)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellSt([B)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBrtCellIsst([B)V

    goto :goto_0

    :pswitch_c
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p1

    const/high16 p2, 0x100000

    if-gt p1, p2, :cond_0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    const-string p2, "Row number beyond allowable range: "

    invoke-static {p2, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
