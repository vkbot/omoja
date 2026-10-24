.class public Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "CountingNoOpAppender.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "CountingNoOp"
    printObject = true
.end annotation


# instance fields
.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;)V"
        }
    .end annotation

    .line 40
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "layout",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "*>;[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 44
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<*>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    return-void
.end method

.method public static createAppender(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 54
    return-void
.end method

.method public getCount()J
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/CountingNoOpAppender;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
