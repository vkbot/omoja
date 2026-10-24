.class public Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.super Ljava/lang/Object;
.source "ThreadDumpMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$BasicThreadInfoFactory;,
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;,
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory; = null

.field private static final serialVersionUID:J = -0xf50112a30aeef80L


# instance fields
.field private formattedMessage:Ljava/lang/String;

.field private volatile threads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/message/ThreadInformation;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "title"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    .line 52
    invoke-static {}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFactory()Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;->createThreadInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->threads:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "formattedMsg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formattedMsg",
            "title"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formattedMessage:Ljava/lang/String;

    .line 57
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/message/ThreadDumpMessage;

    .line 38
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method private static getFactory()Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    if-nez v0, :cond_0

    .line 62
    const-class v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->initFactory(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    .line 64
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    return-object v0
.end method

.method private static initFactory(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    .locals 6
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classLoader"
        }
    .end annotation

    .line 68
    const-class v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 69
    .local v0, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;>;"
    const/4 v1, 0x0

    .line 71
    .local v1, "result":Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;>;"
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 79
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;>;"
    :cond_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "unavailable":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    const-string v5, "ThreadDumpMessage uses BasicThreadInfoFactory: could not load extended ThreadInfoFactory: {}"

    invoke-virtual {v3, v5, v4}, Lorg/apache/logging/log4j/status/StatusLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const/4 v1, 0x0

    .line 80
    .end local v2    # "unavailable":Ljava/lang/Throwable;
    :goto_1
    if-nez v1, :cond_1

    new-instance v2, Lorg/apache/logging/log4j/message/ThreadDumpMessage$BasicThreadInfoFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$BasicThreadInfoFactory;-><init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage$1;)V

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->threads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/message/ThreadInformation;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/message/ThreadInformation;

    .line 110
    .local v3, "info":Lorg/apache/logging/log4j/message/ThreadInformation;
    invoke-interface {v3, p1}, Lorg/apache/logging/log4j/message/ThreadInformation;->printThreadInfo(Ljava/lang/StringBuilder;)V

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v3, p1, v4}, Lorg/apache/logging/log4j/message/ThreadInformation;->printStack(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/message/ThreadInformation;[Ljava/lang/StackTraceElement;>;"
    .end local v3    # "info":Lorg/apache/logging/log4j/message/ThreadInformation;
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .line 140
    new-instance v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;-><init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)V

    return-object v0
.end method
