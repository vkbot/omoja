.class public final Lorg/apache/poi/xssf/usermodel/XSSFName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# static fields
.field public static final BUILTIN_CONSOLIDATE_AREA:Ljava/lang/String; = "_xlnm.Consolidate_Area"

.field public static final BUILTIN_CRITERIA:Ljava/lang/String; = "_xlnm.Criteria:"

.field public static final BUILTIN_DATABASE:Ljava/lang/String; = "_xlnm.Database"

.field public static final BUILTIN_EXTRACT:Ljava/lang/String; = "_xlnm.Extract:"

.field public static final BUILTIN_FILTER_DB:Ljava/lang/String; = "_xlnm._FilterDatabase"

.field public static final BUILTIN_PRINT_AREA:Ljava/lang/String; = "_xlnm.Print_Area"

.field public static final BUILTIN_PRINT_TITLE:Ljava/lang/String; = "_xlnm.Print_Titles"

.field public static final BUILTIN_SHEET_TITLE:Ljava/lang/String; = "_xlnm.Sheet_Title"


# instance fields
.field private final _ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

.field private final _workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const-string v2, "Invalid name: \'"

    if-gt v0, v1, :cond_9

    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    const-string v3, "_\\"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\': first character must be underscore or a letter"

    invoke-static {v2, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-char v5, v1, v0

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "_.\\"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\': name must be letter, digit, period, or underscore"

    invoke-static {v2, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "[A-Za-z]+\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\\d"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[A-Za-z]"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': cannot be $A$1-style cell reference"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    const-string v0, "[Rr]\\d+[Cc]\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\': cannot be R1C1-style cell reference"

    invoke-static {v2, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\': cannot be special shorthand R or C"

    invoke-static {v2, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\': cannot exceed 255 characters in length"

    invoke-static {v2, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name cannot be blank"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunction()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunction()Z

    move-result p0

    return p0
.end method

.method public getFunctionGroupId()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunctionGroupId()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getStringValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSheetIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDeleted()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result p0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result p0

    return p0
.end method

.method public isFunctionName()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getFunction()Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getHidden()Z

    move-result p0

    return p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setFunction(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunction(Z)V

    return-void
.end method

.method public setFunctionGroupId(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setFunctionGroupId(J)V

    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->validateName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v4

    if-ne v4, v1, :cond_0

    if-eq v3, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    const-string v0, "workbook"

    goto :goto_0

    :cond_1
    const-string v0, "sheet"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already contains this name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V

    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSheetIndex(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-lt p1, v1, :cond_3

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->unsetLocalSheetId()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFName;->_ctName:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sheet index ("

    const-string v3, ") is out of range"

    invoke-static {v2, p1, v3}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-ne v0, v1, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v1, " (0.."

    const-string v2, ")"

    invoke-static {v1, v0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
