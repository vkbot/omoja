.class public Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
.super Lorg/apache/logging/log4j/core/util/datetime/Format;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/DateParser;
.implements Lorg/apache/logging/log4j/core/util/datetime/DatePrinter;


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

.field private final printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat$1;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat$1;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 387
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone",
            "locale",
            "centuryStart"
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/Format;-><init>()V

    .line 401
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    .line 402
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    .line 403
    return-void
.end method

.method public static getDateInstance(I)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "style"
        }
    .end annotation

    .line 197
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "style",
            "locale"
        }
    .end annotation

    .line 212
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "style",
            "timeZone"
        }
    .end annotation

    .line 228
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "style",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 244
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(II)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle"
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle",
            "locale"
        }
    .end annotation

    .line 338
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle",
            "timeZone"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 372
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1

    .line 123
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance()Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 136
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "locale"
        }
    .end annotation

    .line 165
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone"
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 182
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(I)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "style"
        }
    .end annotation

    .line 259
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "style",
            "locale"
        }
    .end annotation

    .line 274
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "style",
            "timeZone"
        }
    .end annotation

    .line 290
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "style",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->cache:Lorg/apache/logging/log4j/core/util/datetime/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 592
    instance-of v0, p1, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 595
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    .line 597
    .local v0, "other":Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "millis",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 467
    .local p3, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "calendar",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 495
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "date",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .line 481
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "millis"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "date"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "obj",
            "toAppendTo",
            "pos"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getMaxLengthEstimate()I

    move-result v0

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 556
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "pos"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "pos",
            "calendar"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "pos"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->parser:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->printer:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
