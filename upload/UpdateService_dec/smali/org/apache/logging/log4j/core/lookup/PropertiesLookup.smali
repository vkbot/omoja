.class public final Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;
.super Ljava/lang/Object;
.source "PropertiesLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ContextPropertyResult;,
        Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;
    }
.end annotation


# instance fields
.field private final configurationProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>([Lorg/apache/logging/log4j/core/config/Property;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public constructor <init>([Lorg/apache/logging/log4j/core/config/Property;Ljava/util/Map;)V
    .locals 1
    .param p1, "configProperties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "configProperties",
            "contextProperties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "contextProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p2, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->contextProperties:Ljava/util/Map;

    .line 45
    if-nez p1, :cond_1

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->createConfigurationPropertyMap([Lorg/apache/logging/log4j/core/config/Property;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->configurationProperties:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private static createConfigurationPropertyMap([Lorg/apache/logging/log4j/core/config/Property;)Ljava/util/Map;
    .locals 7
    .param p0, "props"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 112
    .local v3, "property":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ConfigurationPropertyResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v3    # "property":Lorg/apache/logging/log4j/core/config/Property;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 82
    return-object v0

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->configurationProperties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/lookup/LookupResult;

    .line 85
    .local v1, "configResult":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    if-eqz v1, :cond_1

    .line 86
    return-object v1

    .line 89
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->contextProperties:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "contextResult":Ljava/lang/String;
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ContextPropertyResult;

    invoke-direct {v0, v2}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup$ContextPropertyResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
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

    .line 95
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    return-object v0
.end method

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

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    .line 76
    .local v0, "result":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/lookup/LookupResult;->value()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

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

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropertiesLookup{contextProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->contextProperties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configurationProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;->configurationProperties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
