.class public abstract Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/OperandPtg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object p0

    return-object p0
.end method

.method public final isBaseToken()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
