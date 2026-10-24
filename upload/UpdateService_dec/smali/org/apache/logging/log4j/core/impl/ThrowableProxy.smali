.class public Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
.super Ljava/lang/Object;
.source "ThrowableProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

.field private static final EOL:C = '\n'

.field private static final EOL_STR:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x2633cf2a65845306L


# instance fields
.field private final causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

.field private commonElementCount:I

.field private final extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

.field private final localizedMessage:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

.field private final transient throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    .line 83
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    .line 84
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    .line 85
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 86
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->message:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->localizedMessage:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;Ljava/util/Set;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/util/Deque;Ljava/util/Map;Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .param p1, "parent"    # Ljava/lang/Throwable;
    .param p4, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "parent",
            "stack",
            "map",
            "cause",
            "suppressedVisited",
            "causeVisited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Deque<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p2, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Class<*>;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;>;"
    .local p5, "suppressedVisited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    .local p6, "causeVisited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-interface {p6, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iput-object p4, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    .line 137
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->message:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->localizedMessage:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {p0, p2, p3, v0, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toExtendedStackTrace(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/Deque;Ljava/util/Map;[Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    .line 141
    invoke-virtual {p4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 142
    .local v0, "causeCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;Ljava/util/Deque;Ljava/util/Map;Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    iput-object v8, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 144
    invoke-static {p4, p5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toSuppressedProxies(Ljava/lang/Throwable;Ljava/util/Set;)[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;Ljava/util/Set;)V
    .locals 11
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "throwable",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->message:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->localizedMessage:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCurrentStackTrace()Ljava/util/Deque;

    move-result-object v8

    .line 113
    .local v8, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v8, v0, v2, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toExtendedStackTrace(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/Deque;Ljava/util/Map;[Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 115
    .local v9, "throwableCause":Ljava/lang/Throwable;
    new-instance v7, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 116
    .local v7, "causeVisited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v8

    move-object v4, v0

    move-object v5, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;Ljava/util/Deque;Ljava/util/Map;Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;)V

    move-object v2, v10

    :goto_0
    iput-object v2, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 118
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toSuppressedProxies(Ljava/lang/Throwable;Ljava/util/Set;)[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 150
    return v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 153
    return v1

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 156
    return v1

    .line 158
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 159
    .local v2, "other":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    return v1

    .line 162
    :cond_3
    iget v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->commonElementCount:I

    iget v4, v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->commonElementCount:I

    if-eq v3, v4, :cond_4

    .line 163
    return v1

    .line 165
    :cond_4
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 166
    return v1

    .line 168
    :cond_5
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 169
    return v1

    .line 171
    :cond_6
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 172
    return v1

    .line 174
    :cond_7
    return v0
.end method

.method public formatExtendedStackTraceTo(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 377
    .local p2, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatExtendedStackTraceTo(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "cause",
            "suffix"
        }
    .end annotation

    .line 184
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p4, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "cause",
            "ignorePackages",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p4, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "cause",
            "ignorePackages",
            "textRenderer",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 210
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p4, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "cause",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 225
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method public getCauseStackTraceAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 239
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCauseStackTraceAsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "packages",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 250
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ignorePackages",
            "textRenderer",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 262
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 275
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatCauseStackTrace(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonElementCount()I
    .locals 1

    .line 287
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->commonElementCount:I

    return v0
.end method

.method public getExtendedStackTrace()[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    return-object v0
.end method

.method public getExtendedStackTraceAsString()Ljava/lang/String;
    .locals 4

    .line 316
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v3, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStackTraceAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 326
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStackTraceAsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ignorePackages",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 337
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ignorePackages",
            "textRenderer",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 349
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EOL_STR:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 362
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->formatExtendedStackTraceTo(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSuppressedProxies()[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method public getSuppressedStackTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getSuppressedProxies()[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    .line 418
    .local v0, "suppressed":[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppressed Stack Trace Elements:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 422
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 423
    .local v4, "proxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    invoke-virtual {v4, p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTraceAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .end local v4    # "proxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 419
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v1, ""

    return-object v1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 439
    const/16 v0, 0x1f

    .line 440
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 441
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->causeProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 442
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->commonElementCount:I

    add-int/2addr v1, v3

    .line 443
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 444
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->suppressedProxies:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    .line 445
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v2, v4

    .line 446
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method setCommonElementCount(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 298
    iput p1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->commonElementCount:I

    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 451
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->message:Ljava/lang/String;

    .line 452
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->name:Ljava/lang/String;

    :goto_0
    return-object v1
.end method
