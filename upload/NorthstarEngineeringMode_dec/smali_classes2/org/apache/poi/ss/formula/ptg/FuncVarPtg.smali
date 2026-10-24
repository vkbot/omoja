.class public final Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
.super Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.source "SourceFile"


# static fields
.field private static final SIZE:I = 0x4

.field public static final SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

.field private static final ceFunc:Lorg/apache/poi/util/BitField;

.field public static final sid:B = 0x22t


# instance fields
.field private final _isCetab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->ceFunc:Lorg/apache/poi/util/BitField;

    const-string v0, "SUM"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-void
.end method

.method private constructor <init>(II[BIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;-><init>(II[BI)V

    iput-boolean p5, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->_isCetab:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 7

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->ceFunc:Lorg/apache/poi/util/BitField;

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    .line 5
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getCetabFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    :goto_0
    move v2, p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    .line 7
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    const/16 v3, 0x20

    const/4 v0, 0x1

    new-array v4, v0, [B

    const/4 v0, 0x0

    const/16 v1, 0x20

    aput-byte v1, v4, v0

    move-object v1, p1

    move v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BIZ)V

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getReturnClassCode()B

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getParameterClassCodes()[B

    move-result-object v4

    move-object v1, p1

    move v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BIZ)V

    return-object p1
.end method

.method public static create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupIndex(Ljava/lang/String;)S

    move-result p0

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->_isCetab:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->copy()Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->copy()Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/h;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/i;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "base"

    const-string v1, "cetab"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x22

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public lookupName(S)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->_isCetab:Z

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupName(SZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
