.class final Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->LOG:La5/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v2

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v3, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    sget-object v0, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result p0

    invoke-static {p0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "Error shifting formula on row {}"

    invoke-interface {p2, p0, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static updateFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateRowFormulas(Lorg/apache/poi/hssf/usermodel/HSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p0, v2, p1}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormula(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Row;

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowColShifter;->updateRowFormulas(Lorg/apache/poi/hssf/usermodel/HSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_0
    return-void
.end method
