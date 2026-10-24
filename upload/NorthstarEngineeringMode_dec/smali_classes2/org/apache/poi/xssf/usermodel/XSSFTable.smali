.class public Lorg/apache/poi/xssf/usermodel/XSSFTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Table;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private transient columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient commonXPath:Ljava/lang/String;

.field private ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

.field private transient endCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient name:Ljava/lang/String;

.field private transient startCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient styleName:Ljava/lang/String;

.field private transient tableColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;",
            ">;"
        }
    .end annotation
.end field

.field private transient xmlColumnPrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 8
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

.method private getXmlColumnPrs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPrs:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPrs:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getXmlColumnPr()Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPrs:Ljava/util/List;

    return-object p0
.end method

.method private setCellReferences()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ":"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    .line 5
    array-length v3, v0

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6
    :goto_0
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    .line 7
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->writeTo(Ljava/io/OutputStream;)V
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

.method public contains(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartRowIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndRowIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartColIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndColIndex()I

    move-result p0

    if-gt p1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public createColumn(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumnCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->createColumn(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    move-result-object p0

    return-object p0
.end method

.method public createColumn(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumnCount()I

    move-result v0

    if-ltz p2, :cond_6

    if-gt p2, v0, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Column \'"

    const-string v0, "\' already exists. Column names must be unique per table."

    .line 8
    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 11
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->insertNewTableColumn(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v2

    .line 12
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->sizeOfTableColumnArray()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v1, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->setCount(J)V

    .line 13
    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setId(J)V

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Column "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 16
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v2

    .line 20
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v1, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 22
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v0, p1, v3, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 23
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellRef(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 24
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    return-object p0

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Column index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findColumnIndex(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "\'\'"

    const-string v2, "\'"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\'#"

    const-string v2, "#"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getArea()Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/AreaReference;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    return-object p0
.end method

.method public getCellReferences()Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getCount()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getColumns()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->tableColumns:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->tableColumns:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->tableColumns:Ljava/util/List;

    return-object p0
.end method

.method public getCommonXpath()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "/"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getXmlColumnPr()Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getXmlColumnPr()Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getXPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    if-nez v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    array-length v4, v1

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v2, ""

    aput-object v2, v1, v0

    invoke-static {v1, v4}, Lorg/apache/poi/util/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDataRowCount()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result p0

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public getEndColIndex()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    return p0
.end method

.method public getEndRowIndex()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    return p0
.end method

.method public getHeaderRowCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getHeaderRowCount()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRowCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public getStartColIndex()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    return p0
.end method

.method public getStartRowIndex()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    return p0
.end method

.method public getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setStyleName(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalsRowCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowCount()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public isHasTotalsRow()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowShown()Z

    move-result p0

    return p0
.end method

.method public mapsTo(J)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXmlColumnPrs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getMapId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onTableDelete()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->getTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
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

.method public removeColumn(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumnCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->removeTableColumn(I)V

    .line 9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->setCount(J)V

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Table must have at least one column"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Column index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeColumn(Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->removeTableColumn(I)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    :cond_0
    return-void
.end method

.method public setArea(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 4

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The AreaReference must not reference a different sheet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->supportsAreaReference(Lorg/apache/poi/ss/util/AreaReference;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setRef(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetAutoFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getColumnCount()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_4

    :goto_1
    if-ge v0, v1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->createColumn(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-ge v1, v0, :cond_5

    :goto_2
    if-le v0, v1, :cond_5

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->removeColumn(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result p0

    add-int/2addr p0, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AreaReference needs at least "

    const-string v1, " rows, to cover at least one data row and all header rows and totals rows"

    invoke-static {v0, p0, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AreaReference must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCellRef(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setRef(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetAutoFilter()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-direct {v2, v3, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    new-instance p1, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p1, v0, v2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    return-void
.end method

.method public setCellReferences(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellRef(Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public setDataRowCount(I)V
    .locals 8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getDataRowCount()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    invoke-direct {v5, v7, v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    new-instance v6, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v6, v2, v5, v4}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    if-ge p1, v1, :cond_1

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    move-object v3, v5

    :goto_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v0, p1, v3, v4}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellRef(Lorg/apache/poi/ss/util/AreaReference;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Table must have at least one data row"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setDisplayName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Display name must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->unsetName()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->unsetName()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "Failed to unset style name"

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-void
.end method

.method public supportsAreaReference(Lorg/apache/poi/ss/util/AreaReference;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result p0

    add-int/2addr p0, v1

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateHeaders()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Had unexpected type of parent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "_x000a_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, "_x000d_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->tableColumns:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPrs:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    return-void
.end method

.method public updateReferences()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->setTable(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
