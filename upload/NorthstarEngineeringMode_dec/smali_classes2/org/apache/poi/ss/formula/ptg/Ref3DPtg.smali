.class public final Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
.implements Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:B = 0x3at


# instance fields
.field private field_1_index_extern_sheet:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)V

    .line 2
    iget p1, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 8
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->copy()Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)V

    return-object v0
.end method

.method public format2DRefAsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExternSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

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

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/g;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "base"

    const-string v2, "externSheetIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x3a

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public setExternSheetIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    return-void
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

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->field_1_index_extern_sheet:I

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
