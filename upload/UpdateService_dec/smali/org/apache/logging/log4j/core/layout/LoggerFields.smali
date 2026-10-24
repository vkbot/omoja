.class public final Lorg/apache/logging/log4j/core/layout/LoggerFields;
.super Ljava/lang/Object;
.source "LoggerFields.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "LoggerFields"
    printObject = true
.end annotation


# instance fields
.field private final discardIfAllFieldsAreEmpty:Z

.field private final enterpriseId:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sdId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "sdId"    # Ljava/lang/String;
    .param p3, "enterpriseId"    # Ljava/lang/String;
    .param p4, "discardIfAllFieldsAreEmpty"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "map",
            "sdId",
            "enterpriseId",
            "discardIfAllFieldsAreEmpty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 44
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->sdId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->enterpriseId:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->map:Ljava/util/Map;

    .line 48
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->discardIfAllFieldsAreEmpty:Z

    .line 49
    return-void
.end method

.method public static createLoggerFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .locals 6
    .param p0, "keyValuePairs"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "LoggerFields"
        .end annotation
    .end param
    .param p1, "sdId"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "sdId"
        .end annotation
    .end param
    .param p2, "enterpriseId"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "enterpriseId"
        .end annotation
    .end param
    .param p3, "discardIfAllFieldsAreEmpty"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "discardIfAllFieldsAreEmpty"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "keyValuePairs",
            "sdId",
            "enterpriseId",
            "discardIfAllFieldsAreEmpty"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 82
    .local v3, "keyValuePair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v3    # "keyValuePair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/layout/LoggerFields;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/layout/LoggerFields;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public getDiscardIfAllFieldsAreEmpty()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->discardIfAllFieldsAreEmpty:Z

    return v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getSdId()Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 4

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->enterpriseId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->sdId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "eId":I
    new-instance v2, Lorg/apache/logging/log4j/message/StructuredDataId;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->sdId:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2

    .line 90
    .end local v0    # "eId":I
    :cond_1
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/LoggerFields;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
