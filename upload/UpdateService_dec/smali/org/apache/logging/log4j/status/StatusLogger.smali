.class public final Lorg/apache/logging/log4j/status/StatusLogger;
.super Lorg/apache/logging/log4j/spi/AbstractLogger;
.source "StatusLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATUS_LEVEL:Ljava/lang/String;

.field public static final DEFAULT_STATUS_LISTENER_LEVEL:Ljava/lang/String; = "log4j2.StatusLogger.level"

.field private static final MAX_ENTRIES:I

.field public static final MAX_STATUS_ENTRIES:Ljava/lang/String; = "log4j2.status.entries"

.field private static final NOT_AVAIL:Ljava/lang/String; = "?"

.field private static final PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

.field public static final STATUS_DATE_FORMAT:Ljava/lang/String; = "log4j2.StatusLogger.DateFormat"

.field private static final STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/status/StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private listenersLevel:I

.field private final listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

.field private final messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation
.end field

.field private final msgLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.StatusLogger.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    .line 80
    const-string v1, "log4j2.status.entries"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/status/StatusLogger;->MAX_ENTRIES:I

    .line 82
    sget-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.StatusLogger.level"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    .line 85
    new-instance v0, Lorg/apache/logging/log4j/status/StatusLogger;

    const-class v1, Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 133
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 90
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    .line 92
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 96
    new-instance v1, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;

    sget v2, Lorg/apache/logging/log4j/status/StatusLogger;->MAX_ENTRIES:I

    invoke-direct {v1, p0, v2}, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;-><init>(Lorg/apache/logging/log4j/status/StatusLogger;I)V

    iput-object v1, v0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    .line 98
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    .line 134
    sget-object v1, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v2, "log4j2.StatusLogger.DateFormat"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "dateFormat":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    .line 136
    .local v9, "showDateTime":Z
    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    :goto_0
    move-object v6, v2

    .line 137
    .local v6, "loggerLevel":Lorg/apache/logging/log4j/Level;
    new-instance v2, Lorg/apache/logging/log4j/simple/SimpleLogger;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v13, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "StatusLogger"

    move-object v4, v2

    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v14}, Lorg/apache/logging/log4j/simple/SimpleLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V

    iput-object v2, v0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    .line 138
    sget-object v2, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    iput v2, v0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    .line 139
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/status/StatusLogger;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    return-object v0
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "resource"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resource"
        }
    .end annotation

    .line 234
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 238
    :goto_0
    return-void
.end method

.method public static getLogger()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-object v0
.end method

.method private getStackTraceElement(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 7
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "stackTrace"
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 308
    return-object v0

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "next":Z
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    .line 312
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 314
    return-object v4

    .line 316
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    const/4 v1, 0x1

    goto :goto_1

    .line 318
    :cond_2
    const-string v6, "?"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    goto :goto_2

    .line 311
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "className":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_4
    :goto_2
    return-object v0
.end method

.method private isDebugPropertyEnabled()Z
    .locals 4

    .line 143
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.debug"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/simple/SimpleLogger;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/logging/log4j/status/StatusListener;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getStatusData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 248
    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "marker"
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 427
    return v1

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 430
    iget v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/simple/SimpleLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 354
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 397
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .param p13, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 327
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public varargs isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 337
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 420
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "fqcn"    # Ljava/lang/String;
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
            "fqcn",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 283
    move-object v1, p0

    move-object v8, p1

    const/4 v0, 0x0

    .line 284
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v8, :cond_0

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->getStackTraceElement(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 284
    :cond_0
    move-object v9, v0

    .line 287
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .local v9, "element":Ljava/lang/StackTraceElement;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/status/StatusData;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v9

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/logging/log4j/status/StatusData;-><init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v10, v0

    .line 288
    .local v10, "data":Lorg/apache/logging/log4j/status/StatusData;
    iget-object v0, v1, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_0
    iget-object v0, v1, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v0, v1, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 293
    nop

    .line 295
    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    .line 298
    :cond_1
    iget-object v0, v1, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/status/StatusListener;

    .line 299
    .local v2, "listener":Lorg/apache/logging/log4j/status/StatusListener;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/status/StatusData;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/Level;->isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-interface {v2, v10}, Lorg/apache/logging/log4j/status/StatusListener;->log(Lorg/apache/logging/log4j/status/StatusData;)V

    .line 302
    .end local v2    # "listener":Lorg/apache/logging/log4j/status/StatusListener;
    :cond_2
    goto :goto_1

    .line 296
    :cond_3
    :goto_2
    iget-object v2, v1, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/simple/SimpleLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 304
    :cond_4
    return-void

    .line 292
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public registerListener(Lorg/apache/logging/log4j/status/StatusListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/apache/logging/log4j/status/StatusListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {p1}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    .line 169
    .local v0, "lvl":Lorg/apache/logging/log4j/Level;
    iget v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v0    # "lvl":Lorg/apache/logging/log4j/Level;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public removeListener(Lorg/apache/logging/log4j/status/StatusListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/apache/logging/log4j/status/StatusListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lorg/apache/logging/log4j/status/StatusLogger;->closeSilently(Ljava/io/Closeable;)V

    .line 184
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    .line 188
    .local v0, "lowest":I
    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/status/StatusListener;

    .line 189
    .local v2, "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    invoke-interface {v2}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    .line 190
    .local v3, "level":I
    if-ge v0, v3, :cond_0

    .line 191
    move v0, v3

    .line 193
    .end local v2    # "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    .end local v3    # "level":I
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    iput v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "lowest":I
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/status/StatusListener;

    .line 222
    .local v1, "listener":Lorg/apache/logging/log4j/status/StatusListener;
    invoke-static {v1}, Lorg/apache/logging/log4j/status/StatusLogger;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "listener":Lorg/apache/logging/log4j/status/StatusListener;
    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 226
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->clear()V

    .line 229
    nop

    .line 230
    return-void

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 226
    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->clear()V

    throw v0
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/simple/SimpleLogger;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 157
    return-void
.end method

.method public updateListenerLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 2
    .param p1, "status"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    if-le v0, v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    .line 204
    :cond_0
    return-void
.end method
