.class public final Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field public static final sid:B = 0x3dt


# instance fields
.field private final field_1_index_extern_sheet:I

.field private final unused1:I

.field private final unused2:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExternSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "externSheetIndex"

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/i;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v2, "unused1"

    new-instance v3, Lorg/apache/poi/ss/formula/ptg/g;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v4, "unused2"

    new-instance v5, Lorg/apache/poi/ss/formula/ptg/h;

    const/4 v6, 0x7

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x3d

    return p0
.end method

.method public getSize()I
    .locals 0

    const/16 p0, 0xb

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
    .locals 1

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3d

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
