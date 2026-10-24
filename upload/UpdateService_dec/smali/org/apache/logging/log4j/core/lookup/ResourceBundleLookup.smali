.class public Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "ResourceBundleLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "bundle"
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOOKUP:Lorg/apache/logging/log4j/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 36
    const-string v0, "LOOKUP"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
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

    .line 51
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 52
    return-object v0

    .line 54
    :cond_0
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 56
    .local v2, "keyLen":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 57
    sget-object v3, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v4, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    const-string v5, "Bad ResourceBundle key format [{}]. Expected format is BundleName:KeyName."

    invoke-interface {v3, v4, v5, p2}, Lorg/apache/logging/log4j/Logger;->warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-object v0

    .line 60
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 61
    .local v3, "bundleName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 64
    .local v4, "bundleKey":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v5

    .line 66
    .local v5, "e":Ljava/util/MissingResourceException;
    sget-object v6, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v7, Lorg/apache/logging/log4j/core/lookup/ResourceBundleLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    const-string v8, "Error looking up ResourceBundle [{}]."

    invoke-interface {v6, v7, v8, v3, v5}, Lorg/apache/logging/log4j/Logger;->warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method
