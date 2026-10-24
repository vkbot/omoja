.class public abstract Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/AreaI;


# static fields
.field private static final colRelative:Lorg/apache/poi/util/BitField;

.field private static final columnMask:Lorg/apache/poi/util/BitField;

.field private static final rowRelative:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_first_row:I

.field private field_2_last_row:I

.field private field_3_first_column:I

.field private field_4_last_column:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x3fff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIZZZZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    if-lt p2, p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 20
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 21
    invoke-virtual {p0, p5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 22
    invoke-virtual {p0, p6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 24
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 25
    invoke-virtual {p0, p6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 26
    invoke-virtual {p0, p5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    :goto_0
    if-lt p4, p3, :cond_1

    .line 27
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 28
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 29
    invoke-virtual {p0, p7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 30
    invoke-virtual {p0, p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 32
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 33
    invoke-virtual {p0, p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 34
    invoke-virtual {p0, p7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    .line 4
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    .line 5
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    .line 6
    iget p1, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    if-ne v1, v2, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    .line 16
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    return-void
.end method


# virtual methods
.method public final formatReferenceAsString()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getFirstColumn()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public final getFirstColumnRaw()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    int-to-short p0, p0

    return p0
.end method

.method public final getFirstRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "firstRow"

    new-instance v3, Lorg/apache/poi/ss/formula/ptg/d;

    move-object v2, v3

    const/4 v7, 0x0

    invoke-direct {v3, v0, v7}, Lorg/apache/poi/ss/formula/ptg/d;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v3, "firstRowRelative"

    new-instance v5, Lorg/apache/poi/ss/formula/ptg/e;

    move-object v4, v5

    invoke-direct {v5, v0, v7}, Lorg/apache/poi/ss/formula/ptg/e;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v5, "firstColumn"

    new-instance v8, Lorg/apache/poi/ss/formula/ptg/f;

    move-object v6, v8

    invoke-direct {v8, v0, v7}, Lorg/apache/poi/ss/formula/ptg/f;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v7, "firstColRelative"

    new-instance v9, Lorg/apache/poi/ss/formula/ptg/d;

    move-object v8, v9

    const/4 v13, 0x1

    invoke-direct {v9, v0, v13}, Lorg/apache/poi/ss/formula/ptg/d;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v9, "lastRow"

    new-instance v11, Lorg/apache/poi/ss/formula/ptg/e;

    move-object v10, v11

    invoke-direct {v11, v0, v13}, Lorg/apache/poi/ss/formula/ptg/e;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v11, "lastRowRelative"

    new-instance v14, Lorg/apache/poi/ss/formula/ptg/f;

    move-object v12, v14

    invoke-direct {v14, v0, v13}, Lorg/apache/poi/ss/formula/ptg/f;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v13, "lastColumn"

    new-instance v15, Lorg/apache/poi/ss/formula/ptg/d;

    move-object v14, v15

    move-object/from16 v19, v1

    const/4 v1, 0x2

    invoke-direct {v15, v0, v1}, Lorg/apache/poi/ss/formula/ptg/d;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v15, "lastColRelative"

    move-object/from16 v20, v2

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/e;

    move-object/from16 v16, v2

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/ptg/e;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    const-string v17, "formatReference"

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/f;

    move-object/from16 v18, v2

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/ptg/f;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;I)V

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v18}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getLastColumn()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public final getLastColumnRaw()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    int-to-short p0, p0

    return p0
.end method

.method public final getLastRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    return p0
.end method

.method public final isFirstColRelative()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final isFirstRowRelative()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final isLastColRelative()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final isLastRowRelative()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public final readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public final setFirstColRelative(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    return-void
.end method

.method public final setFirstColumn(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    return-void
.end method

.method public final setFirstColumnRaw(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    return-void
.end method

.method public final setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    return-void
.end method

.method public final setFirstRowRelative(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    return-void
.end method

.method public final setLastColRelative(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->colRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public final setLastColumn(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->columnMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public final setLastColumnRaw(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public final setLastRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    return-void
.end method

.method public final setLastRowRelative(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->rowRelative:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    return-void
.end method

.method public sortTopLeftToBottomRight()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRowRelative(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRowRelative(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColumn(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstColRelative(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColumn(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastColRelative(Z)V

    :cond_1
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_1_first_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_2_last_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_3_first_column:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->field_4_last_column:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
