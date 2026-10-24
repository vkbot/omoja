.class public Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
.super Ljava/lang/Object;
.source "StatusConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATUS:Lorg/apache/logging/log4j/Level;

.field private static final DEFAULT_STREAM:Ljava/io/PrintStream;

.field private static final DEFAULT_VERBOSITY:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;


# instance fields
.field private destination:Ljava/io/PrintStream;

.field private final errorMessages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile initialized:Z

.field private final logger:Lorg/apache/logging/log4j/status/StatusLogger;

.field private status:Lorg/apache/logging/log4j/Level;

.field private verboseClasses:[Ljava/lang/String;

.field private verbosity:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    .line 43
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    sput-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STATUS:Lorg/apache/logging/log4j/Level;

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    sput-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_VERBOSITY:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->errorMessages:Ljava/util/Collection;

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->destination:Ljava/io/PrintStream;

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STATUS:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_VERBOSITY:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verbosity:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    return-void
.end method

.method private configureExistingStatusConsoleListener()Z
    .locals 6

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "configured":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/status/StatusLogger;->getListeners()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/status/StatusListener;

    .line 196
    .local v2, "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    instance-of v3, v2, Lorg/apache/logging/log4j/status/StatusConsoleListener;

    if-eqz v3, :cond_1

    .line 197
    move-object v3, v2

    check-cast v3, Lorg/apache/logging/log4j/status/StatusConsoleListener;

    .line 198
    .local v3, "listener":Lorg/apache/logging/log4j/status/StatusConsoleListener;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/status/StatusConsoleListener;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 199
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->updateListenerLevel(Lorg/apache/logging/log4j/Level;)V

    .line 200
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verbosity:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    sget-object v5, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    if-ne v4, v5, :cond_0

    .line 201
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verboseClasses:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/status/StatusConsoleListener;->setFilters([Ljava/lang/String;)V

    .line 203
    :cond_0
    const/4 v0, 0x1

    .line 205
    .end local v2    # "statusListener":Lorg/apache/logging/log4j/status/StatusListener;
    .end local v3    # "listener":Lorg/apache/logging/log4j/status/StatusConsoleListener;
    :cond_1
    goto :goto_0

    .line 206
    :cond_2
    return v0
.end method

.method private migrateSavedLogMessages()V
    .locals 3

    .line 219
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->errorMessages:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 221
    .end local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialized:Z

    .line 223
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->errorMessages:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 224
    return-void
.end method

.method private parseStreamName(Ljava/lang/String;)Ljava/io/PrintStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_3

    const-string v0, "out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const-string v0, "err"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0

    .line 116
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 117
    .local v0, "destUri":Ljava/net/URI;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/FileUtils;->fileFromUri(Ljava/net/URI;)Ljava/io/File;

    move-result-object v1

    .line 118
    .local v1, "output":Ljava/io/File;
    if-nez v1, :cond_2

    .line 120
    sget-object v2, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    return-object v2

    .line 122
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v3

    .line 111
    .end local v0    # "destUri":Ljava/net/URI;
    .end local v1    # "output":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    return-object v0
.end method

.method private registerNewStatusConsoleListener()V
    .locals 3

    .line 211
    new-instance v0, Lorg/apache/logging/log4j/status/StatusConsoleListener;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->destination:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/status/StatusConsoleListener;-><init>(Lorg/apache/logging/log4j/Level;Ljava/io/PrintStream;)V

    .line 212
    .local v0, "listener":Lorg/apache/logging/log4j/status/StatusConsoleListener;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verbosity:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    sget-object v2, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    if-ne v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verboseClasses:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusConsoleListener;->setFilters([Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->registerListener(Lorg/apache/logging/log4j/status/StatusListener;)V

    .line 216
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
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

    .line 80
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialized:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->errorMessages:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialized:Z

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    if-ne v0, v1, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialized:Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->configureExistingStatusConsoleListener()Z

    move-result v0

    .line 185
    .local v0, "configured":Z
    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->registerNewStatusConsoleListener()V

    .line 188
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->migrateSavedLogMessages()V

    .line 191
    .end local v0    # "configured":Z
    :cond_2
    :goto_0
    return-void
.end method

.method public withDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 4
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destination"
        }
    .end annotation

    .line 98
    const-string v0, "]. Falling back to default of stdout."

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->parseStreamName(Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->destination:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File could not be found at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->error(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->destination:Ljava/io/PrintStream;

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->error(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->DEFAULT_STREAM:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->destination:Ljava/io/PrintStream;

    .line 105
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    nop

    .line 106
    :goto_1
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 2
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    .line 135
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid status level specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Defaulting to ERROR."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->error(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    .line 139
    :cond_0
    return-object p0
.end method

.method public withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 0
    .param p1, "status"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->status:Lorg/apache/logging/log4j/Level;

    .line 150
    return-object p0
.end method

.method public varargs withVerboseClasses([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 0
    .param p1, "verboseClasses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "verboseClasses"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verboseClasses:[Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public withVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .locals 1
    .param p1, "verbosity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "verbosity"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->toVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->verbosity:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    .line 162
    return-object p0
.end method
