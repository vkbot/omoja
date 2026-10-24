.class public Lorg/apache/poi/ss/formula/SheetRangeAndWorkbookIndexFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anySheetNameNeedsEscaping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->needsDelimiting(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->needsDelimiting(Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static format(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/SheetRangeAndWorkbookIndexFormatter;->anySheetNameNeedsEscaping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/SheetRangeAndWorkbookIndexFormatter;->formatWithDelimiting(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/SheetRangeAndWorkbookIndexFormatter;->formatWithoutDelimiting(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatWithDelimiting(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0, p2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendAndEscape(Ljava/lang/Appendable;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendAndEscape(Ljava/lang/Appendable;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatWithoutDelimiting(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
