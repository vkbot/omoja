.class Lorg/apache/poi/ss/formula/functions/AggregateFunction$Product;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->SKIP:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->setMissingArgPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V

    return-void
.end method


# virtual methods
.method public evaluate([D)D
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MathX;->product([D)D

    move-result-wide p0

    return-wide p0
.end method
