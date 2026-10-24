.class public final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    new-instance p1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-direct {p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->lambda$setupEnvironment$1(I)[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->lambda$setupEnvironment$0(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->createEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method private static synthetic lambda$setupEnvironment$0(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object p0
.end method

.method private static synthetic lambda$setupEnvironment$1(I)[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object p0
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)V
    .locals 2

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lg5/l;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/b1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method


# virtual methods
.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method

.method public evaluate(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getEvaluationCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bad cell type ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCell(Ljava/lang/String;IILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getOrCreateUpdatableCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method
