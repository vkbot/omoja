.class public final synthetic Lorg/apache/poi/ss/formula/functions/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/o;->a:Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;

    return-void
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/o;->a:Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->e(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
