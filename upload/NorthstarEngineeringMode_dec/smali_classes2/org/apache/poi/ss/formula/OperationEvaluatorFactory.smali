.class final Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _instancesByPtgClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->initialiseInstancesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->_instancesByPtgClass:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    if-eqz p0, :cond_6

    sget-object v0, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->_instancesByPtgClass:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v2, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result v2

    const/16 v3, 0x94

    if-eq v2, v3, :cond_1

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getBasicFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Indirect;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    instance-of p0, v0, Lorg/apache/poi/ss/formula/functions/ArrayFunction;

    if-eqz p0, :cond_3

    move-object p0, v0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/ArrayFunction;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluateArrayFunction(Lorg/apache/poi/ss/formula/functions/ArrayFunction;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-interface {v0, p1, p0, p2}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected operation ptg class ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ptg must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static evaluateArrayFunction(Lorg/apache/poi/ss/formula/functions/ArrayFunction;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/functions/ArrayFunction;->evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->isArraymode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/functions/ArrayFunction;->evaluateArray([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static initialiseInstancesMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/AddPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AddPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->AddEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/SubtractPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/DividePtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/DividePtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PowerPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ConcatPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ConcatEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/LessThanPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/EqualPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->EqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->NotEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/RangePtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/RangePtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RangeEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->getSid()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/eval/PercentEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
