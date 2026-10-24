.class public Lorg/apache/logging/log4j/simple/SimpleLogger;
.super Lorg/apache/logging/log4j/spi/AbstractLogger;
.source "SimpleLogger.java"


# static fields
.field private static final SPACE:C = ' '

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateFormatter:Ljava/text/DateFormat;

.field private level:Lorg/apache/logging/log4j/Level;

.field private final logName:Ljava/lang/String;

.field private final showContextMap:Z

.field private final showDateTime:Z

.field private stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultLevel"    # Lorg/apache/logging/log4j/Level;
    .param p3, "showLogName"    # Z
    .param p4, "showShortLogName"    # Z
    .param p5, "showDateTime"    # Z
    .param p6, "showContextMap"    # Z
    .param p7, "dateTimeFormat"    # Ljava/lang/String;
    .param p8, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .param p9, "props"    # Lorg/apache/logging/log4j/util/PropertiesUtil;
    .param p10, "stream"    # Ljava/io/PrintStream;
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
            "name",
            "defaultLevel",
            "showLogName",
            "showShortLogName",
            "showDateTime",
            "showContextMap",
            "dateTimeFormat",
            "messageFactory",
            "props",
            "stream"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p8}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.logging.log4j.simplelog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "lvl":Ljava/lang/String;
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    .line 68
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 69
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "index":I
    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 71
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    .line 75
    .end local v2    # "index":I
    :goto_0
    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 76
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_2
    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    .line 80
    :goto_1
    iput-boolean p5, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showDateTime:Z

    .line 81
    iput-boolean p6, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showContextMap:Z

    .line 82
    iput-object p10, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    .line 84
    if-eqz p5, :cond_3

    .line 87
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v1, "format":Ljava/text/DateFormat;
    goto :goto_2

    .line 88
    .end local v1    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 92
    .local v1, "format":Ljava/text/DateFormat;
    :goto_2
    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    .line 93
    .end local v1    # "format":Ljava/text/DateFormat;
    goto :goto_3

    .line 94
    :cond_3
    iput-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    .line 96
    :goto_3
    return-void
.end method


# virtual methods
.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
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

    .line 162
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
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

    .line 169
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
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

    .line 177
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
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

    .line 185
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
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
            "testLevel",
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

    .line 193
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "p1"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "testLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "mgsLevel"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "throwable"    # Ljava/lang/Throwable;
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
            "mgsLevel",
            "marker",
            "msg",
            "throwable"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showDateTime:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 209
    .local v1, "now":Ljava/util/Date;
    iget-object v3, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v4, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "dateText":Ljava/lang/String;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    .end local v4    # "dateText":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 216
    .end local v1    # "now":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-boolean v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showContextMap:Z

    if-eqz v1, :cond_2

    .line 224
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableContext()Ljava/util/Map;

    move-result-object v1

    .line 225
    .local v1, "mdc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    .end local v1    # "mdc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    .line 233
    .local v1, "params":[Ljava/lang/Object;
    if-nez p5, :cond_3

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 235
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Throwable;

    .local v3, "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 237
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    move-object v3, p5

    .line 239
    .restart local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v4, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    if-eqz v3, :cond_4

    .line 241
    iget-object v4, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(C)V

    .line 242
    iget-object v2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 244
    :cond_4
    return-void
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    .line 250
    :cond_0
    return-void
.end method

.method public setStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    .line 254
    return-void
.end method
