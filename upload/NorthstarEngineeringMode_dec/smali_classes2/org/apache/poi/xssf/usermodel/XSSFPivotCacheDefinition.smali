.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createDefaultValues()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private createDefaultValues()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setCreatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setMinRefreshableVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedBy(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedDate(D)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshOnLoad(Z)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    new-instance v1, Li5/z1;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v1, v2}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v2, Ljavax/xml/namespace/QName;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->type:Li5/c0;

    invoke-interface {v3}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pivotCacheDefinition"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object p0

    :goto_0
    if-gt v2, v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->addNewCacheField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;

    move-result-object v1

    if-ne v2, v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->sizeOfCacheFieldArray()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p0, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->setCount(J)V

    :cond_1
    const-wide/16 v3, 0x0

    invoke-interface {v1, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setNumFmtId(J)V

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setName(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->addNewSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    return-object p0
.end method

.method public getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->getWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pivot cache must reference an area, named range, or table."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object p1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object p0

    :cond_2
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object p0

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getSheet()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name \'"

    const-string v0, "\' was not found."

    invoke-static {p1, v1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 4

    :try_start_0
    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Li5/z1$a;->p1:Li5/z1$a;

    iget-object v2, v0, Li5/z1;->c:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
