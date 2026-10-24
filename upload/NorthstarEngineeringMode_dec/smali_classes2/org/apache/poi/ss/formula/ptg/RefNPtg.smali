.class public final Lorg/apache/poi/ss/formula/ptg/RefNPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;
.source "SourceFile"


# static fields
.field public static final sid:B = 0x2ct


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/RefNPtg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/RefNPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/RefNPtg;)V

    return-object v0
.end method

.method public final formatReferenceAsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RowOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " ColOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x2c

    return p0
.end method

.method public bridge synthetic write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
