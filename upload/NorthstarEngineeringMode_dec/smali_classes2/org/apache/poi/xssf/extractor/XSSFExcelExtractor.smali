.class public Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# static fields
.field public static final SUPPORTED_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFRelation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private doCloseFilesystem:Z

.field private formulasNotResults:Z

.field private includeCellComments:Z

.field private includeHeadersFooters:Z

.field private includeSheetNames:Z

.field private includeTextBoxes:Z

.field private locale:Ljava/util/Locale;

.field private final workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 3
    new-instance p1, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setUseCachedValuesForFormulaCells(Z)V

    return-void
.end method

.method private extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleNonStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V
    .locals 4

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;)V

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result p2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v3, p2, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iget-object p3, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p3, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object p3, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, p3, :cond_2

    const-string p3, "ERROR:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private handleStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->getDocument()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->getDocument()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->getFilesystem()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    const-string v5, "\n"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->cellIterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_7

    iget-boolean v9, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    if-eqz v9, :cond_5

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v1, v9}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_6

    invoke-direct {p0, v1, v8}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, v1, v8, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleNonStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    goto :goto_4

    :cond_7
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_8

    invoke-direct {p0, v1, v8}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, v1, v8, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleNonStringCell(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    :goto_4
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellComment()Lorg/apache/poi/ss/usermodel/Comment;

    move-result-object v8

    iget-boolean v9, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Comment;->getString()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v1, v9}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/CharSequence;Ljava/lang/String;)V

    const-string v10, " Comment by "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Comment;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "\t"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    instance-of v6, v5, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v6, :cond_c

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    return-void
.end method
