.class public final Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;
.super Ljava/lang/Object;
.source "MapRewritePolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "rewritePolicy"
    name = "MapRewritePolicy"
    printObject = true
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;)V
    .locals 0
    .param p2, "mode"    # Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "map",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->map:Ljava/util/Map;

    .line 52
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->mode:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    .line 53
    return-void
.end method

.method public static createPolicy(Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;
    .locals 11
    .param p0, "mode"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "mode"
        .end annotation
    .end param
    .param p1, "pairs"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "KeyValuePair"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mode",
            "pairs"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 132
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->Add:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    move-object v1, v0

    .local v1, "op":Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;
    goto :goto_0

    .end local v1    # "op":Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    move-result-object v0

    .line 133
    .local v0, "op":Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_3

    .line 137
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 139
    .local v5, "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "key":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 141
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v8, "A null key is not valid in MapRewritePolicy"

    invoke-interface {v7, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 142
    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 146
    sget-object v8, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A null value for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not allowed in MapRewritePolicy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 147
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v5    # "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "MapRewritePolicy is not configured with any valid key value pairs"

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 153
    return-object v1

    .line 155
    :cond_5
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;-><init>(Ljava/util/Map;Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;)V

    return-object v1

    .line 134
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :goto_3
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "keys and values must be specified for the MapRewritePolicy"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 135
    return-object v1
.end method


# virtual methods
.method public rewrite(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 7
    .param p1, "source"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 64
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/apache/logging/log4j/message/MapMessage;

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/MapMessage;

    .line 70
    .local v1, "mapMsg":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<*Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/MapMessage;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 71
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$1;->$SwitchMap$org$apache$logging$log4j$core$appender$rewrite$MapRewritePolicy$Mode:[I

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->mode:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 77
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 78
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->map:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    nop

    .line 84
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/message/MapMessage;->newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;

    move-result-object v3

    .line 85
    .local v3, "message":Lorg/apache/logging/log4j/message/Message;
    new-instance v4, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v4, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-virtual {v4, v3}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v4

    return-object v4

    .line 65
    .end local v1    # "mapMsg":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<*Ljava/lang/Object;>;"
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "message":Lorg/apache/logging/log4j/message/Message;
    :cond_4
    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->mode:Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v1, 0x1

    .line 111
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rewrite/MapRewritePolicy;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 113
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v1, 0x0

    .line 117
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 118
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
