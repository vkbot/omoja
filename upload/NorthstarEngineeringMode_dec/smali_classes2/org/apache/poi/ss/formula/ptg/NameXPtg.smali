.class public final Lorg/apache/poi/ss/formula/ptg/NameXPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:S = 0x39s


# instance fields
.field private final _nameNumber:I

.field private final _reserved:I

.field private final _sheetRefIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->copy()Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/i;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/g;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "sheetRefIndex"

    const-string v2, "nameIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNameIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getSheetRefIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x39

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "3D references need a workbook to determine formula text"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x39

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
