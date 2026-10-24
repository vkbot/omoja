.class public Lorg/apache/logging/log4j/core/lookup/SystemPropertiesLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "SystemPropertiesLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "sys"
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOOKUP:Lorg/apache/logging/log4j/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/SystemPropertiesLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 33
    const-string v0, "LOOKUP"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/SystemPropertiesLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 44
    :try_start_0
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/lookup/SystemPropertiesLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v2, Lorg/apache/logging/log4j/core/lookup/SystemPropertiesLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    const-string v3, "Error while getting system property [{}]."

    invoke-interface {v1, v2, v3, p2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x0

    return-object v1
.end method
