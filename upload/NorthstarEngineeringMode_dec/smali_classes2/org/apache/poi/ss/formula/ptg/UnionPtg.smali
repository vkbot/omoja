.class public final Lorg/apache/poi/ss/formula/ptg/UnionPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/ptg/UnionPtg;

.field public static final sid:B = 0x10t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/UnionPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->copy()Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->copy()Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/UnionPtg;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    return-object p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isBaseToken()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ","

    return-object p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result p0

    add-int/lit8 p0, p0, 0x10

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
