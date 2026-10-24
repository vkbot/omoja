.class public Lorg/apache/logging/log4j/core/config/AppenderControl;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.source "AppenderControl.java"


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/AppenderControl;


# instance fields
.field private final appender:Lorg/apache/logging/log4j/core/Appender;

.field private final appenderName:Ljava/lang/String;

.field private final intLevel:I

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final recursive:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/config/AppenderControl;

    sput-object v0, Lorg/apache/logging/log4j/core/config/AppenderControl;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "appender",
            "level",
            "filter"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>(Lorg/apache/logging/log4j/core/Filter;)V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    .line 55
    const-string v0, "appender"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/Appender;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    .line 56
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->level:Lorg/apache/logging/log4j/Level;

    .line 58
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/Level;->ALL:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->intLevel:I

    .line 59
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->start()V

    .line 60
    return-void
.end method

.method private appenderErrorHandlerMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->createErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/core/ErrorHandler;->error(Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method private callAppender0(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 132
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->ensureAppenderStarted()V

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->isFilteredByAppender(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->tryCallAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 136
    :cond_0
    return-void
.end method

.method private callAppenderPreventRecursion(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender0(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private createErrorMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureAppenderStarted()V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "Attempted to append to non-started appender "

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->handleError(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method private handleAppenderError(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/RuntimeException;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "ex"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "ex"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;

    move-result-object v0

    const-string v1, "An exception occurred processing Appender "

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->createErrorMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/logging/log4j/core/ErrorHandler;->error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/Appender;->ignoreExceptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    throw p2
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderErrorHandlerMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->ignoreExceptions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    return-void

    .line 147
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isFilteredByAppender(Lorg/apache/logging/log4j/core/LogEvent;)Z
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

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/filter/Filterable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/core/filter/Filterable;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/filter/Filterable;->isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFilteredByAppenderControl(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 99
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFilteredByLevel(Lorg/apache/logging/log4j/core/LogEvent;)Z
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

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->intLevel:I

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecursiveCall()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "Recursive call to appender "

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderErrorHandlerMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldSkip(Lorg/apache/logging/log4j/core/LogEvent;)Z
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

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->isFilteredByAppenderControl(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->isFilteredByLevel(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->isRecursiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private tryCallAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Appender;->append(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->handleAppenderError(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/RuntimeException;)V

    goto :goto_1

    .line 162
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "error":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->handleAppenderError(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/RuntimeException;)V

    .line 166
    .end local v0    # "error":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 167
    :goto_1
    return-void
.end method


# virtual methods
.method public callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->shouldSkip(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppenderPreventRecursion(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 183
    if-ne p1, p0, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/core/config/AppenderControl;

    if-nez v0, :cond_1

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 190
    .local v0, "other":Lorg/apache/logging/log4j/core/config/AppenderControl;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAppender()Lorg/apache/logging/log4j/core/Appender;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    return-object v0
.end method

.method public getAppenderName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[appender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appenderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->appenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->intLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recursive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControl;->recursive:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method
