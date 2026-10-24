.class final Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "SourceFile"


# instance fields
.field private final _reserved0:I

.field private final _reserved1:I

.field private final _reserved2:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved0:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved1:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved2:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static invalid()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object is a partially initialised tArray, and cannot be used as a Ptg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved0:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    move-result-object p0

    return-object p0
.end method

.method public finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    .locals 9

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-short v7, v1

    mul-int v0, v7, v6

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object v8

    new-instance p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved0:I

    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved1:I

    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->_reserved2:I

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>(IIIII[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    return-object p1
.end method

.method public getDefaultOperandClass()B
    .locals 0

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->invalid()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
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

    const-string v0, "reserved0"

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v3, "reserved1"

    new-instance v4, Lorg/apache/poi/ss/formula/ptg/h;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string v5, "reserved2"

    new-instance v6, Lorg/apache/poi/ss/formula/ptg/i;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public isBaseToken()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->invalid()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->invalid()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
