.class public Lorg/apache/logging/log4j/core/lookup/EnvironmentLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "EnvironmentLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "env"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
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

    .line 36
    invoke-static {p2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
