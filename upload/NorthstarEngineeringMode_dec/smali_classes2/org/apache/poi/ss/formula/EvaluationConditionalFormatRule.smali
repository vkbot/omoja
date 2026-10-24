.class public Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
        ">;"
    }
.end annotation


# instance fields
.field private final decimalTextFormat:Ljava/text/DecimalFormat;

.field private final formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

.field private final formattingIndex:I

.field private final formula1:Ljava/lang/String;

.field private final formula2:Ljava/lang/String;

.field private final lowerText:Ljava/lang/String;

.field private final meaningfulRegionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private final numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

.field private final operator:Lorg/apache/poi/ss/formula/OperatorEnum;

.field private final priority:I

.field private final regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

.field private final ruleIndex:I

.field private final sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private final text:Ljava/lang/String;

.field private topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final type:Lorg/apache/poi/ss/usermodel/ConditionType;

.field private final workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/ConditionalFormatting;ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;I[Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    iput-object p5, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    iput p4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    iput p6, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getPriority()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->priority:I

    iput-object p7, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length p1, p7

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object p3, p7, p2

    iget-object p4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-nez p4, :cond_0

    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p4

    iget-object p6, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p6

    if-lt p4, p6, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p4

    iget-object p6, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p6

    if-ge p4, p6, :cond_2

    :cond_1
    iput-object p3, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula1:Ljava/lang/String;

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula2()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula2:Ljava/lang/String;

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->text:Ljava/lang/String;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->lowerText:Ljava/lang/String;

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-static {}, Lorg/apache/poi/ss/formula/OperatorEnum;->values()[Lorg/apache/poi/ss/formula/OperatorEnum;

    move-result-object p1

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getComparisonOperation()B

    move-result p2

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-interface {p5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->type:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance p1, Ljava/text/DecimalFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    const-string p3, "0"

    invoke-direct {p1, p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->decimalTextFormat:Ljava/text/DecimalFormat;

    const/16 p0, 0x154

    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->evaluateUniqueValues(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->evaluateAboveAverage(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->evaluateTop10(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->$SwitchMap$org$apache$poi$ss$usermodel$ConditionFilterType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result p0

    return p0

    :pswitch_1
    if-eqz p1, :cond_1

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1

    :pswitch_2
    if-eqz p1, :cond_3

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    return v1

    :pswitch_3
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v3

    :pswitch_4
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return v1

    :pswitch_5
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->lowerText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->lowerText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->text:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->lowerText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :pswitch_8
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->text:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->lowerText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    return v1

    :pswitch_9
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/poi/ss/formula/b;

    invoke-direct {v0, p0, v3}, Lorg/apache/poi/ss/formula/b;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;I)V

    invoke-direct {p0, p3, v1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLjava/util/function/Function;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->getValue()Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_7
    move-object p0, p3

    :goto_0
    if-nez p0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {p2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getStdDev()I

    move-result p2

    if-lez p2, :cond_a

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getAboveAverage()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, -0x1

    :goto_1
    int-to-double v2, v3

    mul-double/2addr v2, v4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getStdDev()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getAboveAverage()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getEqualAverage()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lorg/apache/poi/ss/formula/OperatorEnum;->GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    goto :goto_2

    :cond_b
    sget-object p1, Lorg/apache/poi/ss/formula/OperatorEnum;->GREATER_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getEqualAverage()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lorg/apache/poi/ss/formula/OperatorEnum;->LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    goto :goto_2

    :cond_d
    sget-object p1, Lorg/apache/poi/ss/formula/OperatorEnum;->LESS_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

    :goto_2
    invoke-virtual {p1, p0, p2, p3}, Lorg/apache/poi/ss/formula/OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_a
    new-instance p1, Lw0/a;

    invoke-direct {p1, v3, p0}, Lw0/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p3, v3, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLjava/util/function/Function;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    new-instance p1, Lorg/apache/poi/openxml4j/opc/f;

    invoke-direct {p1, v3, p0}, Lorg/apache/poi/openxml4j/opc/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p3, v3, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLjava/util/function/Function;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_c
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    new-instance p1, Lorg/apache/poi/ss/formula/b;

    invoke-direct {p1, p0, v1}, Lorg/apache/poi/ss/formula/b;-><init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;I)V

    invoke-direct {p0, p3, v1, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLjava/util/function/Function;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_2
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmpl-double p0, p0, v1

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    return p2

    :cond_4
    return v0
.end method

.method private checkValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 7

    if-eqz p1, :cond_11

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula1()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFormula2()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object v5

    invoke-virtual {v4, v2, v5, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-eq v1, v3, :cond_2

    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v2, :cond_6

    :cond_2
    if-eq p2, v3, :cond_3

    instance-of v2, p2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v2, :cond_6

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-ne v1, v3, :cond_4

    move-object v0, v4

    goto :goto_1

    :cond_4
    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    if-ne p2, v3, :cond_5

    goto :goto_2

    :cond_5
    check-cast p2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    invoke-virtual {p0, p1, v0, v4}, Lorg/apache/poi/ss/formula/OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :cond_6
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eq v1, v3, :cond_7

    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_b

    :cond_7
    if-eq p2, v3, :cond_8

    instance-of v2, p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_b

    :cond_8
    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    if-ne v1, v3, :cond_9

    move-object v0, v4

    goto :goto_3

    :cond_9
    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    if-ne p2, v3, :cond_a

    goto :goto_4

    :cond_a
    check-cast p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Lorg/apache/poi/ss/formula/OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eq v1, v3, :cond_c

    instance-of v0, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_10

    :cond_c
    if-eq p2, v3, :cond_d

    instance-of v0, p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_10

    :cond_d
    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    if-ne v1, v3, :cond_e

    move-object v0, v4

    goto :goto_5

    :cond_e
    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-ne p2, v3, :cond_f

    goto :goto_6

    :cond_f
    check-cast p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {p0, p1, v0, v4}, Lorg/apache/poi/ss/formula/OperatorEnum;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :cond_10
    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperatorEnum;->isValidForIncompatibleTypes()Z

    move-result p0

    return p0

    :cond_11
    :goto_7
    const/4 p0, 0x0

    return p0
.end method

.method private evaluateAboveAverage(Ljava/util/List;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v5, v8

    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v7}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->access$000(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    aput-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v5, v9

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->decimalTextFormat:Ljava/text/DecimalFormat;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v6}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;Ljava/text/DecimalFormat;)V

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v7, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-interface {p1, v0, v3, v3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    :goto_2
    new-instance p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->decimalTextFormat:Ljava/text/DecimalFormat;

    invoke-direct {p1, v0, v9, p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;Ljava/text/DecimalFormat;)V

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private evaluateTop10(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getBottom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getRank()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/ConditionFilterData;->getPercent()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/2addr p0, v0

    div-int/lit8 v0, p0, 0x64

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, v0, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private evaluateUniqueValues(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;
    .locals 4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    :cond_0
    sget-object v2, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->decimalTextFormat:Ljava/text/DecimalFormat;

    invoke-direct {v1, p1, v0, p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/Double;Ljava/lang/String;Ljava/text/DecimalFormat;)V

    return-object v1

    :cond_3
    :goto_0
    new-instance p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    const-string p1, ""

    invoke-direct {p0, p1, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getMeaningfulValues(Lorg/apache/poi/ss/util/CellRangeAddress;ZLjava/util/function/Function;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            "Z",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;>;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v2, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    move-result-object v4

    if-nez p2, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->meaningfulRegionValues:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private unwrapEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :goto_0
    instance-of p0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getPriority()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getPriority()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public evaluateDuplicateValues(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$ValueAndFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getFormatting()Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formatting:Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    return-object p0
.end method

.method public getFormattingIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    return p0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula1:Ljava/lang/String;

    return-object p0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formula2:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->numberFormat:Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    return-object p0
.end method

.method public getOperator()Lorg/apache/poi/ss/formula/OperatorEnum;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->operator:Lorg/apache/poi/ss/formula/OperatorEnum;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->priority:I

    return p0
.end method

.method public getRegions()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
.end method

.method public getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->rule:Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    return-object p0
.end method

.method public getRuleIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    return p0
.end method

.method public getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->type:Lorg/apache/poi/ss/usermodel/ConditionType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->formattingIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->ruleIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public matches(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v4, :cond_5

    return v2

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, v4, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result p0

    return p0

    :cond_6
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFormula(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result p0

    return p0

    :cond_7
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->topLeftRegion:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, v4, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->checkFilter(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result p0

    return p0

    :cond_8
    return v2

    :cond_9
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
