.class public Lorg/apache/mina/filter/logging/LoggingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "LoggingFilter.java"


# instance fields
.field private exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final logger:Lorg/slf4j/Logger;

.field private messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final name:Ljava/lang/String;

.field private sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 52
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 55
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 58
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 61
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 64
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 67
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 70
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    .line 100
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    .line 101
    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;

    .line 178
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 193
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 187
    return-void

    .line 183
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 184
    return-void

    .line 180
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-void

    .line 151
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "eventLevel"    # Lorg/apache/mina/filter/logging/LogLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 119
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 136
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void

    .line 121
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "EXCEPTION :"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public getExceptionCaughtLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageReceivedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageSentLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionClosedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionCreatedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionIdleLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionOpenedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "RECEIVED: {}"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalMessage()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SENT: {}"

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 228
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CLOSED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 263
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 264
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CREATED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 236
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 237
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "IDLE"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 254
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 255
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "OPENED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 245
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 246
    return-void
.end method

.method public setExceptionCaughtLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 272
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 273
    return-void
.end method

.method public setMessageReceivedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 290
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 291
    return-void
.end method

.method public setMessageSentLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 308
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 309
    return-void
.end method

.method public setSessionClosedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 380
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 381
    return-void
.end method

.method public setSessionCreatedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 326
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 327
    return-void
.end method

.method public setSessionIdleLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 362
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 363
    return-void
.end method

.method public setSessionOpenedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/mina/filter/logging/LogLevel;

    .line 344
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 345
    return-void
.end method
