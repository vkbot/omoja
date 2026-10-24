.class public Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
.super Ljava/lang/Object;
.source "DefaultLogBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/LogBuilder;


# static fields
.field private static EMPTY_MESSAGE:Lorg/apache/logging/log4j/message/Message;

.field private static final FQCN:Ljava/lang/String;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private volatile inUse:Z

.field private level:Lorg/apache/logging/log4j/Level;

.field private location:Ljava/lang/StackTraceElement;

.field private final logger:Lorg/apache/logging/log4j/Logger;

.field private marker:Lorg/apache/logging/log4j/Marker;

.field private threadId:J

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->EMPTY_MESSAGE:Lorg/apache/logging/log4j/message/Message;

    .line 37
    const-class v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->FQCN:Ljava/lang/String;

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Logger;)V
    .locals 2
    .param p1, "logger"    # Lorg/apache/logging/log4j/Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->threadId:J

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Logger;Lorg/apache/logging/log4j/Level;)V
    .locals 2
    .param p1, "logger"    # Lorg/apache/logging/log4j/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "level"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    .line 50
    iput-object p2, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->level:Lorg/apache/logging/log4j/Level;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->threadId:J

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    .line 53
    return-void
.end method

.method private isValid()Z
    .locals 7

    .line 241
    iget-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 243
    invoke-static {v2}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    .line 242
    const-string v3, "Attempt to reuse LogBuilder was ignored. {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return v1

    .line 246
    :cond_0
    iget-wide v3, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 248
    invoke-static {v2}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    .line 247
    const-string v3, "LogBuilder can only be used on the owning thread. {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return v1

    .line 251
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private logMessage(Lorg/apache/logging/log4j/message/Message;)V
    .locals 8
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->level:Lorg/apache/logging/log4j/Level;

    iget-object v3, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->marker:Lorg/apache/logging/log4j/Marker;

    sget-object v4, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->FQCN:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->location:Ljava/lang/StackTraceElement;

    iget-object v7, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->throwable:Ljava/lang/Throwable;

    move-object v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/logging/log4j/Logger;->logMessage(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    .line 237
    nop

    .line 238
    return-void

    .line 236
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    throw v1
.end method


# virtual methods
.method public isInUse()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    return v0
.end method

.method public log()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->EMPTY_MESSAGE:Lorg/apache/logging/log4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 230
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 115
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 150
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 122
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 157
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 164
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 171
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 178
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 185
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 192
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 196
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 199
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 204
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 207
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 212
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 215
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 220
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p11, v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 223
    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 129
    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 133
    .local p2, "params":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/logging/log4j/util/LambdaUtil;->getAll([Lorg/apache/logging/log4j/util/Supplier;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 136
    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/message/Message;)V
    .locals 1
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 108
    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/message/Message;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "messageSupplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/message/Message;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->logMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 143
    :cond_0
    return-void
.end method

.method public reset(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->inUse:Z

    .line 68
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->level:Lorg/apache/logging/log4j/Level;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->marker:Lorg/apache/logging/log4j/Marker;

    .line 70
    iput-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->throwable:Ljava/lang/Throwable;

    .line 71
    iput-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->location:Ljava/lang/StackTraceElement;

    .line 72
    return-object p0
.end method

.method public withLocation()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    .line 89
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->location:Ljava/lang/StackTraceElement;

    .line 90
    return-object p0
.end method

.method public withLocation(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .param p1, "location"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->location:Ljava/lang/StackTraceElement;

    .line 96
    return-object p0
.end method

.method public withMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->marker:Lorg/apache/logging/log4j/Marker;

    .line 78
    return-object p0
.end method

.method public withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->throwable:Ljava/lang/Throwable;

    .line 84
    return-object p0
.end method
