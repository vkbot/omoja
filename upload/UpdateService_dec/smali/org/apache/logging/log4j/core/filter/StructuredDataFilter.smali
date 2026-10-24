.class public final Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;
.super Lorg/apache/logging/log4j/core/filter/MapFilter;
.source "StructuredDataFilter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "StructuredDataFilter"
    printObject = true
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x800

.field private static threadLocalStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;ZLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 0
    .param p2, "oper"    # Z
    .param p3, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p4, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "map",
            "oper",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/filter/MapFilter;-><init>(Ljava/util/Map;ZLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 54
    return-void
.end method

.method private appendOrNull(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "sb"
        }
    .end annotation

    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    return-object p2
.end method

.method public static createFilter([Lorg/apache/logging/log4j/core/util/KeyValuePair;Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;
    .locals 11
    .param p0, "pairs"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Pairs"
        .end annotation
    .end param
    .param p1, "oper"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "operator"
        .end annotation
    .end param
    .param p2, "match"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMatch"
        .end annotation
    .end param
    .param p3, "mismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMismatch"
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
            "pairs",
            "oper",
            "match",
            "mismatch"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 164
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 168
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p0, v4

    .line 170
    .local v5, "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "key":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 172
    sget-object v7, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v8, "A null key is not valid in MapFilter"

    invoke-interface {v7, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 173
    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 177
    sget-object v8, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A null value for key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not allowed in MapFilter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 181
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 182
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 185
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v5    # "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    sget-object v2, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "StructuredDataFilter is not configured with any valid key value pairs"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 191
    return-object v0

    .line 193
    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "or"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    move v0, v3

    .line 194
    .local v0, "isAnd":Z
    new-instance v2, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;

    invoke-direct {v2, v1, v0, p2, p3}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;-><init>(Ljava/util/Map;ZLorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-object v2

    .line 165
    .end local v0    # "isAnd":Z
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8
    :goto_2
    sget-object v1, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "keys and values must be specified for the StructuredDataFilter"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method private getStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 109
    sget-object v0, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 110
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 112
    sget-object v1, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 114
    :cond_0
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    return-object v0
.end method

.method private getValue(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "data"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/message/StructuredDataId;->formatTo(Ljava/lang/StringBuilder;)V

    .line 95
    return-object v0

    .line 96
    :cond_0
    const-string v1, "id.name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->appendOrNull(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 98
    :cond_1
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->appendOrNull(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 100
    :cond_2
    const-string v1, "message"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 102
    return-object v0

    .line 104
    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->appendOrNull(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private listContainsValue(Ljava/util/List;Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p2, "toMatch"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidates",
            "toMatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")Z"
        }
    .end annotation

    .line 128
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 130
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "candidate":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 132
    return v1

    .line 129
    .end local v3    # "candidate":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 136
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .restart local v3    # "candidate":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 139
    return v0

    .line 141
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move-object v4, v3

    move-object v7, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/logging/log4j/util/StringBuilders;->equals(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    return v1

    .line 136
    .end local v3    # "candidate":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 68
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    if-eqz v1, :cond_0

    .line 69
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->filter(Lorg/apache/logging/log4j/message/StructuredDataMessage;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/filter/MapFilter;->filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    return-object v1
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 59
    instance-of v0, p4, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p4

    check-cast v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->filter(Lorg/apache/logging/log4j/message/StructuredDataMessage;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method protected filter(Lorg/apache/logging/log4j/message/StructuredDataMessage;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 5
    .param p1, "message"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "match":Z
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->getStringMap()Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;

    move-result-object v1

    .line 77
    .local v1, "map":Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 78
    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->getValue(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    .local v3, "toMatch":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->listContainsValue(Ljava/util/List;Ljava/lang/StringBuilder;)Z

    move-result v0

    goto :goto_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->isAnd()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->isAnd()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 85
    goto :goto_2

    .line 77
    .end local v3    # "toMatch":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/StructuredDataFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_3
    return-object v2
.end method
