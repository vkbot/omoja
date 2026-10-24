.class public final synthetic Lorg/apache/poi/ss/formula/functions/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/functions/LogicalFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/functions/LogicalFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/j;->a:Lorg/apache/poi/ss/formula/functions/LogicalFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/j;->a:Lorg/apache/poi/ss/formula/functions/LogicalFunction;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->a(Lorg/apache/poi/ss/formula/functions/LogicalFunction;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
