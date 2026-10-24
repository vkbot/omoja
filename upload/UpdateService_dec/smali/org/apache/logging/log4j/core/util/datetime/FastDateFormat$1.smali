.class final Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat$1;
.super Lorg/apache/logging/log4j/core/util/datetime/FormatCache;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<",
        "Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
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

    .line 108
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object p1

    return-object p1
.end method
