.class abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractCellRangeDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final evaluator:Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

.field private final numOfCells:I

.field private final sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->numOfCells:I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->evaluator:Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    return-void
.end method


# virtual methods
.method public getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->numOfCells:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    div-int v3, p1, v2

    add-int/2addr v3, v0

    rem-int/2addr p1, v2

    add-int/2addr p1, v1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->evaluator:Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index must be between 0 and "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->numOfCells:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (inclusive), given: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p0

    return p0
.end method

.method public getDataRangeReference()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPointCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->numOfCells:I

    return p0
.end method

.method public isCellRange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReference()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
