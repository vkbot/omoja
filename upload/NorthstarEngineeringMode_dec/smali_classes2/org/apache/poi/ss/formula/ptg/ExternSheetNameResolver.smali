.class final Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x3a

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez p1, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    add-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v4, p0, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p0

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v4, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    :goto_1
    instance-of p0, v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz p0, :cond_5

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getFirstSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetLastNameByExternSheet(I)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_4

    const-string p0, "#REF"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {v4, v0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    const/16 p0, 0x21

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
