.class abstract Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.source "SourceFile"


# static fields
.field private static final SIZE:I = 0x5


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    .line 4
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRowRelative(Z)V

    .line 5
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColRelative(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSid()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
