.class public final Lorg/apache/poi/ss/formula/ptg/NumberPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "SourceFile"


# static fields
.field public static final SIZE:I = 0x9

.field public static final sid:B = 0x1ft


# instance fields
.field private final field_1_value:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->copy()Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/NumberPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->copy()Lorg/apache/poi/ss/formula/ptg/NumberPtg;

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

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/h;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "value"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public getSize()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    return-wide v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method
