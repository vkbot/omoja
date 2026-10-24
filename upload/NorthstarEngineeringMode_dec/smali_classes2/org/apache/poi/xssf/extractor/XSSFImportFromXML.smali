.class public Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;,
        Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final _map:Lorg/apache/poi/xssf/usermodel/XSSFMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    return-void
.end method

.method private setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->getDataType(Ljava/lang/String;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$1;->$SwitchMap$org$apache$poi$xssf$extractor$XSSFImportFromXML$DataType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/util/Date;)V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    int-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unable to format value \'%s\' as %s for cell %s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public importFromXML(Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedSingleXMLCell()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->_map:Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getRelatedTables()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lorg/apache/poi/ooxml/util/XPathHelper;->getFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;

    invoke-direct {v5, v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DefaultNamespaceContext;-><init>(Lorg/w3c/dom/Document;)V

    invoke-interface {v4, v5}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Extracting with xpath {} : value is \'{}\'"

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXmlDataType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getXpath()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v8, v1, v9}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Node;

    if-eqz v9, :cond_0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->LOG:La5/d;

    invoke-interface {v10}, La5/d;->e()La5/b;

    move-result-object v11

    invoke-interface {v11, v8, v6, v9}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;->getReferencedCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v5

    invoke-interface {v10}, La5/d;->e()La5/b;

    move-result-object v10

    const-string v11, "Setting \'{}\' to cell {}-{} in sheet {}"

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v6

    invoke-static {v6}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v6

    invoke-static {v6}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v15

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, La5/b;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V

    invoke-direct {v0, v9, v5, v7}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v5, v1, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setDataRowCount(I)V

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getXmlColumnPr()Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    add-int v15, v8, v9

    invoke-virtual {v13}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getColumnIndex()I

    move-result v13

    add-int/2addr v13, v7

    move-object/from16 p1, v1

    invoke-virtual {v14}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getLocalXPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v2

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v1, v10, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v17, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->LOG:La5/d;

    invoke-interface/range {v17 .. v17}, La5/d;->e()La5/b;

    move-result-object v11

    invoke-interface {v11, v1, v6, v2}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    :cond_4
    invoke-virtual {v1, v13}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-virtual {v1, v13}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v11

    :cond_5
    invoke-interface/range {v17 .. v17}, La5/d;->e()La5/b;

    move-result-object v17

    const-string v18, "Setting \'{}\' to cell {}-{} in sheet {}"

    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-static {v1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-static {v1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v2

    invoke-interface/range {v17 .. v22}, La5/b;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V

    invoke-virtual {v14}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getXmlDataType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v11, v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;->setCellValue(Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 p1, v1

    move-object/from16 v16, v2

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method
