.class final Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;
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

    const-class v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->LOG:La5/d;

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

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v3, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->LOG:La5/d;

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

.method public static updateConditionalFormatting(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-static {v3}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_b

    aget-object v7, v4, v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getSqref()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v13, v10, v11

    invoke-static {v13}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v11

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v1, v12, v0}, Lorg/apache/poi/ss/usermodel/helpers/BaseRowColShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v13

    if-nez v13, :cond_3

    :goto_3
    move v10, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v13, v12, :cond_2

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeConditionalFormatting(I)V

    goto :goto_7

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    :cond_7
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v7

    array-length v8, v7

    move v9, v11

    :goto_5
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    invoke-interface {v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray()[Ljava/lang/String;

    move-result-object v12

    move v13, v11

    :goto_6
    array-length v14, v12

    if-ge v13, v14, :cond_9

    aget-object v14, v12, v13

    sget-object v15, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v6, -0x1

    invoke-static {v14, v3, v15, v0, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {v3, v6}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v13, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setFormulaArray(ILjava/lang/String;)V

    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static updateFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

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
    invoke-static {v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateHyperlinks(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getHyperlinkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Hyperlink;

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lorg/apache/poi/ss/usermodel/helpers/BaseRowColShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eq v3, v2, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateNamedRanges(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 6

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getAllNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Name;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetIndex()I

    move-result v3

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v5, -0x1

    invoke-static {v2, v0, v4, v3, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Name;->setRefersToFormula(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V
    .locals 1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static updateRowFormulas(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {p0, v3, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v4

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    :cond_1
    invoke-static {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    goto :goto_0

    :cond_2
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

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-static {v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateRowFormulas(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_0
    return-void
.end method
