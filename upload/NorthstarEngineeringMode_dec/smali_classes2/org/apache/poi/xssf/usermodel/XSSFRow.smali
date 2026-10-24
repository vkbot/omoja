.class public Lorg/apache/poi/xssf/usermodel/XSSFRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cells:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

.field private final _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetR()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result p0

    const/4 v0, 0x2

    add-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPhysicalNumberOfRows()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    :cond_2
    return-void
.end method

.method private fixupCTCells([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 8

    array-length v0, p1

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    new-instance v1, Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    check-cast v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    aput-object v7, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "Should find CTCell in _row"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_1

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v0, v4

    invoke-interface {v5, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object p1

    array-length p1, p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->removeC(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static setDefaultValue(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/FormulaError;->_NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cell-type specified: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValue(Z)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    :goto_0
    return-void
.end method

.method private shiftCell(II)V
    .locals 1

    add-int/2addr p2, p1

    if-ltz p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellNum(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Column index less than zero : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cellIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p1

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The compared rows must belong to the same sheet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V

    return-void
.end method

.method public copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V
    .locals 7

    if-nez p1, :cond_4

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0, p2, p3}, Lorg/apache/poi/ss/util/CellUtil;->copyCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p1

    .line 6
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 8
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegions(Ljava/util/Collection;)V

    .line 11
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    goto/16 :goto_4

    .line 13
    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    .line 14
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    .line 15
    invoke-static {v1, v2, p2, p3}, Lorg/apache/poi/ss/util/CellUtil;->copyCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 16
    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 17
    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result p3

    .line 19
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    sub-int v5, v0, p3

    .line 20
    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v3, p3

    move v4, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    .line 21
    new-instance v2, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    .line 22
    invoke-virtual {v2, p0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRowFormulas(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 23
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 25
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    if-ne p3, v3, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v3

    if-ne p3, v3, :cond_6

    .line 26
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    .line 28
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_3

    .line 30
    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeight()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    :cond_8
    :goto_4
    return-void
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 3

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v1

    .line 7
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    .line 8
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->addNewC()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v1

    .line 9
    :goto_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    .line 10
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellNum(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p2, p1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p2, p1, :cond_1

    .line 12
    invoke-static {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setDefaultValue(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    .line 13
    invoke-virtual {p0, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    .line 14
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->removeC(I)V

    .line 15
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    return-object p0
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 3

    if-ltz p1, :cond_4

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 6
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    .line 7
    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    :cond_0
    return-object v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Illegal policy "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p0, p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cell index must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirstCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    int-to-short p0, p0

    return p0
.end method

.method public getHeight()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getHeightInPoints()F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public getHeightInPoints()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHt()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p0

    return p0
.end method

.method public getLastCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    int-to-short p0, p0

    return p0
.end method

.method public getOutlineLevel()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result p0

    return p0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    return p0
.end method

.method public getRowNum()I
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getR()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->isFormatted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getS()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public getZeroHeight()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFormatted()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result p0

    return p0
.end method

.method public onDocumentWrite()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->applyDefaultCellStyleIfNecessary()V

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->fixupCTCells([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->removeC(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the row does not contain this cell"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specified cell does not belong to this row"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHeight(S)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHt()V

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetCustomHeight()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomHeight()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHt(D)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomHeight(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p1

    :goto_0
    float-to-int p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    return-void
.end method

.method public setRowNum(I)V
    .locals 4

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid row number ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") outside allowable range (0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetS()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomFormat()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setS(J)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomFormat(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    return-void
.end method

.method public shift(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    add-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Row[rownum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->updateCellReferencesForShifting(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shiftCellsLeft(III)V
    .locals 1

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->validateShiftLeftParameters(III)V

    :goto_0
    if-gt p1, p2, :cond_0

    neg-int v0, p3

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->shiftCell(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sub-int p1, p2, p3

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_2

    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object p3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public shiftCellsRight(III)V
    .locals 2

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->validateShiftParameters(III)V

    :goto_0
    if-lt p2, p1, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->shiftCell(II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_1
    add-int v0, p1, p3

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
