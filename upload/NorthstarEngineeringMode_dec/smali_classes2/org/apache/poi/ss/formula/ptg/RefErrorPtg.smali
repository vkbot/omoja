.class public final Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field private static final SIZE:I = 0x5

.field public static final sid:B = 0x2at


# instance fields
.field private final field_1_reserved:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V

    .line 3
    iget p1, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;)V

    return-object v0
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

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/i;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/i;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "reserved"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->field_1_reserved:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
