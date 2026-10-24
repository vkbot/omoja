.class public Lorg/apache/poi/xssf/streaming/SXSSFRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;,
        Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/streaming/SXSSFRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNDEFINED:Ljava/lang/Boolean;


# instance fields
.field private final _cells:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/SXSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private _collapsed:Ljava/lang/Boolean;

.field private _height:S

.field private _hidden:Ljava/lang/Boolean;

.field private _outlineLevel:I

.field private _rowNum:I

.field private final _sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

.field private _style:S

.field private _zHeight:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->UNDEFINED:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/streaming/SXSSFRow;)Ljava/util/SortedMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    return-object p0
.end method

.method private static checkBounds(I)V
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    if-ltz p0, :cond_0

    if-gt p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid column index ("

    const-string v4, ").  Allowable column range for "

    invoke-static {v3, p0, v4}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is (0.."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") or (\'A\'..\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public allCellsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

.method public allCellsSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->allCellsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getLastCellNum()S

    move-result p0

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public cellIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

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

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    .line 5
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;I)V

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->trackNewCell(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p0

    return-object p0
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 3

    .line 5
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    .line 7
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

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

    .line 8
    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9
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

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p0, p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCollapsed()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFirstCellNum()S
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getHeight()S
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p0, v0

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    :goto_0
    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public getHeightInPoints()F
    .locals 4

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result p0

    float-to-double v0, p0

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    :goto_0
    double-to-float p0, v0

    return p0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLastCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    :goto_0
    return p0
.end method

.method public getOutlineLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    return p0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getRowNum()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_rowNum:I

    return p0
.end method

.method public getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    iget-short p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getRowStyleIndex()I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    return p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object p0
.end method

.method public getZeroHeight()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    return p0
.end method

.method public hasCustomHeight()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFormatted()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    :goto_0
    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    return-void
.end method

.method public setRowNum(I)V
    .locals 1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_rowNum:I

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->changeRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;I)V

    return-void
.end method

.method public setRowNumWithoutUpdatingSheet(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_rowNum:I

    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    :goto_0
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    return-void
.end method

.method public shiftCellsLeft(III)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p1, "shiftCellsLeft"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shiftCellsRight(III)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string p1, "shiftCellsRight"

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
