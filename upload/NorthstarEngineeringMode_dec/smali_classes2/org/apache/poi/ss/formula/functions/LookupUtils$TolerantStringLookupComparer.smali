.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TolerantStringLookupComparer"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;->convertToStringEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/StringEval;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V

    return-void
.end method

.method public static convertToStringEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/StringEval;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public convertToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
