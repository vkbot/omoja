.class public final Lorg/apache/poi/ss/formula/ptg/NamePtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field private static final SIZE:I = 0x5

.field public static final sid:S = 0x23s


# instance fields
.field private field_1_label_index:I

.field private field_2_zero:S


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/NamePtg;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    .line 4
    iget-short p1, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->copy()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(Lorg/apache/poi/ss/formula/ptg/NamePtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->copy()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->copy()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/h;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "index"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x5

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
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x23

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
