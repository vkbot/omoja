.class public Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;
.implements Lorg/apache/poi/xssf/usermodel/OoxmlSheetExtensions;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MARGIN_BOTTOM:D = 0.75

.field private static final DEFAULT_MARGIN_FOOTER:D = 0.3

.field private static final DEFAULT_MARGIN_HEADER:D = 0.3

.field private static final DEFAULT_MARGIN_LEFT:D = 0.7

.field private static final DEFAULT_MARGIN_RIGHT:D = 0.7

.field private static final DEFAULT_MARGIN_TOP:D = 0.75

.field private static final DEFAULT_ROW_HEIGHT:D = 15.0

.field private static final LOG:La5/d;


# instance fields
.field private final _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private arrayFormulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

.field private final dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

.field private dimensionOverride:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field private sharedFormulas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;",
            ">;"
        }
    .end annotation
.end field

.field protected sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

.field private sheetComments:Lorg/apache/poi/xssf/model/Comments;

.field private tables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

.field private xssfvmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 3
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentCreate()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 6
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 7
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/usermodel/Name;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->lambda$createPivotTable$3(Lorg/apache/poi/ss/usermodel/Name;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method

.method private varargs addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->addNewIgnoredError()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object p0

    .line 6
    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->addIgnoredErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method private addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 3
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 6
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result p2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->addNewMergeCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->setRef(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result p1

    int-to-long p1, p1

    goto :goto_1

    :cond_2
    add-long/2addr p1, v1

    .line 11
    :goto_1
    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->setCount(J)V

    sub-long/2addr p1, v1

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Merged region "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must contain 2 or more cells"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->lambda$shiftCommentsForColumns$1(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/util/AreaReference;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->lambda$createPivotTable$2(Lorg/apache/poi/ss/util/AreaReference;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method

.method private checkForIntersectingMergedRegions()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2, v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The range "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " intersects with another merged region "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in this sheet"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private checkForMergedRegionsIntersectingArrayFormulas()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cloneTables(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->supportsAreaReference(Lorg/apache/poi/ss/util/AreaReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createTable(Lorg/apache/poi/ss/util/AreaReference;)Lorg/apache/poi/xssf/usermodel/XSSFTable;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStyleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setStyleName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->isShowColumnStripes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->setShowColumnStripes(Z)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->isShowRowStripes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->setShowRowStripes(Z)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->isShowFirstColumn()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->setFirstColumn(Z)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->isShowLastColumn()Z

    move-result v3

    invoke-virtual {v4, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->setLastColumn(Z)V

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setAutoFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v7

    int-to-long v8, v3

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setTotalsRowCount(J)V

    move v7, v4

    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v8

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v8

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v8

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v8

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getTotalsRowFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction$Enum;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setTotalsRowFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction$Enum;)V

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getTotalsRowFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction$Enum;

    move-result-object v10

    invoke-virtual {v10}, Li5/h0;->intValue()I

    move-result v10

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellFormulaValidation(Z)V

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getTotalsRowFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setTotalsRowFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;)V

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v6, v9}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;->getStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-ne v10, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v10}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSubtotalFormulaStartFromTotalsRowFunction(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v6, v10}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v10

    const-string v11, ","

    invoke-static {v8, v11}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "])"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    int-to-long v6, v3

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setTotalsRowCount(J)V

    move v3, v4

    :goto_4
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setCalculatedColumnFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;)V

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v6

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellFormulaValidation(Z)V

    :goto_5
    if-gt v7, v6, :cond_7

    invoke-virtual {p0, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {p0, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v9

    :cond_6
    sget-object v10, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->CREATE_NULL_AS_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private collapseColumn(I)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setGroupHidden(IIZ)I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private collapseRow(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCollapsed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCollapsed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    .line 6
    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    .line 7
    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    .line 10
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    .line 12
    invoke-virtual {v4, v6}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    .line 14
    invoke-virtual {v6}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    .line 15
    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v8, v9, v10, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 17
    invoke-virtual {v3, v6}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V

    .line 18
    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v4, v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V

    .line 19
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p0

    invoke-virtual {v6, v4, p0, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    .line 21
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v2

    invoke-virtual {v6, p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPivotTables(Ljava/util/List;)V

    return-object v3
.end method

.method private createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDefaultPivotTableDefinition()V

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createDefaultDataColumns()V

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/ss/usermodel/Table;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->lambda$createPivotTable$4(Lorg/apache/poi/ss/usermodel/Table;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method

.method public static synthetic e(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->lambda$shiftCommentsAndRows$0(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result p0

    return p0
.end method

.method private ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private expandColumn(I)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v2

    const/4 v3, -0x1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findColInfoIdx(II)I

    move-result p1

    :goto_0
    if-ne p1, v3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupCollapsed(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v4, v0, v3

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupHiddenByParent(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p1

    move v5, v1

    :goto_1
    if-gt v2, v3, :cond_5

    aget-object v6, v0, v2

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v7

    const/4 v8, 0x1

    if-ne p1, v7, :cond_3

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetHidden()V

    if-eqz v5, :cond_4

    invoke-interface {v6, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v8

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private expandRow(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHidden()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupHiddenByParent(I)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHidden()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupCollapsed(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHidden()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCollapsed()V

    :cond_5
    return-void
.end method

.method private findColInfoIdx(II)I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    move v1, p2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-direct {p0, v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fromIdx parameter out of range: "

    invoke-static {p1, p2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "column parameter out of range: "

    invoke-static {p2, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge p1, v3, :cond_2

    add-int/lit8 v4, p1, 0x1

    aget-object v5, v0, v4

    invoke-direct {p0, v1, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v4

    move-object v1, v5

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    :goto_0
    if-eqz p1, :cond_2

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfRowOutlineGroup(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    if-ge v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I
    .locals 5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    mul-int v6, v3, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_0
    if-gt v6, v2, :cond_3

    move v7, v1

    :goto_1
    if-gt v7, p1, :cond_2

    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v8

    :cond_0
    invoke-virtual {v8, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    :cond_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-class p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->sizeOfSheetViewArray()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getMaxOutlineLevelCols()S
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-short p0, v2

    return p0
.end method

.method private getMaxOutlineLevelRows()S
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    int-to-short p0, v0

    return p0
.end method

.method private getPane(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 19

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    move/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v13, v1

    move-object/from16 v14, p0

    move/from16 v15, p3

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    const/4 v10, 0x0

    move-object v7, v2

    move/from16 v9, p4

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":$"

    const-string v5, "!$"

    const-string v7, ""

    const/4 v8, -0x1

    move/from16 v9, p1

    if-ne v9, v8, :cond_1

    move/from16 v9, p2

    if-eq v9, v8, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    move-object v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v6, p3

    :goto_1
    if-ne v6, v8, :cond_2

    move/from16 v6, p4

    if-eq v6, v8, :cond_3

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-static {v0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatingRowsOrColumns(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    const-string v1, "_xlnm.Print_Titles"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v5, p0, v4

    invoke-static {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    if-eq v6, v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    if-ne v6, v7, :cond_4

    :cond_3
    if-eqz p1, :cond_7

    return-object v5

    :cond_4
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-eq v6, v2, :cond_6

    :cond_5
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-ne v6, v7, :cond_7

    :cond_6
    if-nez p1, :cond_7

    return-object v5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method private getRows(IIZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    :goto_0
    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getRows: startRowNum must be less than or equal to endRowNum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    return-object p0
.end method

.method private getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSheetTypeSelection(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->sizeOfSelectionArray()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getSelectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object p0

    return-object p0
.end method

.method private getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetFormatPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    return-object p0
.end method

.method private static getSubtotalFormulaStartFromTotalsRowFunction(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SUBTOTAL(110"

    goto :goto_0

    :pswitch_1
    const-string v0, "SUBTOTAL(107"

    goto :goto_0

    :pswitch_2
    const-string v0, "SUBTOTAL(102"

    goto :goto_0

    :pswitch_3
    const-string v0, "SUBTOTAL(103"

    goto :goto_0

    :pswitch_4
    const-string v0, "SUBTOTAL(101"

    goto :goto_0

    :pswitch_5
    const-string v0, "SUBTOTAL(104"

    goto :goto_0

    :pswitch_6
    const-string v0, "SUBTOTAL(105"

    goto :goto_0

    :pswitch_7
    const-string v0, "SUBTOTAL(109"

    :goto_0
    :pswitch_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private groupColumn1Based(II)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    :cond_0
    int-to-long v6, p1

    invoke-interface {v2, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v6, v0, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v4, v3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-gt p1, p2, :cond_2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v4, v3

    invoke-interface {p1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    const/16 p1, 0x7fff

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-short p1, p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->increaseSheetFormatPrOutlineLevelColIfNecessary(S)V

    return-void
.end method

.method private increaseSheetFormatPrOutlineLevelColIfNecessary(S)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetFormatPrOutlineLevelCol()S

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelCol(S)V

    :cond_0
    return-void
.end method

.method private increaseSheetFormatPrOutlineLevelRowIfNecessary(S)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetFormatPrOutlineLevelRow()S

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    :cond_0
    return-void
.end method

.method private initHyperlinks()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetHyperlinks()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->getHyperlinkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v7, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Had empty sheet data when initializing the sheet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    aget-object v2, v0, v2

    aget-object p1, v0, p1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result p0

    return p0
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v0, v4

    aget-object p1, v0, p1

    invoke-direct {p0, v4, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-le v2, v1, :cond_2

    return v3

    :cond_2
    return p0
.end method

.method private isRowGroupCollapsed(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result p0

    return p0
.end method

.method private isRowGroupHiddenByParent(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v2

    :goto_2
    if-le v1, v2, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method private static synthetic lambda$createPivotTable$2(Lorg/apache/poi/ss/util/AreaReference;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v1

    aget-object p0, p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setRef(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createPivotTable$3(Lorg/apache/poi/ss/usermodel/Name;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createPivotTable$4(Lorg/apache/poi/ss/usermodel/Table;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$shiftCommentsAndRows$0(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p1, -0x1

    const/4 p2, 0x1

    if-lez p0, :cond_2

    if-ge v0, v1, :cond_1

    move p1, p2

    :cond_1
    return p1

    :cond_2
    if-le v0, v1, :cond_3

    move p1, p2

    :cond_3
    return p1
.end method

.method private static synthetic lambda$shiftCommentsForColumns$1(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p1, -0x1

    const/4 p2, 0x1

    if-lez p0, :cond_2

    if-ge v0, v1, :cond_1

    move p1, p2

    :cond_1
    return p1

    :cond_2
    if-le v0, v1, :cond_3

    move p1, p2

    :cond_3
    return p1
.end method

.method private static newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 6

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setWorkbookViewId(J)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v1

    const-string v2, "A1"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    return-object v0
.end method

.method private rebuildRows()V
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getR()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->setRowArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rebuildTableFormulas(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getHeaderRowCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTotalsRowCount()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellFormulaValidation()Z

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellFormulaValidation(Z)V

    :goto_1
    if-gt v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v6

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v7, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->CREATE_NULL_AS_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellFormulaValidation(Z)V

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellFormulaValidation(Z)V

    throw p1

    :cond_3
    return-void
.end method

.method private removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
    .locals 5

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v1

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->removeBrk(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeOverwritten(III)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v4

    invoke-static {p1, p2, p3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shouldRemoveRow(IIII)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Cell;->isPartOfArrayFormulaGroup()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p2}, Lorg/apache/poi/xssf/model/Comments;->getCellAddresses()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/util/CellAddress;

    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p3, p2}, Lorg/apache/poi/xssf/model/Comments;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p2

    invoke-virtual {v0, p3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    if-eqz p1, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-ne v0, v2, :cond_9

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-eq v0, v2, :cond_8

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v3

    if-gt v0, v3, :cond_a

    if-eqz v2, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_8

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method private safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    return-object p0
.end method

.method private setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V
    .locals 4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->addNewBrk()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object p0

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setId(J)V

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMan(Z)V

    int-to-long v0, p3

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMax(J)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->sizeOfBrkArray()I

    move-result p0

    int-to-long p0, p0

    invoke-interface {p2, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setCount(J)V

    invoke-interface {p2, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setManualBreakCount(J)V

    return-void
.end method

.method private setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v9

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v11

    int-to-long v13, v1

    cmp-long v9, v9, v13

    if-ltz v9, :cond_0

    cmp-long v10, v11, v13

    if-gtz v10, :cond_0

    goto :goto_2

    :cond_0
    if-lez v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-direct {p0, v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(Ljava/lang/Boolean;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    return-void

    :cond_3
    const/4 v5, 0x1

    if-eqz p2, :cond_4

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    if-eqz p3, :cond_5

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v7, v9, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    if-eqz p4, :cond_6

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v9, v10, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    move v9, v4

    :goto_5
    if-eqz v2, :cond_7

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v10

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v10, v11, :cond_7

    move v4, v5

    :cond_7
    if-nez v7, :cond_9

    if-nez v9, :cond_9

    if-nez v4, :cond_9

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    return-void

    :cond_9
    :goto_6
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v6

    int-to-long v9, v1

    cmp-long v1, v4, v9

    if-nez v1, :cond_a

    cmp-long v4, v6, v9

    if-nez v4, :cond_a

    invoke-direct {p0, v2, v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(Ljava/lang/Boolean;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-void

    :cond_a
    const-wide/16 v4, 0x1

    if-eqz v1, :cond_c

    cmp-long v11, v6, v9

    if-nez v11, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v1, v3, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    iget-object v11, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v11, v3, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    sub-long v12, v9, v4

    invoke-interface {v8, v12, v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-interface {v1, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v1, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(Ljava/lang/Boolean;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    add-long/2addr v9, v4

    invoke-interface {v11, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    int-to-long v1, v6

    invoke-interface {v11, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v0, v3, v11}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    goto :goto_9

    :cond_c
    :goto_7
    if-nez v1, :cond_d

    add-long/2addr v4, v9

    invoke-interface {v8, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    goto :goto_8

    :cond_d
    sub-long v4, v9, v4

    invoke-interface {v8, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :goto_8
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v1, v3, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    invoke-interface {v1, v9, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(Ljava/lang/Boolean;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    :goto_9
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    :cond_0
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_3

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    add-int/lit8 p1, p1, 0x1

    array-length v2, v0

    if-ge p1, v2, :cond_0

    aget-object v2, v0, p1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    if-ge v3, p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid row range specification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v1, v0

    move v2, v1

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    if-ne v3, v0, :cond_3

    if-ne v4, v0, :cond_4

    :cond_3
    if-lt v3, v0, :cond_4

    if-lt v4, v0, :cond_4

    if-gt v3, v4, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid column range specification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v4, v0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v3

    const/4 v5, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    move p1, v5

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p2

    const-string v6, "_xlnm.Print_Titles"

    invoke-virtual {p2, v6, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p2

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    :cond_7
    return-void

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p2

    :cond_9
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v4, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object p0

    invoke-virtual {p0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setValidSettings(Z)V

    :goto_3
    return-void
.end method

.method private setSheetFormatPrOutlineLevelCol()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelCols()S

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelCol(S)V

    return-void
.end method

.method private setSheetFormatPrOutlineLevelRow()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelRows()S

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    return-void
.end method

.method private shiftCommentsAndRows(III)V
    .locals 10

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/a;

    invoke-direct {v1, p3}, Lorg/apache/poi/xssf/usermodel/a;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftedRowNum(IIII)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v5}, Lorg/apache/poi/xssf/model/Comments;->getCellAddresses()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v7

    if-ne v7, v3, :cond_1

    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v7, v6}, Lorg/apache/poi/xssf/model/Comments;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    iget-object v8, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Ld3/e;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-lt v3, p1, :cond_0

    if-le v3, p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->shift(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setRow(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildRows()V

    return-void
.end method

.method private shiftCommentsForColumns(Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;III)V
    .locals 6

    new-instance p1, Ljava/util/TreeMap;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/b;

    invoke-direct {v0, p4}, Lorg/apache/poi/xssf/usermodel/b;-><init>(I)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xssf/model/Comments;->getCellAddresses()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    invoke-direct {p0, p2, p3, p4, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftedRowNum(IIII)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v2, v1}, Lorg/apache/poi/xssf/model/Comments;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Ld3/e;

    move-result-object v1

    invoke-direct {v2, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setColumn(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildRows()V

    return-void
.end method

.method private shiftedRowNum(IIII)I
    .locals 0

    if-ge p4, p1, :cond_1

    if-gtz p3, :cond_0

    sub-int p0, p1, p4

    if-le p0, p3, :cond_1

    :cond_0
    return p4

    :cond_1
    if-le p4, p2, :cond_3

    if-ltz p3, :cond_2

    sub-int p0, p4, p2

    if-le p0, p3, :cond_3

    :cond_2
    return p4

    :cond_3
    if-ge p4, p1, :cond_4

    sub-int/2addr p2, p1

    add-int/2addr p2, p4

    return p2

    :cond_4
    if-le p4, p2, :cond_5

    sub-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4

    :cond_5
    add-int/2addr p4, p3

    return p4
.end method

.method private static shouldRemoveRow(IIII)Z
    .locals 2

    add-int v0, p0, p2

    const/4 v1, 0x0

    if-lt p3, v0, :cond_1

    add-int v0, p1, p2

    if-gt p3, v0, :cond_1

    const/4 v0, 0x1

    if-lez p2, :cond_0

    if-le p3, p1, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    if-ge p3, p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private unsetCollapsed(Ljava/lang/Boolean;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetCollapsed()V

    :goto_0
    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    :goto_0
    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    move v5, v1

    :goto_1
    if-gt v5, v3, :cond_4

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The range "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intersects with a multi-cell array formula. You cannot merge cells of an array."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add merged region "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to sheet because it overlaps with an existing merged region ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    if-ge v1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method


# virtual methods
.method public addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p0

    return p0
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p0

    return p0
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 3

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->sizeOfDataValidationArray()I

    move-result p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->addNewDataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->getCtDataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    int-to-long p0, p0

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-interface {v0, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->setCount(J)V

    return-void
.end method

.method public autoSizeColumn(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->autoSizeColumn(IZ)V

    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 4

    .line 2
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    const p2, 0xff00

    int-to-double v2, p2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnWidth(II)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long p1, p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColBestFit(JZ)V

    :cond_1
    return-void
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V
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

.method public copyRows(IIILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRows(IIZ)Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    return-void
.end method

.method public copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;I",
            "Lorg/apache/poi/ss/usermodel/CellCopyPolicy;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    if-eqz v1, :cond_8

    .line 4
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v4

    .line 5
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_3

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/usermodel/Row;

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 9
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    if-ne v7, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "All rows in srcRows must belong to the same sheet. Expected all rows from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Got srcRows["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "All rows in srcRows must belong to the same sheet in the same workbook. Expected all rows from same workbook ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "). Got srcRows["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] from different workbook ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcRows may not contain null rows. Found null row at index "

    const-string p2, "."

    .line 17
    invoke-static {p1, v3, p2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_3
    new-instance v3, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    invoke-direct {v3, p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    .line 20
    invoke-virtual {v3, v0}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->setCopyMergedRegions(Z)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Row;

    .line 22
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCondenseRows()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v0, 0x1

    goto :goto_2

    .line 23
    :cond_4
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v6, p2

    move v9, v6

    move v6, v0

    move v0, v9

    .line 24
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    move v0, v6

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result p1

    if-eqz p1, :cond_7

    sub-int/2addr p2, v4

    .line 27
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 28
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    if-gt v4, v0, :cond_6

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    if-gt v0, v2, :cond_6

    .line 29
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p3

    .line 30
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    .line 31
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    .line 32
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_3

    :cond_7
    return-void

    .line 33
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "copyRows: First row cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No rows to copy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    return-object p0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object p0

    .line 9
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->setId(Ljava/lang/String;)V

    return-object v1
.end method

.method public createFreezePane(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    xor-int/lit8 v2, v1, 0x1

    .line 2
    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->unsetPane()V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v1

    :goto_1
    if-lez p1, :cond_5

    int-to-double v2, p1

    .line 7
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setXSplit(D)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetXSplit()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetXSplit()V

    :cond_6
    :goto_2
    if-lez p2, :cond_7

    int-to-double v2, p2

    .line 10
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setYSplit(D)V

    goto :goto_3

    .line 11
    :cond_7
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetYSplit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetYSplit()V

    .line 13
    :cond_8
    :goto_3
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    if-nez p2, :cond_9

    .line 14
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move p4, v0

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    .line 15
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move p3, v0

    .line 16
    :cond_a
    :goto_4
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    .line 17
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p4, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    .line 18
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    .line 19
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object p0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    return-void
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 38
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The named range references another sheet than the defined source sheet "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    :goto_0
    new-instance v0, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 3

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lg1/z;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p1}, Lg1/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The area is referenced in another sheet than the defined source sheet "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lg1/z;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lg1/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 4

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    if-eqz v1, :cond_1

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    .line 7
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 9
    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 10
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->insertNewRow(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 11
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->addNewRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    .line 12
    :goto_2
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 13
    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 14
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public createSplitPane(IIIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "7.0.0"
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    .line 3
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->SPLIT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    .line 4
    invoke-static {p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    :cond_1
    return-void
.end method

.method public createSplitPane(IIIILorg/apache/poi/ss/usermodel/PaneType;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    if-gtz p1, :cond_0

    if-lez p2, :cond_4

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    .line 7
    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->SPLIT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    .line 8
    sget-object p2, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->$SwitchMap$org$apache$poi$ss$usermodel$PaneType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    .line 9
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->TOP_LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    .line 13
    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    :cond_4
    return-void
.end method

.method public createTable(Lorg/apache/poi/ss/util/AreaReference;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetTableParts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->addNewTablePart()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v3

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/openxml4j/opc/PackagePart;

    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v6, v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1, v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->setId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setId(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->supportsAreaReference(Lorg/apache/poi/ss/util/AreaReference;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setArea(Lorg/apache/poi/ss/util/AreaReference;)V

    :cond_4
    :goto_2
    const p1, 0x7fffffff

    if-ge v1, p1, :cond_6

    const-string p1, "Table"

    invoke-static {p1, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setName(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v3
.end method

.method public disableLocking()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public enableLocking()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public findEndOfRowOutlineGroup(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->getActiveCell()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getAutobreaks()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getAutoPageBreaks()Z

    move-result p0

    return p0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    return-object p0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/xssf/model/Comments;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v1}, Lorg/apache/poi/xssf/model/Comments;->getCellAddresses()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_0
    return-object p0
.end method

.method public getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    return-object p0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p0

    return p0
.end method

.method public getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColDefaultStyle(J)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getColumnWidth(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result p0

    int-to-double p0, p0

    :goto_1
    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method public getColumnWidthInPixels(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result p0

    int-to-float p0, p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    div-double/2addr p0, v0

    const-wide v0, 0x401c01bda0000000L    # 7.001699924468994

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public getCommentsTable(Z)Lorg/apache/poi/xssf/model/Comments;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/model/Comments;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/model/Comments;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    return-object p0
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    return-object p0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->getDataValidationArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    new-instance v5, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v5}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getSqref()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/apache/poi/ss/util/CellReference;

    aget-object v12, v10, v2

    invoke-direct {v11, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    array-length v12, v10

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    new-instance v12, Lorg/apache/poi/ss/util/CellReference;

    aget-object v10, v10, v13

    invoke-direct {v12, v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v12, v11

    :goto_2
    new-instance v10, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v13

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v14

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v11

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v12

    invoke-direct {v10, v13, v14, v11, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v5, v10}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {v6, v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getBaseColWidth()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getDefaultRowHeight()D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    return p0
.end method

.method public getDimension()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dimensionOverride:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->getRef()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getDisplayGuts()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getShowOutlineSymbols()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_1
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    .line 9
    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    const-string v1, "Can\'t find drawing with id={} in the list of the sheet\'s relationships"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFitToPage()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getFitToPage()Z

    move-result p0

    return p0
.end method

.method public getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object p0

    return-object p0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->getFullCalcOnLoad()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderFooterProperties()Lorg/apache/poi/xssf/usermodel/XSSFHeaderFooterProperties;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFHeaderFooterProperties;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFHeaderFooterProperties;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHorizontalCentered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlinkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v2

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIgnoredErrors()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->getIgnoredErrorList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->getErrorTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->getSqref()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLeftCol()S
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    return p0
.end method

.method public getMargin(Lorg/apache/poi/ss/usermodel/PageMargin;)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p0

    .line 4
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->$SwitchMap$org$apache$poi$ss$usermodel$PageMargin:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown margin constant:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getFooter()D

    move-result-wide p0

    return-wide p0

    .line 7
    :pswitch_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getHeader()D

    move-result-wide p0

    return-wide p0

    .line 8
    :pswitch_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getBottom()D

    move-result-wide p0

    return-wide p0

    .line 9
    :pswitch_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getTop()D

    move-result-wide p0

    return-wide p0

    .line 10
    :pswitch_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getRight()D

    move-result-wide p0

    return-wide p0

    .line 11
    :pswitch_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getLeft()D

    move-result-wide p0

    return-wide p0

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

.method public getMargin(S)D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "7.0.0"
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/PageMargin;->getByShortValue(S)Lorg/apache/poi/ss/usermodel/PageMargin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMargin(Lorg/apache/poi/ss/usermodel/PageMargin;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This worksheet does not contain merged regions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNumHyperlinks()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumMergedRegions()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getNumberOfComments()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/xssf/model/Comments;->getNumberOfComments()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getOddHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetTopLeftCell()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getTopLeftCell()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    move v7, v1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v0

    move v7, v6

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getXSplit()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-short v4, v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getYSplit()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-short v5, v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getActivePane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object v1

    invoke-virtual {v1}, Li5/h0;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v8, v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    if-ne p0, v1, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    new-instance p0, Lorg/apache/poi/ss/util/PaneInformation;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/ss/util/PaneInformation;-><init>(SSSSBZ)V

    return-object p0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object p0

    return-object p0
.end method

.method public getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    return-object v0
.end method

.method public getProtect()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result p0

    return p0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColumns(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColumns(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object p0
.end method

.method public getRowBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_0
    return-object p0
.end method

.method public getRowSumsBelow()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryBelow()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public getRowSumsRight()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryRight()Z

    move-result p0

    return p0
.end method

.method public getScenarioProtect()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    return-object p0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    move-result-object p0

    return-object p0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v0
.end method

.method public getSheetFormatPrOutlineLevelCol()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getOutlineLevelCol()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getSheetFormatPrOutlineLevelRow()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getOutlineLevelRow()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypeSheetViews(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetViews()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->sizeOfSheetViewArray()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    :cond_3
    return-object p0
.end method

.method public getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetTabColor()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->xssfvmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v3

    :cond_2
    if-nez v1, :cond_3

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    const-string v2, "Can\'t find VML drawing with id={} in the list of the sheet\'s relationships"

    invoke-interface {v0, p1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->xssfvmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->xssfvmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    return-object p0
.end method

.method public getVerticallyCenter()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getVerticalCentered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public groupColumn(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->groupColumn1Based(II)V

    return-void
.end method

.method public groupRow(II)V
    .locals 3

    const/4 v0, -0x1

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v2, v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x7fff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-short p1, p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->increaseSheetFormatPrOutlineLevelRowIfNecessary(S)V

    return-void
.end method

.method public hasComments()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/xssf/model/Comments;->getNumberOfComments()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoFilterLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getAutoFilter()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isColumnBroken(I)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnBreaks()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isColumnHidden(I)Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public isDeleteColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteColumns()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeleteRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteRows()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowFormulas()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowGridLines()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowRowColHeaders()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowZeros()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isFormatCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatCells()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFormatColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatColumns()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFormatRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatRows()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsertColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertColumns()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsertHyperlinksLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertHyperlinks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsertRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertRows()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isObjectsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getObjects()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPivotTablesLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getPivotTables()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrintGridlines()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getGridLines()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHeadings()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightToLeft()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getRightToLeft()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRowBroken(I)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowBreaks()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isScenariosLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectLockedCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectLockedCells()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectUnlockedCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectUnlockedCells()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTabSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSheetLocked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSheet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSheetProtectionEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result p0

    return p0
.end method

.method public isSortLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSort()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockAutoFilter(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setAutoFilter(Z)V

    return-void
.end method

.method public lockDeleteColumns(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteColumns(Z)V

    return-void
.end method

.method public lockDeleteRows(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteRows(Z)V

    return-void
.end method

.method public lockFormatCells(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatCells(Z)V

    return-void
.end method

.method public lockFormatColumns(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatColumns(Z)V

    return-void
.end method

.method public lockFormatRows(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatRows(Z)V

    return-void
.end method

.method public lockInsertColumns(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertColumns(Z)V

    return-void
.end method

.method public lockInsertHyperlinks(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertHyperlinks(Z)V

    return-void
.end method

.method public lockInsertRows(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertRows(Z)V

    return-void
.end method

.method public lockObjects(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    return-void
.end method

.method public lockPivotTables(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setPivotTables(Z)V

    return-void
.end method

.method public lockScenarios(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    return-void
.end method

.method public lockSelectLockedCells(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectLockedCells(Z)V

    return-void
.end method

.method public lockSelectUnlockedCells(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectUnlockedCells(Z)V

    return-void
.end method

.method public lockSort(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSort(Z)V

    return-void
.end method

.method public onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V
    .locals 12

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    if-gt v0, v4, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    if-eqz v4, :cond_1

    move v5, v1

    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eq v6, p1, :cond_0

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v8

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v8, v9, :cond_0

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v8

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-virtual {v6, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result p2

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public onDocumentCreate()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    return-void
.end method

.method public onDocumentRead()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    if-gt p1, v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p1, v4, v5, v6, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne p1, v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public onSheetDelete()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetSheetProtection()V

    :goto_0
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->getWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/xssf/model/Comments;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/model/Comments;

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v2, p0}, Lorg/apache/poi/xssf/model/Comments;->setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initHyperlinks()V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readOleObject(J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .locals 6

    const-string v0, "can\'t close reader"

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//p:oleObject"

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, v1}, Li5/p0;->selectPath(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    :goto_0
    invoke-interface {p0}, Li5/p0;->a1()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v4, "shapeId"

    invoke-direct {v3, v2, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-object v1, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    invoke-interface {p0}, Li5/j2;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v4, v3}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->sizeOfOleObjectArray()I

    move-result v5
    :try_end_1
    .catch Li5/z0; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_4

    :try_start_2
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->f()La5/b;

    move-result-object v4

    invoke-interface {v4, v3}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v3

    invoke-interface {v3, v0}, La5/b;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->getOleObjectArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v1
    :try_end_4
    .catch Li5/z0; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_5
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_6
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->f()La5/b;

    move-result-object v4

    invoke-interface {v4, v3}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v3

    :goto_1
    invoke-interface {v3, v0}, La5/b;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_7
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v5}, La5/d;->f()La5/b;

    move-result-object v5

    invoke-interface {v5, v4}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v4

    const-string v5, "can\'t parse CTOleObjects"

    invoke-interface {v4, v5}, La5/b;->f(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_8
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v3

    :try_start_9
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->f()La5/b;

    move-result-object v4

    invoke-interface {v4, v3}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v3

    goto :goto_1

    :goto_2
    const-string v3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v4, "objectPr"

    invoke-interface {p0, v3, v4}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_5

    :goto_3
    :try_start_a
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_a
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_4
    move-exception p2

    :try_start_b
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->f()La5/b;

    move-result-object v1

    invoke-interface {v1, p2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p2

    invoke-interface {p2, v0}, La5/b;->f(Ljava/lang/String;)V

    :goto_4
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_5
    invoke-interface {p0}, Li5/p0;->close()V

    return-object v1

    :goto_6
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p0, :cond_6

    :try_start_d
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw p2
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cell "

    const-string v1, " is not part of an array formula."

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specified cell does not belong to this sheet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeColumnBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    :cond_0
    return-void
.end method

.method public removeHyperlink(II)V
    .locals 6
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, p2, :cond_1

    .line 7
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    add-int/lit8 v4, p2, -0x1

    .line 9
    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastColumn(I)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastRow(I)V

    .line 12
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 13
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v4

    if-le v4, p2, :cond_2

    .line 14
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    add-int/2addr p2, v3

    .line 15
    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    .line 16
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastColumn(I)V

    .line 17
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    .line 18
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastRow(I)V

    .line 19
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    move v2, v3

    .line 20
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result p2

    if-ge p2, p1, :cond_5

    .line 21
    new-instance p2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    if-eqz v1, :cond_3

    move v4, p1

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v4

    :goto_1
    if-eqz v2, :cond_4

    move v5, p1

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v5

    .line 24
    :goto_2
    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    .line 25
    invoke-virtual {p2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastColumn(I)V

    .line 26
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    add-int/lit8 v4, p1, -0x1

    .line 27
    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastRow(I)V

    .line 28
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    .line 29
    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result p2

    if-le p2, p1, :cond_8

    .line 30
    new-instance p2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    if-eqz v1, :cond_6

    move v1, p1

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v1

    :goto_3
    if-eqz v2, :cond_7

    move v2, p1

    goto :goto_4

    .line 32
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v2

    .line 33
    :goto_4
    invoke-virtual {p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    .line 34
    invoke-virtual {p2, v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastColumn(I)V

    add-int/2addr p1, v3

    .line 35
    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    .line 36
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastRow(I)V

    .line 37
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    .line 38
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public removeHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->removeMergeCell(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    :goto_0
    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->setMergeCellArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V

    :goto_1
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Row;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComments()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v2, v1}, Lorg/apache/poi/xssf/model/Comments;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specified row does not belong to this sheet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeRowBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    :cond_0
    return-void
.end method

.method public removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->onTableDelete()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->sizeOfTablePartArray()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->getTablePartArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_2
    if-eq v1, p1, :cond_4

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->removeTablePart(I)V

    :cond_4
    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setActiveCell(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setSqref(Ljava/util/List;)V

    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    move-result-object p0

    return-object p0
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    .line 4
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    const-string v3, "_xlnm._FilterDatabase"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v4

    .line 12
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setHidden(Z)V

    .line 13
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 14
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v1
.end method

.method public setAutobreaks(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setAutoPageBreaks(Z)V

    return-void
.end method

.method public setColumnBreak(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    :cond_1
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseColumn(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandColumn(I)V

    :goto_0
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColHidden(JZ)V

    return-void
.end method

.method public setColumnWidth(II)V
    .locals 5

    const v0, 0xff00

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    int-to-double p1, p2

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    div-double/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColWidth(JD)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setCustomWidth(JZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The maximum column width for an individual cell is 255 characters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setBaseColWidth(J)V

    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeightInPoints(F)V

    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    float-to-double v1, p1

    invoke-interface {p0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setCustomHeight(Z)V

    return-void
.end method

.method public setDimensionOverride(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dimensionOverride:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowFormulas(Z)V

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowGridLines(Z)V

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setShowOutlineSymbols(Z)V

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowRowColHeaders(Z)V

    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowZeros(Z)V

    return-void
.end method

.method public setFitToPage(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setFitToPage(Z)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->setFullCalcOnLoad(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->setFullCalcOnLoad(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne p0, p1, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    :cond_2
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHorizontalCentered(Z)V

    return-void
.end method

.method public setMargin(Lorg/apache/poi/ss/usermodel/PageMargin;D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 14
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 15
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p0

    .line 16
    :goto_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->$SwitchMap$org$apache$poi$ss$usermodel$PageMargin:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown margin constant:  "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :pswitch_0
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    goto :goto_1

    .line 19
    :pswitch_1
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    goto :goto_1

    .line 20
    :pswitch_2
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    goto :goto_1

    .line 21
    :pswitch_3
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    goto :goto_1

    .line 22
    :pswitch_4
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    goto :goto_1

    .line 23
    :pswitch_5
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    :goto_1
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

.method public setMargin(SD)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "7.0.0"
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/PageMargin;->getByShortValue(S)Lorg/apache/poi/ss/usermodel/PageMargin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setMargin(Lorg/apache/poi/ss/usermodel/PageMargin;D)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown margin constant:  "

    .line 4
    invoke-static {p2, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPrintGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setGridLines(Z)V

    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHeadings(Z)V

    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setRightToLeft(Z)V

    return-void
.end method

.method public setRowBreak(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    :cond_1
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseRow(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandRow(I)V

    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryBelow(Z)V

    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryRight(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setTabSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setVerticalCentered(Z)V

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object p0

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setZoomScale(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Valid scale values range from 10 to 400"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shiftColumns(III)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartColIndex()I

    move-result v3

    if-ge v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndColIndex()I

    move-result v3

    if-lt v3, p1, :cond_0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartColIndex()I

    move-result v3

    if-le v3, p2, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndColIndex()I

    move-result v3

    if-le v3, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftCommentsForColumns(Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;III)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForColumnShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;

    invoke-direct {v2, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->shiftColumns(III)V

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->shiftMergedRegions(III)Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;->updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;->updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;->updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildRows()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildTableFormulas(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public shiftRows(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftRows(IIIZZ)V

    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 6

    .line 2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartRowIndex()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndRowIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartRowIndex()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndRowIndex()I

    move-result v1

    if-le v1, p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p5

    invoke-virtual {p5, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p5

    invoke-virtual {p5, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v5, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object p5

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeOverwritten(III)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftCommentsAndRows(III)V

    .line 12
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    .line 14
    invoke-virtual {v0, p5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 15
    invoke-virtual {v0, p5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 16
    invoke-virtual {v0, p5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 17
    invoke-virtual {v0, p5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildRows()V

    .line 19
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 20
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rebuildTableFormulas(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public showInPane(II)V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane(Z)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public ungroupColumn(II)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    const/4 v2, -0x1

    :goto_0
    if-gt p1, p2, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 p1, p1, -0x1

    int-to-short p1, p1

    invoke-interface {v3, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v4, v0, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v4, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->removeCol(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetFormatPrOutlineLevelCol()S

    move-result p1

    if-lt v2, p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelCol()V

    :cond_2
    return-void
.end method

.method public ungroupRow(II)V
    .locals 6

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v4

    add-int/lit8 v5, v4, -0x1

    int-to-short v5, v5

    invoke-interface {v3, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRow(Lorg/apache/poi/ss/usermodel/Row;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetFormatPrOutlineLevelRow()S

    move-result p1

    if-lt v1, p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelRow()V

    :cond_2
    return-void
.end method

.method public validateMergedRegions()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForMergedRegionsIntersectingArrayFormulas()V

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForIntersectingMergedRegions()V

    return-void
.end method

.method public validateSheetPassword(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfColsArray()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->sizeOfColArray()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->setHyperlinkArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->sizeOfHyperlinkArray()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->removeHyperlink(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetHyperlinks()V

    :cond_6
    :goto_3
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dimensionOverride:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-nez v2, :cond_a

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v6, v4

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->onDocumentWrite()V

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_8
    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v8

    if-eq v8, v9, :cond_7

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    :cond_9
    if-eq v6, v4, :cond_a

    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v3

    invoke-direct {v2, v1, v3, v6, v5}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    :cond_a
    if-eqz v2, :cond_c

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDimension()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    :cond_c
    :goto_5
    new-instance v1, Li5/z1;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v1, v2}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v2, Ljavax/xml/namespace/QName;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->type:Li5/c0;

    invoke-interface {v3}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "worksheet"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->save(Ljava/io/OutputStream;Li5/z1;)V

    if-eqz v0, :cond_d

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    :cond_d
    return-void

    :cond_e
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Cannot write invalid sheet, internal data is missing"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
