.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;
    }
.end annotation


# static fields
.field protected static final CREATED_VERSION:S = 0x3s

.field protected static final MIN_REFRESHABLE_VERSION:S = 0x3s

.field protected static final UPDATED_VERSION:S = 0x3s


# instance fields
.field private dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

.field private pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

.field private pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

.field private pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 3
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    .line 4
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 5
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 11
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

.method private addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->addNewDataField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setName(Ljava/lang/String;)V

    int-to-long p1, p2

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setFld(J)V

    invoke-static {p4}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;

    move-result-object p0

    invoke-interface {p0, p4}, Lorg/apache/poi/ss/usermodel/DataFormat;->getFormat(Ljava/lang/String;)S

    move-result p0

    int-to-long p0, p0

    invoke-interface {v1, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setNumFmtId(J)V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->sizeOfDataFieldArray()I

    move-result p0

    int-to-long p0, p0

    invoke-interface {v0, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->setCount(J)V

    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Column Index: "

    const-string v2, ", Size: "

    invoke-static {v1, p1, v2, v0}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lazyInitXSSFPivotCacheDefinition()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    :cond_1
    return-void
.end method

.method private setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method


# virtual methods
.method public addColLabel(I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addColLabel(ILjava/lang/String;)V

    return-void
.end method

.method public addColLabel(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    .line 5
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    .line 6
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v3

    .line 7
    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_COL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    const/4 v4, 0x0

    .line 8
    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    .line 9
    invoke-static {p2}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 10
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Workbook;->createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;

    move-result-object v5

    .line 11
    invoke-interface {v5, p2}, Lorg/apache/poi/ss/usermodel/DataFormat;->getFormat(Ljava/lang/String;)S

    move-result p2

    int-to-long v5, p2

    invoke-interface {v2, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setNumFmtId(J)V

    :cond_0
    :goto_0
    if-gt v4, v1, :cond_1

    .line 12
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object p2

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {p2, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result p2

    int-to-long v4, p2

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    .line 14
    invoke-interface {v0, p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 15
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 16
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 17
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p0

    .line 18
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    .line 19
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->sizeOfFieldArray()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->setCount(J)V

    return-void
.end method

.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;I)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataColumn(IZ)V

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->getCount()J

    move-result-wide p1

    const-wide/16 p3, 0x2

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p1

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    .line 9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->sizeOfFieldArray()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->setCount(J)V

    :cond_1
    return-void
.end method

.method public addDataColumn(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    invoke-interface {p0, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    return-void
.end method

.method public addReportFilter(I)V
    .locals 9

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->getRef()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v3, v6, :cond_0

    new-instance v3, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v8

    invoke-direct {v7, v6, v8}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    add-int/2addr v2, v5

    const/4 v8, 0x3

    invoke-direct {v6, v8, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-direct {v3, v7, v6, v4}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setRef(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_PAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    :goto_0
    if-gt v4, v1, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {v3, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    invoke-interface {v0, p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->addNewPageField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setHier(I)V

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setFld(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->sizeOfPageFieldArray()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->setCount(J)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->getCount()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setColPageCount(J)V

    return-void
.end method

.method public addRowLabel(I)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_ROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    :goto_0
    if-gt v4, v1, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v5

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    invoke-interface {v0, p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->sizeOfFieldArray()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->setCount(J)V

    return-void
.end method

.method public commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pivotTableDefinition"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public createDefaultDataColumns()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    :goto_1
    if-gt v1, p0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->addNewPivotField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->sizeOfPivotFieldArray()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setCount(J)V

    return-void
.end method

.method public createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataCol(J)V

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataRow(J)V

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstHeaderRow(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setRef(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->addNewWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setSheet(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    invoke-interface {p3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;->configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pivot table source area reference or name must be specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public getCTPivotTableDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    return-object p0
.end method

.method public getColLabelColumns()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->getFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object p0
.end method

.method public getParentSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object p0
.end method

.method public getPivotArea()Lorg/apache/poi/ss/util/AreaReference;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    return-object p0
.end method

.method public getPivotCache()Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    return-object p0
.end method

.method public getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->lazyInitXSSFPivotCacheDefinition()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    return-object p0
.end method

.method public getPivotCacheRecords()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-object p0
.end method

.method public getRowLabelColumns()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->getFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCTPivotTableDefinition(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    return-void
.end method

.method public setDefaultPivotTableDefinition()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setIndent(J)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCreatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMinRefreshableVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUpdatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setItemPrintTitles(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUseAutoFormatting(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyNumberFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyWidthHeightFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyAlignmentFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyPatternFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyFontFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyBorderFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->getCTPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->getCacheId()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCacheId(J)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PivotTable"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getCacheId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-string v3, "Values"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setDataCaption(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;

    move-result-object p0

    const-string v0, "PivotStyleLight16"

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setName(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowLastColumn(Z)V

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColStripes(Z)V

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowStripes(Z)V

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColHeaders(Z)V

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowHeaders(Z)V

    return-void
.end method

.method public setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method public setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    return-void
.end method

.method public setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    return-void
.end method

.method public setPivotCacheRecords(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-void
.end method
