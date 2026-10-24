.class public final Lorg/apache/poi/ss/formula/ptg/IntPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "SourceFile"


# static fields
.field private static final MAX_VALUE:I = 0xffff

.field private static final MIN_VALUE:I = 0x0

.field public static final SIZE:I = 0x3

.field public static final sid:B = 0x1et


# instance fields
.field private final field_1_value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is out of range: "

    .line 5
    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-void
.end method

.method public static isInRange(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->copy()Lorg/apache/poi/ss/formula/ptg/IntPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/IntPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->copy()Lorg/apache/poi/ss/formula/ptg/IntPtg;

    move-result-object p0

    return-object p0
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

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/g;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "value"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
