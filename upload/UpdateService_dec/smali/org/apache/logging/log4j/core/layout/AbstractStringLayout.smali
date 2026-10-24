.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractLayout;
.source "AbstractStringLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/StringLayout;
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer2;,
        Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;,
        Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/layout/AbstractLayout<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/apache/logging/log4j/core/StringLayout;",
        "Lorg/apache/logging/log4j/core/impl/LocationAware;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_STRING_BUILDER_SIZE:I = 0x400

.field protected static final MAX_STRING_BUILDER_SIZE:I

.field private static final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

.field private final headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

.field private textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/layout/Encoder<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    nop

    .line 119
    const-string v0, "log4j.layoutStringBuilder.maxSize"

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->size(Ljava/lang/String;I)I

    move-result v0

    .line 118
    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->MAX_STRING_BUILDER_SIZE:I

    .line 121
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Ljava/nio/charset/Charset;[B[B)V

    .line 163
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;[B[B)V
    .locals 2
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;
    .param p2, "header"    # [B
    .param p3, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "aCharset",
            "header",
            "footer"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 174
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 175
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 176
    if-nez p1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    .line 177
    sget-boolean v1, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_DIRECT_ENCODERS:Z

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;-><init>(Ljava/nio/charset/Charset;)V

    :cond_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;

    .line 178
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "aCharset"    # Ljava/nio/charset/Charset;
    .param p3, "headerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p4, "footerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "aCharset",
            "headerSerializer",
            "footerSerializer"
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 191
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 192
    iput-object p4, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 193
    if-nez p2, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    .line 194
    sget-boolean v1, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_DIRECT_ENCODERS:Z

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;-><init>(Ljava/nio/charset/Charset;)V

    :cond_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;

    .line 195
    return-void
.end method

.method private getLogEventFactory()Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;
    .locals 1

    .line 243
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;->getInstance()Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    move-result-object v0

    return-object v0
.end method

.method protected static getStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 129
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepth()I

    move-result v0

    const/16 v1, 0x400

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 133
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 134
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 136
    sget-object v1, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 138
    :cond_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->trimToMaxSize(Ljava/lang/StringBuilder;)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    return-object v0
.end method

.method private static size(Ljava/lang/String;I)I
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "property",
            "defaultValue"
        }
    .end annotation

    .line 144
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static trimToMaxSize(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stringBuilder"
        }
    .end annotation

    .line 148
    sget v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->MAX_STRING_BUILDER_SIZE:I

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 149
    return-void
.end method


# virtual methods
.method protected getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 211
    const-string v0, "text/plain"

    return-object v0
.end method

.method public getFooter()[B
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->getFooter()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->serializeToBytes(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFooterSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method public getHeader()[B
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->getHeader()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->serializeToBytes(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getHeaderSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method protected getStringBuilderEncoder()Lorg/apache/logging/log4j/core/layout/Encoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/layout/Encoder<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/StringBuilderEncoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->textEncoder:Lorg/apache/logging/log4j/core/layout/Encoder;

    return-object v0
.end method

.method public requiresLocation()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected serializeToBytes(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;[B)[B
    .locals 2
    .param p1, "serializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p2, "defaultValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serializer",
            "defaultValue"
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "serializable":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 261
    return-object p2

    .line 263
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/StringEncoder;->toBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method protected serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;
    .locals 10
    .param p1, "serializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serializer"
        }
    .end annotation

    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getRootLogger()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 274
    .local v0, "rootLogger":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "loggerName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    .line 276
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    goto :goto_0

    .line 277
    .end local v0    # "level":Lorg/apache/logging/log4j/Level;
    .end local v1    # "loggerName":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 278
    .restart local v1    # "loggerName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;->getDefaultLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    .line 281
    .restart local v0    # "level":Lorg/apache/logging/log4j/Level;
    :goto_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getLogEventFactory()Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, ""

    move-object v3, v1

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;->createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v2

    .line 283
    .local v2, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B
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

    .line 294
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
