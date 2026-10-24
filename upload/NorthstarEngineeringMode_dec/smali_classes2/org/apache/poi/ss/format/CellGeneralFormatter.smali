.class public Lorg/apache/poi/ss/format/CellGeneralFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellGeneralFormatter;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "General"

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 9

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/16 v3, 0x30

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v2, v4, v6

    const/4 v6, 0x1

    if-gtz v2, :cond_3

    const-wide/high16 v7, -0x3fde000000000000L    # -9.0

    cmpg-double v2, v4, v7

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    double-to-long v4, v0

    long-to-double v4, v4

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_2

    const-string v0, "%1.9f"

    :goto_0
    move v1, v6

    goto :goto_2

    :cond_2
    const-string v0, "%1.0f"

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "%1.5E"

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/util/Formatter;

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    invoke-direct {v2, p1, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p0, v0, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    if-eqz v1, :cond_8

    const-string p0, "E"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    :goto_3
    sub-int/2addr p0, v6

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    goto :goto_3

    :goto_4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v3, :cond_5

    add-int/lit8 p2, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move p0, p2

    goto :goto_4

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    const/16 v0, 0x2e

    if-ne p2, v0, :cond_8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    :cond_6
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_6
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellGeneralFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method
