.class public final Lorg/apache/poi/ss/formula/eval/ExternalNameEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final _name:Lorg/apache/poi/ss/formula/EvaluationName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
