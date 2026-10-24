.class public Lorg/apache/logging/log4j/simple/SimpleLoggerContext;
.super Ljava/lang/Object;
.source "SimpleLoggerContext.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContext;


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field static final INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContext;

.field private static final SYSTEM_ERR:Ljava/lang/String; = "system.err"

.field private static final SYSTEM_OUT:Ljava/lang/String; = "system.out"

.field protected static final SYSTEM_PREFIX:Ljava/lang/String; = "org.apache.logging.log4j.simplelog."


# instance fields
.field private final dateTimeFormat:Ljava/lang/String;

.field private final defaultLevel:Lorg/apache/logging/log4j/Level;

.field private final loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final props:Lorg/apache/logging/log4j/util/PropertiesUtil;

.field private final showContextMap:Z

.field private final showDateTime:Z

.field private final showLogName:Z

.field private final showShortName:Z

.field private final stream:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;

    invoke-direct {v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.simplelog.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    .line 81
    const-string v1, "org.apache.logging.log4j.simplelog.showContextMap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showContextMap:Z

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "org.apache.logging.log4j.simplelog.showlogname"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showLogName:Z

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "org.apache.logging.log4j.simplelog.showShortLogname"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showShortName:Z

    .line 84
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "org.apache.logging.log4j.simplelog.showdatetime"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showDateTime:Z

    .line 85
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "org.apache.logging.log4j.simplelog.level"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "lvl":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->defaultLevel:Lorg/apache/logging/log4j/Level;

    .line 88
    iget-boolean v1, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showDateTime:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v2, "org.apache.logging.log4j.simplelog.dateTimeFormat"

    const-string v3, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->dateTimeFormat:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v2, "org.apache.logging.log4j.simplelog.logFile"

    const-string v3, "system.err"

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .local v2, "ps":Ljava/io/PrintStream;
    goto :goto_1

    .line 95
    .end local v2    # "ps":Ljava/io/PrintStream;
    :cond_1
    const-string v2, "system.out"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .restart local v2    # "ps":Ljava/io/PrintStream;
    goto :goto_1

    .line 99
    .end local v2    # "ps":Ljava/io/PrintStream;
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .restart local v2    # "ps":Ljava/io/PrintStream;
    goto :goto_1

    .line 100
    .end local v2    # "ps":Ljava/io/PrintStream;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v2, v3

    .line 104
    .local v2, "ps":Ljava/io/PrintStream;
    :goto_1
    iput-object v2, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->stream:Ljava/io/PrintStream;

    .line 105
    return-void
.end method


# virtual methods
.method public getExternalContext()Ljava/lang/Object;
    .locals 1

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 13
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

    .line 120
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    .line 121
    .local v0, "extendedLogger":Lorg/apache/logging/log4j/spi/ExtendedLogger;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->checkMessageFactory(Lorg/apache/logging/log4j/spi/ExtendedLogger;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 123
    return-object v0

    .line 125
    :cond_0
    new-instance v12, Lorg/apache/logging/log4j/simple/SimpleLogger;

    iget-object v3, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->defaultLevel:Lorg/apache/logging/log4j/Level;

    iget-boolean v4, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showLogName:Z

    iget-boolean v5, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showShortName:Z

    iget-boolean v6, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showDateTime:Z

    iget-boolean v7, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->showContextMap:Z

    iget-object v8, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->dateTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->props:Lorg/apache/logging/log4j/util/PropertiesUtil;

    iget-object v11, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->stream:Ljava/io/PrintStream;

    move-object v1, v12

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v11}, Lorg/apache/logging/log4j/simple/SimpleLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V

    .line 127
    .local v1, "simpleLogger":Lorg/apache/logging/log4j/simple/SimpleLogger;
    iget-object v2, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->putIfAbsent(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V

    .line 128
    iget-object v2, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v2, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v2

    return-object v2
.end method

.method public getLoggerRegistry()Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->loggerRegistry:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    return-object v0
.end method

.method public hasLogger(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)Z"
        }
    .end annotation

    .line 149
    .local p2, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .locals 1
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

    .line 154
    const/4 v0, 0x0

    return v0
.end method
