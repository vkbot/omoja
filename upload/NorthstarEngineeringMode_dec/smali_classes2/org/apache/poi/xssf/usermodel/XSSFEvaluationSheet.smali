.class final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _cellCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;",
            "Lorg/apache/poi/ss/formula/EvaluationCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    return-void
.end method

.method public getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->getLastRowNum()I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/Cell;

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v6, v4, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;-><init>(II)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/EvaluationCell;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-direct {v2, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_cellCache:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v2
.end method

.method public getLastRowNum()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result p0

    return p0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public isRowHidden(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->_xs:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getZeroHeight()Z

    move-result p0

    return p0
.end method
