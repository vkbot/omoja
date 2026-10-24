.class public final Lorg/apache/logging/log4j/core/layout/SyslogLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "SyslogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "SyslogLayout"
    printObject = true
.end annotation


# static fields
.field public static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final escapeNewLine:Ljava/lang/String;

.field private final facility:Lorg/apache/logging/log4j/core/net/Facility;

.field private final includeNewLine:Z

.field private final localHostname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-string v0, "\\r?\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/net/Facility;ZLjava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p2, "includeNL"    # Z
    .param p3, "escapeNL"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "facility",
            "includeNL",
            "escapeNL",
            "charset"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Ljava/nio/charset/Charset;)V

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MMM dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 129
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getLocalHostname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->localHostname:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 134
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->includeNewLine:Z

    .line 135
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->escapeNewLine:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private declared-synchronized addDate(JLjava/lang/StringBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "buf"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 170
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 173
    const/16 v1, 0x20

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout;
    :cond_0
    monitor-exit p0

    return-void

    .line 168
    .end local v0    # "index":I
    .end local p1    # "timestamp":J
    .end local p3    # "buf":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/net/Facility;ZLjava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/SyslogLayout;
    .locals 1
    .param p0, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p1, "includeNewLine"    # Z
    .param p2, "escapeNL"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "facility",
            "includeNewLine",
            "escapeNL",
            "charset"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    new-instance v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;-><init>(Lorg/apache/logging/log4j/core/net/Facility;ZLjava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    return-object v0
.end method


# virtual methods
.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "structured"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "formatType"

    const-string v2, "logfilepatternreceiver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dateFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "format"

    const-string v2, "<LEVEL>TIMESTAMP PROP(HOSTNAME) MESSAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method public getFacility()Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 146
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/net/Priority;->getPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->addDate(JLjava/lang/StringBuilder;)V

    .line 152
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->localHostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->escapeNewLine:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    sget-object v2, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->escapeNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->includeNewLine:Z

    if-eqz v2, :cond_1

    .line 163
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
