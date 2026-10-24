.class public final Lorg/apache/poi/ss/formula/ptg/MemErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:S = 0x27s


# instance fields
.field private field_1_reserved:I

.field private field_2_subex_len:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/MemErrPtg;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    .line 3
    iget-short p1, p1, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/MemErrPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/MemErrPtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/16 p0, 0x20

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

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/i;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "lenRefSubexpression"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLenRefSubexpression()I
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x27

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    const-string p0, "ERR#"

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
