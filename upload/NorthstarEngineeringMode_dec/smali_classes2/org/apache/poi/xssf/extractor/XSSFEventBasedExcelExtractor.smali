.class public Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    }
.end annotation


# static fields
.field private static final LOGGER:La5/d;


# instance fields
.field protected concatenatePhoneticRuns:Z

.field protected final container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private doCloseFilesystem:Z

.field protected formulasNotResults:Z

.field protected includeCellComments:Z

.field protected includeHeadersFooters:Z

.field protected includeSheetNames:Z

.field protected includeTextBoxes:Z

.field protected locale:Ljava/util/Locale;

.field protected final properties:Lorg/apache/poi/ooxml/POIXMLProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 3
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLProperties;

    invoke-direct {v0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/ooxml/POIXMLProperties;

    return-void
.end method


# virtual methods
.method public createSharedStringsTable(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/xssf/model/SharedStrings;
    .locals 0

    new-instance p1, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    return-object p1
.end method

.method public getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/ooxml/POIXMLProperties;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object p0

    return-object p0
.end method

.method public getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/ooxml/POIXMLProperties;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/ooxml/POIXMLProperties;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getFilesystem()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object p0
.end method

.method public getFormulasNotResults()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    return p0
.end method

.method public getIncludeCellComments()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return p0
.end method

.method public getIncludeHeadersFooters()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return p0
.end method

.method public getIncludeSheetNames()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    return p0
.end method

.method public getIncludeTextBoxes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 12

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->createSharedStringsTable(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/xssf/model/SharedStrings;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v8

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v10, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetComments()Lorg/apache/poi/xssf/model/Comments;

    move-result-object v2

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    move-object v2, p0

    move-object v3, v10

    move-object v4, v8

    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/Comments;Lorg/apache/poi/xssf/model/SharedStrings;Ljava/io/InputStream;)V

    iget-boolean v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v2, :cond_3

    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuilder;)V

    :cond_3
    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuilder;)V

    iget-boolean v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_4
    iget-boolean v2, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v2, :cond_5

    invoke-virtual {v10, v9}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuilder;)V

    :cond_5
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
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

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

    if-eqz v11, :cond_6

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v0

    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    return-object p0

    :goto_6
    sget-object v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Failed to load text"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public processShapes(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/Comments;Lorg/apache/poi/xssf/model/SharedStrings;Ljava/io/InputStream;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p5

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    iget-boolean v8, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/Styles;Lorg/apache/poi/xssf/model/Comments;Lorg/apache/poi/xssf/model/SharedStrings;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    invoke-interface {p5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p5, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SAX parser appears to be broken - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    return-void
.end method
