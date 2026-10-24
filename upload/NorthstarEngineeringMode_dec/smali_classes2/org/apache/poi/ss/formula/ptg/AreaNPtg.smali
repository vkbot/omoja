.class public final Lorg/apache/poi/ss/formula/ptg/AreaNPtg;
.super Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x2ds


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaNPtg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/AreaNPtg;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaNPtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x2d

    return p0
.end method
