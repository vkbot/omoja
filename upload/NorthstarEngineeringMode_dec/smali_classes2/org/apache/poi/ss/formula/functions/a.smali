.class public final synthetic Lorg/apache/poi/ss/formula/functions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/a;->a:I

    iput p2, p0, Lorg/apache/poi/ss/formula/functions/a;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/a;->b:I

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/a;->a:I

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->c(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
