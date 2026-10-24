.class public final Lorg/apache/poi/ss/formula/FormulaShifter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    }
.end annotation


# instance fields
.field private final _amountToMove:I

.field private final _dstSheetIndex:I

.field private final _externSheetIndex:I

.field private final _firstMovedIndex:I

.field private final _lastMovedIndex:I

.field private final _mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field private final _sheetName:Ljava/lang/String;

.field private final _srcSheetIndex:I

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    .line 4
    sget-object p1, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->SheetMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p3, p4, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput p5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput-object p6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object p7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstMovedIndex, lastMovedIndex out of order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-ne v0, p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported shift mode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToColumnCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToColumnMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private adjustPtgDueToColumnCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private adjustPtgDueToColumnMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToMove(Lorg/apache/poi/ss/formula/ptg/Ptg;IZ)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private adjustPtgDueToCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p2, :cond_a

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private adjustPtgDueToMove(Lorg/apache/poi/ss/formula/ptg/Ptg;IZ)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    iget p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    if-eq p2, v0, :cond_3

    return-object v1

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result p2

    if-gtz p2, :cond_8

    iget-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_8
    :goto_3
    return-object v1

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_a

    return-object p1

    :cond_a
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz p3, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_c
    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz p2, :cond_f

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    iget p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    if-eq p2, v0, :cond_d

    return-object v1

    :cond_d
    if-eqz p3, :cond_e

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_5

    :cond_e
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_f
    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p2, :cond_12

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result p2

    if-gtz p2, :cond_12

    iget-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_7

    :cond_10
    if-eqz p3, :cond_11

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_6

    :cond_11
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->columnMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_12
    :goto_7
    return-object v1
.end method

.method private adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToMove(Lorg/apache/poi/ss/formula/ptg/Ptg;IZ)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    if-ge v0, v2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge v0, v3, :cond_0

    return-object v1

    :cond_0
    if-le v0, v2, :cond_1

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-le v0, v3, :cond_1

    return-object v1

    :cond_1
    if-ne v0, v2, :cond_2

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    return-object p1

    :cond_2
    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge p0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    return-object p1

    :cond_3
    if-le p0, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method private columnCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v2

    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_4

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result p0

    if-ge p0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->sortTopLeftToBottomRight()V

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method private columnCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_3

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result p0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private columnMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v0, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v3, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v4, v2, v3

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int v6, v5, v3

    const/4 v7, 0x0

    if-ge v0, v2, :cond_3

    if-ge v5, v1, :cond_3

    if-ge v4, v0, :cond_1

    if-gt v0, v6, :cond_1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    return-object p1

    :cond_1
    if-gt v4, v1, :cond_2

    if-ge v1, v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_2
    return-object v7

    :cond_3
    if-gt v2, v0, :cond_8

    if-gt v0, v5, :cond_8

    if-gez v3, :cond_4

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    return-object p1

    :cond_4
    if-le v4, v1, :cond_5

    return-object v7

    :cond_5
    add-int/2addr v0, v3

    if-ge v6, v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    return-object p1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_7

    move v0, v5

    :cond_7
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_8
    if-gt v2, v1, :cond_d

    if-gt v1, v5, :cond_d

    if-lez v3, :cond_9

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_9
    if-ge v6, v0, :cond_a

    return-object v7

    :cond_a
    add-int/2addr v1, v3

    if-le v4, v0, :cond_b

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_b
    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_d
    if-lt v6, v0, :cond_13

    if-ge v1, v4, :cond_e

    goto :goto_0

    :cond_e
    if-gt v4, v0, :cond_f

    if-gt v1, v6, :cond_f

    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_f
    if-gt v0, v4, :cond_10

    if-gt v6, v1, :cond_10

    return-object v7

    :cond_10
    if-ge v4, v0, :cond_11

    if-gt v0, v6, :cond_11

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    return-object p1

    :cond_11
    if-gt v4, v1, :cond_12

    if-ge v1, v6, :cond_12

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Situation not covered: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-static {v2, p0, v3, v0, v3}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ")"

    invoke-static {v2, v1, p0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_0
    return-object v7
.end method

.method private columnMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v1, v0, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v2, :cond_0

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    return-object p1

    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-gt v1, v0, :cond_2

    if-gt v0, v3, :cond_2

    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Situation not covered: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-static {v1, p0, v2, v0, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ")"

    invoke-static {v1, v0, p0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>()V

    return-object p0

    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(I)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected ref ptg class ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForColumnCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ColumnCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForColumnShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ColumnMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(II)V

    return-object v0
.end method

.method private rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v2

    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_4

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result p0

    if-ge p0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->sortTopLeftToBottomRight()V

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method private rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_3

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result p0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v0, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v3, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v4, v2, v3

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int v6, v5, v3

    const/4 v7, 0x0

    if-ge v0, v2, :cond_3

    if-ge v5, v1, :cond_3

    if-ge v4, v0, :cond_1

    if-gt v0, v6, :cond_1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    return-object p1

    :cond_1
    if-gt v4, v1, :cond_2

    if-ge v1, v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_2
    return-object v7

    :cond_3
    if-gt v2, v0, :cond_8

    if-gt v0, v5, :cond_8

    if-gez v3, :cond_4

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    return-object p1

    :cond_4
    if-le v4, v1, :cond_5

    return-object v7

    :cond_5
    add-int/2addr v0, v3

    if-ge v6, v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    return-object p1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_7

    move v0, v5

    :cond_7
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_8
    if-gt v2, v1, :cond_d

    if-gt v1, v5, :cond_d

    if-lez v3, :cond_9

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_9
    if-ge v6, v0, :cond_a

    return-object v7

    :cond_a
    add-int/2addr v1, v3

    if-le v4, v0, :cond_b

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_b
    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_d
    if-lt v6, v0, :cond_13

    if-ge v1, v4, :cond_e

    goto :goto_0

    :cond_e
    if-gt v4, v0, :cond_f

    if-gt v1, v6, :cond_f

    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_f
    if-gt v0, v4, :cond_10

    if-gt v6, v1, :cond_10

    return-object v7

    :cond_10
    if-ge v4, v0, :cond_11

    if-gt v0, v6, :cond_11

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    return-object p1

    :cond_11
    if-gt v4, v1, :cond_12

    if-ge v1, v6, :cond_12

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Situation not covered: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-static {v2, p0, v3, v0, v3}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ")"

    invoke-static {v2, v1, p0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_0
    return-object v7
.end method

.method private rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v1, v0, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v2, :cond_0

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    return-object p1

    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-gt v1, v0, :cond_2

    if-gt v0, v3, :cond_2

    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Situation not covered: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-static {v1, p0, v2, v0, v2}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p0, ")"

    invoke-static {v1, v0, p0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    if-eqz v2, :cond_0

    aput-object v2, p1, v0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/FormulaShifter;

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
