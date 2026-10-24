.class public final synthetic Lorg/apache/poi/ss/formula/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/a0;


# instance fields
.field public final synthetic Z:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field public final synthetic c:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field public final synthetic r:I

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/f;->c:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput p2, p0, Lorg/apache/poi/ss/formula/f;->r:I

    iput p3, p0, Lorg/apache/poi/ss/formula/f;->x:I

    iput p4, p0, Lorg/apache/poi/ss/formula/f;->y:I

    iput-object p5, p0, Lorg/apache/poi/ss/formula/f;->Z:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/formula/f;->y:I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/f;->Z:Lorg/apache/poi/ss/formula/eval/ValueEval;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/f;->c:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v3, p0, Lorg/apache/poi/ss/formula/f;->r:I

    iget p0, p0, Lorg/apache/poi/ss/formula/f;->x:I

    invoke-static {v2, v3, p0, v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->b(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)Lc5/e;

    move-result-object p0

    return-object p0
.end method
