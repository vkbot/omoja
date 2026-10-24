.class public Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;
.super Ljava/lang/Object;
.source "DefaultConfigurationBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "


# instance fields
.field private advertiser:Ljava/lang/String;

.field private appenders:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private customLevels:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private destination:Ljava/lang/String;

.field private filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private level:Lorg/apache/logging/log4j/Level;

.field private loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

.field private loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private monitorInterval:I

.field private name:Ljava/lang/String;

.field private packages:Ljava/lang/String;

.field private properties:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private final root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private scripts:Lorg/apache/logging/log4j/core/config/builder/api/Component;

.field private shutdownFlag:Ljava/lang/String;

.field private shutdownTimeoutMillis:J

.field private source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

.field private verbosity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    const-class v0, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;-><init>(Ljava/lang/Class;)V

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v1, "name"

    const-string v2, "Built"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 109
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->clazz:Ljava/lang/Class;

    .line 113
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/builder/api/Component;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "Properties"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->properties:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "Scripts"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->scripts:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "CustomLevels"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->customLevels:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "Filters"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "Appenders"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->appenders:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v2, "Loggers"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 110
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/builder/api/Component;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Configuration class must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xml"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 232
    .local v0, "writer":Ljava/io/StringWriter;
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->formatXml(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatXml(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .param p0, "source"    # Ljavax/xml/transform/Source;
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/transform/TransformerFactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 96
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 97
    .local v0, "transformer":Ljavax/xml/transform/Transformer;
    const-string v1, "  "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{http://xml.apache.org/xslt}indent-amount"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "indent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 100
    return-void
.end method

.method private writeXmlAttributes(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 4
    .param p1, "xmlWriter"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "component"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "xmlWriter",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 335
    .local v1, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v1    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method private writeXmlComponent(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 2
    .param p1, "xmlWriter"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "component"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "xmlWriter",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getPluginType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlAttributes(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    goto :goto_2

    .line 318
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getPluginType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlAttributes(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 320
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 321
    .local v1, "subComponent":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    invoke-direct {p0, p1, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlComponent(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 322
    .end local v1    # "subComponent":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 326
    :cond_3
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 331
    :goto_2
    return-void
.end method

.method private writeXmlConfiguration(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 4
    .param p1, "xmlWriter"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "xmlWriter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 266
    const-string v0, "Configuration"

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    const-string v1, "name"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->verbosity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 274
    const-string v1, "verbose"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->destination:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 277
    const-string v1, "dest"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->packages:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 280
    const-string v1, "packages"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownFlag:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 283
    const-string v1, "shutdownHook"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_5
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 286
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdownTimeout"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_6
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->advertiser:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 289
    const-string v1, "advertiser"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_7
    iget v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->monitorInterval:I

    if-lez v0, :cond_8

    .line 292
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "monitorInterval"

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_8
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->properties:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 296
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->scripts:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 297
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->customLevels:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 298
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 299
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlComponent(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    goto :goto_0

    .line 300
    :cond_9
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_a

    .line 301
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 303
    :cond_a
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->appenders:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 304
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 306
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 307
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 308
    return-void
.end method

.method private writeXmlSection(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 1
    .param p1, "xmlWriter"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "component"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "xmlWriter",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlComponent(Ljavax/xml/stream/XMLStreamWriter;Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 314
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->appenders:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 2
    .param p1, "parent"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parent",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/Component;",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    .local p2, "builder":Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;, "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<*>;"
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->build()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->customLevels:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->filters:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 4
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    .line 166
    .local v1, "c":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getPluginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    .end local v1    # "c":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    goto :goto_0

    .line 167
    .restart local v1    # "c":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    const-string v2, "Root Logger was previously defined"

    invoke-direct {v0, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local v1    # "c":Lorg/apache/logging/log4j/core/config/builder/api/Component;
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggers:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->scripts:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->scripts:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->add(Lorg/apache/logging/log4j/core/config/builder/api/Component;Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->properties:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const-string v1, "Property"

    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->newComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;->build()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->addComponent(Lorg/apache/logging/log4j/core/config/builder/api/Component;)V

    .line 176
    return-object p0
.end method

.method public addRootProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->build()Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Z)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "initialize"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->build(Z)Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public build()Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->build(Z)Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build(Z)Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;
    .locals 7
    .param p1, "initialize"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->NULL_SOURCE:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->clazz:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/apache/logging/log4j/core/LoggerContext;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lorg/apache/logging/log4j/core/config/builder/api/Component;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 192
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;

    .line 193
    .local v1, "configuration":Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;, "TT;"
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getRootNode()Lorg/apache/logging/log4j/core/config/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->root:Lorg/apache/logging/log4j/core/config/builder/api/Component;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/builder/api/Component;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->setName(Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getStatusConfiguration()Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    .line 200
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->verbosity:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getStatusConfiguration()Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->verbosity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    .line 203
    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->destination:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 204
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getStatusConfiguration()Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->destination:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    .line 206
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->packages:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 207
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->packages:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->setPluginPackages(Ljava/lang/String;)V

    .line 209
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownFlag:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 210
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->setShutdownHook(Ljava/lang/String;)V

    .line 212
    :cond_6
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownTimeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 213
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->setShutdownTimeoutMillis(J)V

    .line 215
    :cond_7
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->advertiser:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 216
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->advertiser:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 218
    :cond_8
    iget v2, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->monitorInterval:I

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->setMonitorInterval(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    nop

    .line 222
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->getStatusConfiguration()Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialize()V

    .line 223
    if-eqz p1, :cond_9

    .line 224
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;->initialize()V

    .line 226
    :cond_9
    return-object v1

    .line 219
    .end local v1    # "configuration":Lorg/apache/logging/log4j/core/config/builder/impl/BuiltConfiguration;, "TT;"
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Configuration class specified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newAppender(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAppenderRef(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/AppenderRefComponentBuilder;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ref"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultAppenderRefComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const/4 v1, 0x0

    const-string v2, "AsyncLogger"

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "level"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const-string v1, "AsyncLogger"

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v6, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const-string v4, "AsyncLogger"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public newAsyncLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "level"
        }
    .end annotation

    .line 377
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncLogger"

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v6, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncLogger"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public newAsyncLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "includeLocation"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v6, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const/4 v3, 0x0

    const-string v4, "AsyncLogger"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public newAsyncRootLogger()Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2

    .line 397
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const-string v1, "AsyncRoot"

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 417
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const-string v1, "AsyncRoot"

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const-string v1, "AsyncRoot"

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newAsyncRootLogger(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 407
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncRoot"

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newAsyncRootLogger(Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsyncRoot"

    invoke-direct {v0, p0, v1, v2, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newAsyncRootLogger(Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 3
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeLocation"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const/4 v1, 0x0

    const-string v2, "AsyncRoot"

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newComponent(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newComponent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ComponentBuilder<",
            "TB;>;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newCustomLevel(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/builder/api/CustomLevelComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "level"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCustomLevelComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultCustomLevelComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;I)V

    return-object v0
.end method

.method public newFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "onMatch"    # Ljava/lang/String;
    .param p3, "onMismatch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultFilterComponentBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultFilterComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFilter(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/config/builder/api/FilterComponentBuilder;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p3, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultFilterComponentBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/Filter$Result;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/Filter$Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultFilterComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newKeyValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/KeyValuePairComponentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 449
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultKeyValuePairComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultKeyValuePairComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newLayout(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LayoutComponentBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLayoutComponentBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLayoutComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "level"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation

    .line 500
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "level"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "level",
            "includeLocation"
        }
    .end annotation

    .line 490
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/LoggerComponentBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "includeLocation"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/PropertyComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 444
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultPropertyComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultPropertyComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newRootLogger()Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2

    .line 505
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newRootLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 525
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newRootLogger(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newRootLogger(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public newRootLogger(Lorg/apache/logging/log4j/Level;Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "includeLocation"
        }
    .end annotation

    .line 520
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newRootLogger(Z)Lorg/apache/logging/log4j/core/config/builder/api/RootLoggerComponentBuilder;
    .locals 2
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeLocation"
        }
    .end annotation

    .line 510
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultRootLoggerComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "language",
            "text"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptComponentBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newScriptFile(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    invoke-direct {v0, p0, p1, p1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newScriptFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ScriptFileComponentBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "path"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultScriptFileComponentBuilder;-><init>(Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAdvertiser(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "advertiser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertiser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->advertiser:Ljava/lang/String;

    .line 536
    return-object p0
.end method

.method public setConfigurationName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->name:Ljava/lang/String;

    .line 548
    return-object p0
.end method

.method public setConfigurationSource(Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "configurationSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configurationSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/ConfigurationSource;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->source:Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    .line 560
    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->destination:Ljava/lang/String;

    .line 602
    return-object p0
.end method

.method public setLoggerContext(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 0
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerContext"
        }
    .end annotation

    .line 607
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->loggerContext:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 608
    return-void
.end method

.method public setMonitorInterval(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 1
    .param p1, "intervalSeconds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intervalSeconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->monitorInterval:I

    .line 566
    return-object p0
.end method

.method public setPackages(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "packages"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->packages:Ljava/lang/String;

    .line 572
    return-object p0
.end method

.method public setShutdownHook(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 577
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownFlag:Ljava/lang/String;

    .line 578
    return-object p0
.end method

.method public setShutdownTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 583
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->shutdownTimeoutMillis:J

    .line 584
    return-object p0
.end method

.method public setStatusLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Level;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->level:Lorg/apache/logging/log4j/Level;

    .line 590
    return-object p0
.end method

.method public setVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder;
    .locals 0
    .param p1, "verbosity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "verbosity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/builder/api/ConfigurationBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->verbosity:Ljava/lang/String;

    .line 596
    return-object p0
.end method

.method public toXmlConfiguration()Ljava/lang/String;
    .locals 3

    .line 252
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 254
    .local v0, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 255
    .local v1, "xmlWriter":Ljavax/xml/stream/XMLStreamWriter;
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlConfiguration(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 256
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    .line 257
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 258
    .end local v1    # "xmlWriter":Ljavax/xml/stream/XMLStreamWriter;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Throwables;->rethrow(Ljava/lang/Throwable;)V

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeXmlConfiguration(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;, "Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder<TT;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 240
    .local v0, "xmlWriter":Ljavax/xml/stream/XMLStreamWriter;
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/builder/impl/DefaultConfigurationBuilder;->writeXmlConfiguration(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 241
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "xmlWriter":Ljavax/xml/stream/XMLStreamWriter;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 246
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Throwables;->rethrow(Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :goto_0
    return-void

    .line 244
    .restart local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method
