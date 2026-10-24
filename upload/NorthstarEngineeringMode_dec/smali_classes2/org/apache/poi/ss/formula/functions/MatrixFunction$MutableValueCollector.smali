.class public final Lorg/apache/poi/ss/formula/functions/MatrixFunction$MutableValueCollector;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableValueCollector"
.end annotation


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public varargs collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p0

    return-object p0
.end method

.method public evaluate([D)D
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "should not be called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
