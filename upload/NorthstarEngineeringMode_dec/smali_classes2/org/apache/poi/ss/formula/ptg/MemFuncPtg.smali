.class public final Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field public static final sid:B = 0x29t


# instance fields
.field private final field_1_len_ref_subexpression:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

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

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/g;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "lenRefSubexpression"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLenRefSubexpression()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x29

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x29

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
