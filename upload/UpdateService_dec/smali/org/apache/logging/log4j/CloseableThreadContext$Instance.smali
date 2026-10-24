.class public Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
.super Ljava/lang/Object;
.source "CloseableThreadContext.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/CloseableThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# instance fields
.field private final originalValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/CloseableThreadContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/CloseableThreadContext$1;

    .line 103
    invoke-direct {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;-><init>()V

    return-void
.end method

.method private closeMap()V
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "originalValue":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 212
    invoke-static {v2}, Lorg/apache/logging/log4j/ThreadContext;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/logging/log4j/ThreadContext;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 217
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "originalValue":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method

.method private closeStack()V
    .locals 2

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    if-ge v0, v1, :cond_0

    .line 222
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->pop()Ljava/lang/String;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    .line 225
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->closeStack()V

    .line 203
    invoke-direct {p0}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->closeMap()V

    .line 204
    return-void
.end method

.method public push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->push(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    .line 121
    return-object p0
.end method

.method public push(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "args"
        }
    .end annotation

    .line 133
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/ThreadContext;->push(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->pushCount:I

    .line 135
    return-object p0
.end method

.method public pushAll(Ljava/util/List;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/CloseableThreadContext$Instance;"
        }
    .end annotation

    .line 185
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->push(Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;

    .line 187
    .end local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/ThreadContext;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/logging/log4j/CloseableThreadContext$Instance;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/CloseableThreadContext$Instance;"
        }
    .end annotation

    .line 166
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getContext()Ljava/util/Map;

    move-result-object v0

    .line 167
    .local v0, "currentValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/ThreadContext;->putAll(Ljava/util/Map;)V

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    iget-object v3, p0, Lorg/apache/logging/log4j/CloseableThreadContext$Instance;->originalValues:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    return-object p0
.end method
