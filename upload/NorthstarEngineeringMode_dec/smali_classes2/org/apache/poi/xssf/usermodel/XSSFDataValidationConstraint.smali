.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationConstraint;


# static fields
.field private static final LIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

.field private static final MAX_EXPLICIT_LIST_LENGTH:I = 0x101

.field private static final QUOTE:Ljava/lang/String; = "\""


# instance fields
.field private explicitListOfValues:[Ljava/lang/String;

.field private formula1:Ljava/lang/String;

.field private formula2:Ljava/lang/String;

.field private operator:I

.field private final validationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 10
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 13
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula2(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 15
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    const/4 p2, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setExplicitListValues([Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List validation with explicit values must specify at least one value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFormulaEmpty(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isQuoted(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getExplicitListValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    return-object p0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    return-object p0
.end method

.method public getOperator()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    return p0
.end method

.method public getValidationType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    return p0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    iget v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const-string v2, " "

    const-string v4, ""

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setExplicitListValues([Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFormula1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    return-void
.end method

.method public setFormula2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    return-void
.end method

.method public validate()V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x101

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A valid formula or a list of values must be less than or equal to 255 characters (including separators)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A valid formula or a list of values must be specified for list validation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Between and not between comparisons require two formulae to be specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This validation type requires an operator to be specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Formula is not specified. Formula is required for all validation types except explicit list validation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
