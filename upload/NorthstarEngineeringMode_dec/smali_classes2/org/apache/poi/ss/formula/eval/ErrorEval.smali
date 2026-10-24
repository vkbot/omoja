.class public final Lorg/apache/poi/ss/formula/eval/ErrorEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# static fields
.field public static final CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field private static final evals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            "Lorg/apache/poi/ss/formula/eval/ErrorEval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _error:Lorg/apache/poi/ss/usermodel/FormulaError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "~non~std~err("

    const-string v1, ")~"

    invoke-static {v0, p0, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled error type for code "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result p0

    return p0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const-string v2, " ["

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
