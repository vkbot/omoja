.class public final Lorg/apache/poi/util/LocaleUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARSET_1252:Ljava/nio/charset/Charset;

.field public static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final userLocale:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final userTimeZone:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const-string v0, "CP1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    new-instance v0, Lmega/car/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmega/car/a;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/util/ThreadLocalUtil;->registerCleaner(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->lambda$static$0()V

    return-void
.end method

.method public static getDefaultCodePageFromLCID(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lorg/apache/poi/util/LocaleID;->lookupByLcid(I)Lorg/apache/poi/util/LocaleID;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/LocaleID;->getDefaultCodepage()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getLocaleCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleCalendar(III)Ljava/util/Calendar;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 2
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(IIIIII)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleCalendar(IIIIII)Ljava/util/Calendar;
    .locals 8

    .line 3
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v7

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 5
    invoke-virtual {v7, p0}, Ljava/util/Calendar;->clear(I)V

    return-object v7
.end method

.method public static getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    .line 6
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleFromLCID(I)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lorg/apache/poi/util/LocaleID;->lookupByLcid(I)Lorg/apache/poi/util/LocaleID;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "invalid"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/LocaleID;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getUserLocale()Ljava/util/Locale;
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "implementation around default locales in POI"
    .end annotation

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getUserTimeZone()Ljava/util/TimeZone;
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "implementation around default locales in POI"
    .end annotation

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$static$0()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static resetUserLocale()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static resetUserTimeZone()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static setUserLocale(Ljava/util/Locale;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
