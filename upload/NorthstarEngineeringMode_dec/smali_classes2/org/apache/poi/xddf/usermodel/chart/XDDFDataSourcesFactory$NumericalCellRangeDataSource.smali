.class Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalCellRangeDataSource;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericalCellRangeDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource<",
        "Ljava/lang/Double;",
        ">;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private formatCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method


# virtual methods
.method public getFormatCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalCellRangeDataSource;->formatCode:Ljava/lang/String;

    return-object p0
.end method

.method public getPointAt(I)Ljava/lang/Double;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$AbstractCellRangeDataSource;->getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalCellRangeDataSource;->getPointAt(I)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public isNumeric()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setFormatCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$NumericalCellRangeDataSource;->formatCode:Ljava/lang/String;

    return-void
.end method
