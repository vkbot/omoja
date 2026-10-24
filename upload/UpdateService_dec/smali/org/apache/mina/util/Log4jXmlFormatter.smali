.class public Lorg/apache/mina/util/Log4jXmlFormatter;
.super Ljava/util/logging/Formatter;
.source "Log4jXmlFormatter.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100

.field private static final UPPER_LIMIT:I = 0x800


# instance fields
.field private buf:Ljava/lang/StringBuilder;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    .line 57
    iput-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 10
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 101
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    if-le v0, v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 107
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "<log4j:event logger=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\" timestamp=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\" level=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\" thread=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\">\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "<log4j:message><![CDATA["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "]]></log4j:message>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/util/Transform;->getThrowableStrRep(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 128
    iget-object v2, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v3, "<log4j:throwable><![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 131
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-static {v5, v4}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    iget-object v5, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v3, "]]></log4j:throwable>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .end local v0    # "s":[Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "<log4j:locationInfo class=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\" method=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v2, "\" file=\"?\" line=\"?\"/>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    if-eqz v0, :cond_7

    .line 148
    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v0

    .line 150
    .local v0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 153
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 154
    iget-object v3, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v4, "<log4j:properties>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "keys":[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 158
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 159
    .local v5, "key1":Ljava/lang/Object;
    if-nez v5, :cond_4

    const-string v6, ""

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "key":Ljava/lang/String;
    :goto_3
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 162
    .local v7, "val":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 163
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v9, "<log4j:data name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v9, "\" value=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v9, "\"/>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .end local v5    # "key1":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_6
    iget-object v1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v4, "</log4j:properties>\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_7
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    const-string v1, "</log4j:event>\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 69
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    .line 70
    return-void
.end method

.method public setProperties(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 85
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    .line 86
    return-void
.end method
