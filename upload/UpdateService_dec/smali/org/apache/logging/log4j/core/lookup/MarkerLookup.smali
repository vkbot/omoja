.class public Lorg/apache/logging/log4j/core/lookup/MarkerLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "MarkerLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "marker"
.end annotation


# static fields
.field static final MARKER:Ljava/lang/String; = "marker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Lorg/apache/logging/log4j/MarkerManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 37
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    .line 38
    .local v1, "marker":Lorg/apache/logging/log4j/Marker;
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
