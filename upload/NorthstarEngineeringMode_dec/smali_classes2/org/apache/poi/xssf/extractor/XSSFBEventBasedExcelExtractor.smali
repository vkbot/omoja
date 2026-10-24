.class public Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;
.super Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.source "SourceFile"


# static fields
.field private static final LOGGER:La5/d;

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
.field private handleHyperlinksInCells:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:La5/d;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 12

    :try_start_0
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v10, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    :cond_0
    :goto_0
    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeSheetNames()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeCellComments()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    move-result-object v0

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    move-object v0, p0

    move-object v1, v10

    move-object v2, v7

    move-object v4, v6

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/model/SharedStrings;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuilder;)V

    :cond_4
    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeTextBoxes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuilder;)V

    :cond_6
    invoke-virtual {v10}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_6

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v11, :cond_7

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v0

    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0

    return-object p0

    :goto_6
    sget-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Failed to load text"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/model/SharedStrings;Ljava/io/InputStream;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getFormulasNotResults()Z

    move-result v9

    move-object v2, v0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not currently supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHandleHyperlinksInCells(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    return-void
.end method
