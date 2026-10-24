.class public final synthetic Lorg/apache/poi/ss/formula/eval/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/g;->a:Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/g;->b:I

    iput p3, p0, Lorg/apache/poi/ss/formula/eval/g;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/g;->c:I

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/g;->a:Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;

    iget p0, p0, Lorg/apache/poi/ss/formula/eval/g;->b:I

    invoke-static {v1, p0, v0, p1}, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;->a(Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
