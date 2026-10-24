.class final Lorg/apache/poi/ss/formula/atp/Ifs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/Ifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/Ifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/Ifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p0, p1

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length p2, p1

    if-ge p0, p2, :cond_2

    aget-object p2, p1, p0

    check-cast p2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
