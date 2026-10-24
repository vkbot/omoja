.class public final Lorg/apache/poi/ss/formula/function/FunctionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FUNCTION_MAX_PARAMS:S = 0x1es


# instance fields
.field private final _index:I

.field private final _maxParams:I

.field private final _minParams:I

.field private final _name:Ljava/lang/String;

.field private final _parameterClassCodes:[B

.field private final _returnClassCode:B


# direct methods
.method public constructor <init>(ILjava/lang/String;IIB[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    iput p4, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    iput-byte p5, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    if-nez p6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    return p0
.end method

.method public getMaxParams()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    return p0
.end method

.method public getMinParams()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getParameterClassCodes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getReturnClassCode()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    return p0
.end method

.method public hasFixedArgsLength()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    iget p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasUnlimitedVarags()Z
    .locals 1

    const/16 v0, 0x1e

    iget p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
