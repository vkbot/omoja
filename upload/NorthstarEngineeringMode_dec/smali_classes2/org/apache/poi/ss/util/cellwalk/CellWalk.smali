.class public Lorg/apache/poi/ss/util/cellwalk/CellWalk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
    }
.end annotation


# instance fields
.field private final range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private traverseEmptyCells:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iput-object p2, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    return-void
.end method

.method private isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isTraverseEmptyCells()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    return p0
.end method

.method public setTraverseEmptyCells(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    return-void
.end method

.method public traverse(Lorg/apache/poi/ss/util/cellwalk/CellHandler;)V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    sub-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;-><init>(Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;)V

    invoke-static {v5, v0}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$102(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;I)I

    :goto_0
    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$100(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v6

    if-gt v6, v1, :cond_4

    iget-object v6, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$100(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v5, v2}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$202(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;I)I

    :goto_1
    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$200(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v7

    if-gt v7, v3, :cond_3

    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$200(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->isEmpty(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk;->traverseEmptyCells:Z

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$100(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->subtractExact(II)I

    move-result v8

    int-to-long v8, v8

    int-to-long v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$200(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    move-result v10

    sub-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$302(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;J)J

    invoke-interface {p1, v7, v5}, Lorg/apache/poi/ss/util/cellwalk/CellHandler;->onCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/cellwalk/CellWalkContext;)V

    :goto_2
    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$204(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    goto :goto_1

    :cond_3
    :goto_3
    invoke-static {v5}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->access$104(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I

    goto :goto_0

    :cond_4
    return-void
.end method
