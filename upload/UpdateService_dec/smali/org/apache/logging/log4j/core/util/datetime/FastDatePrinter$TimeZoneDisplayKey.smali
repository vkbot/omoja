.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeZone",
            "daylight",
            "style",
            "locale"
        }
    .end annotation

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1515
    if-eqz p2, :cond_0

    .line 1516
    const/high16 v0, -0x80000000

    or-int/2addr v0, p3

    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    goto :goto_0

    .line 1518
    :cond_0
    iput p3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    .line 1520
    :goto_0
    iput-object p4, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1521
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1536
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1537
    return v0

    .line 1539
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1540
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;

    .line 1541
    .local v1, "other":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1542
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    iget v4, v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1544
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1541
    :goto_0
    return v0

    .line 1546
    .end local v1    # "other":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1528
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
