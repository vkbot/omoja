.class public final synthetic Lorg/apache/poi/ss/formula/eval/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/d;->a:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/d;->a:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->a(Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
