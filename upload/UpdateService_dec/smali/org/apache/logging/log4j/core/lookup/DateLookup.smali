.class public Lorg/apache/logging/log4j/core/lookup/DateLookup;
.super Ljava/lang/Object;
.source "DateLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "date"
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOOKUP:Lorg/apache/logging/log4j/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/DateLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 38
    const-string v0, "LOOKUP"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/DateLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "date"    # J
    .param p3, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "date",
            "format"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "dateFormat":Ljava/text/DateFormat;
    if-eqz p3, :cond_0

    .line 65
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/lookup/DateLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v3, Lorg/apache/logging/log4j/core/lookup/DateLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    const-string v4, "Invalid date format: [{}], using default"

    invoke-interface {v2, v3, v4, p3, v1}, Lorg/apache/logging/log4j/Logger;->error(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 73
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/logging/log4j/core/lookup/DateLookup;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 58
    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/DateLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/lookup/DateLookup;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
