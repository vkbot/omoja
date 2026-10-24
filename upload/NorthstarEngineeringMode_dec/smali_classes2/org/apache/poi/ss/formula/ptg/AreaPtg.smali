.class public final Lorg/apache/poi/ss/formula/ptg/AreaPtg;
.super Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x25s


# direct methods
.method public constructor <init>(IIIIZZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(IIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaPtg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaPtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x25

    return p0
.end method
