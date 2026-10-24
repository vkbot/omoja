.class public final Lorg/apache/logging/log4j/ThreadContext;
.super Ljava/lang/Object;
.source "ThreadContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/ThreadContext$ContextStack;,
        Lorg/apache/logging/log4j/ThreadContext$EmptyIterator;,
        Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;
    }
.end annotation


# static fields
.field private static final DISABLE_ALL:Ljava/lang/String; = "disableThreadContext"

.field private static final DISABLE_MAP:Ljava/lang/String; = "disableThreadContextMap"

.field private static final DISABLE_STACK:Ljava/lang/String; = "disableThreadContextStack"

.field public static final EMPTY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

.field private static contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

.field private static contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

.field private static readOnlyContextMap:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

.field private static useStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_MAP:Ljava/util/Map;

    .line 190
    new-instance v0, Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/ThreadContext$EmptyThreadContextStack;-><init>(Lorg/apache/logging/log4j/ThreadContext$1;)V

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    .line 202
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->init()V

    .line 203
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static clearAll()V
    .locals 0

    .line 340
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->clearMap()V

    .line 341
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->clearStack()V

    .line 342
    return-void
.end method

.method public static clearMap()V
    .locals 1

    .line 333
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->clear()V

    .line 334
    return-void
.end method

.method public static clearStack()V
    .locals 1

    .line 406
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->clear()V

    .line 407
    return-void
.end method

.method public static cloneStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 415
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->copy()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    return-object v0
.end method

.method public static containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 351
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 298
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Ljava/util/Map;
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

    .line 360
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getCopy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDepth()I
    .locals 1

    .line 449
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->getDepth()I

    move-result v0

    return v0
.end method

.method public static getImmutableContext()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->getImmutableMapOrNull()Ljava/util/Map;

    move-result-object v0

    .line 370
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 2

    .line 424
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->getImmutableStackOrNull()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    .line 425
    .local v0, "result":Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getThreadContextMap()Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;
    .locals 1

    .line 390
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->readOnlyContextMap:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    return-object v0
.end method

.method static init()V
    .locals 6

    .line 213
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->init()V

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    .line 215
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    .line 216
    .local v1, "managerProps":Lorg/apache/logging/log4j/util/PropertiesUtil;
    const-string v2, "disableThreadContext"

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v2

    .line 217
    .local v2, "disableAll":Z
    const-string v3, "disableThreadContextStack"

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sput-boolean v3, Lorg/apache/logging/log4j/ThreadContext;->useStack:Z

    .line 218
    const-string v3, "disableThreadContextMap"

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    move v3, v4

    .line 220
    .local v3, "useMap":Z
    new-instance v4, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;

    sget-boolean v5, Lorg/apache/logging/log4j/ThreadContext;->useStack:Z

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/spi/DefaultThreadContextStack;-><init>(Z)V

    sput-object v4, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    .line 221
    if-nez v3, :cond_2

    .line 222
    new-instance v4, Lorg/apache/logging/log4j/spi/NoOpThreadContextMap;

    invoke-direct {v4}, Lorg/apache/logging/log4j/spi/NoOpThreadContextMap;-><init>()V

    sput-object v4, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    goto :goto_2

    .line 224
    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/spi/ThreadContextMapFactory;->createThreadContextMap()Lorg/apache/logging/log4j/spi/ThreadContextMap;

    move-result-object v4

    sput-object v4, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    .line 226
    :goto_2
    sget-object v4, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v5, v4, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    if-eqz v5, :cond_3

    .line 227
    check-cast v4, Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    sput-object v4, Lorg/apache/logging/log4j/ThreadContext;->readOnlyContextMap:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    goto :goto_3

    .line 229
    :cond_3
    sput-object v0, Lorg/apache/logging/log4j/ThreadContext;->readOnlyContextMap:Lorg/apache/logging/log4j/spi/ReadOnlyThreadContextMap;

    .line 231
    :goto_3
    return-void
.end method

.method public static isEmpty()Z
    .locals 1

    .line 399
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static peek()Ljava/lang/String;
    .locals 1

    .line 477
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->peek()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pop()Ljava/lang/String;
    .locals 1

    .line 463
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->pop()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static push(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 490
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->push(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static varargs push(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
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

    .line 506
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->push(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
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

    .line 245
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "m"
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

    .line 276
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v1, v0, Lorg/apache/logging/log4j/spi/ThreadContextMap2;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Lorg/apache/logging/log4j/spi/ThreadContextMap2;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap2;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 278
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    if-eqz v1, :cond_1

    .line 279
    check-cast v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 281
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 285
    :cond_2
    :goto_1
    return-void
.end method

.method public static putIfNull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
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

    .line 261
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 307
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->remove(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static removeAll(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    instance-of v1, v0, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;

    if-eqz v1, :cond_0

    .line 319
    check-cast v0, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/CleanableThreadContextMap;->removeAll(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 320
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    if-eqz v1, :cond_1

    .line 321
    check-cast v0, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/spi/DefaultThreadContextMap;->removeAll(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 323
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/ThreadContext;->contextMap:Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/spi/ThreadContextMap;->remove(Ljava/lang/String;)V

    .line 325
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 327
    :cond_2
    :goto_1
    return-void
.end method

.method public static removeStack()V
    .locals 1

    .line 526
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->clear()V

    .line 527
    return-void
.end method

.method public static setStack(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p0, "stack":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/logging/log4j/ThreadContext;->useStack:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->clear()V

    .line 438
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->addAll(Ljava/util/Collection;)Z

    .line 439
    return-void

    .line 435
    :cond_1
    :goto_0
    return-void
.end method

.method public static trim(I)V
    .locals 1
    .param p0, "depth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .line 562
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->contextStack:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/spi/ThreadContextStack;->trim(I)V

    .line 563
    return-void
.end method
