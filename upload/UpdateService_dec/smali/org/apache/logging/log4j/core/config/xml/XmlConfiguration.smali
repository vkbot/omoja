.class public Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
.super Lorg/apache/logging/log4j/core/config/AbstractConfiguration;
.source "XmlConfiguration.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/Reconfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;,
        Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;
    }
.end annotation


# static fields
.field private static final LOG4J_XSD:Ljava/lang/String; = "Log4j-config.xsd"

.field private static final VERBOSE_CLASSES:[Ljava/lang/String;

.field private static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field private static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"


# instance fields
.field private rootElement:Lorg/w3c/dom/Element;

.field private schemaResource:Ljava/lang/String;

.field private final status:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V
    .locals 17
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "configSource"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "configSource"
        }
    .end annotation

    .line 78
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->status:Ljava/util/List;

    .line 79
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getFile()Ljava/io/File;

    move-result-object v3

    .line 80
    .local v3, "configFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 83
    .local v4, "buffer":[B
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 85
    .local v5, "configStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v5}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 87
    :try_start_2
    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 88
    nop

    .line 89
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 90
    .local v6, "source":Lorg/xml/sax/InputSource;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 91
    const/4 v7, 0x1

    invoke-static {v7}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->newDocumentBuilder(Z)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v0

    .line 94
    .local v8, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v8, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    .local v0, "document":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 95
    .end local v0    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v10

    .line 98
    .local v10, "throwable":Ljava/lang/Throwable;
    instance-of v11, v10, Ljava/lang/UnsupportedOperationException;

    if-eqz v11, :cond_d

    .line 99
    sget-object v11, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v12, "The DocumentBuilder {} does not support an operation: {}.Trying again without XInclude..."

    invoke-interface {v11, v12, v8, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-static {v9}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->newDocumentBuilder(Z)Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v11

    move-object v0, v11

    .line 108
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .local v0, "document":Lorg/w3c/dom/Document;
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    iput-object v10, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;

    .line 109
    iget-object v10, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v11, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;

    invoke-direct {v1, v10, v11}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object v10

    .line 110
    .local v10, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    invoke-direct {v11}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;-><init>()V

    sget-object v12, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->VERBOSE_CLASSES:[Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerboseClasses([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v11

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getDefaultStatus()Lorg/apache/logging/log4j/Level;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-result-object v11

    .line 112
    .local v11, "statusConfig":Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    const/4 v12, 0x0

    .line 113
    .local v12, "monitorIntervalSeconds":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 114
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 115
    .local v15, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "value":Ljava/lang/String;
    const-string v9, "status"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    invoke-virtual {v11, v7}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withStatus(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-object/from16 v16, v8

    goto/16 :goto_3

    .line 118
    :cond_0
    const-string v9, "dest"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    invoke-virtual {v11, v7}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withDestination(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    move-object/from16 v16, v8

    goto/16 :goto_3

    .line 120
    :cond_1
    const-string v9, "shutdownHook"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    const-string v9, "disable"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->isShutdownHookEnabled:Z

    move-object/from16 v16, v8

    goto/16 :goto_3

    .line 122
    :cond_3
    const-string v9, "shutdownTimeout"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 123
    move-object/from16 v16, v8

    .end local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v16, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->shutdownTimeoutMillis:J

    goto/16 :goto_3

    .line 124
    .end local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_4
    move-object/from16 v16, v8

    .end local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const-string v8, "verbose"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 125
    invoke-virtual {v11, v7}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->withVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;

    goto :goto_3

    .line 126
    :cond_5
    const-string v8, "packages"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    iget-object v8, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->pluginPackages:Ljava/util/List;

    sget-object v9, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 128
    :cond_6
    const-string v8, "name"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 129
    invoke-virtual {v1, v7}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :cond_7
    const-string v8, "strict"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 131
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->strict:Z

    goto :goto_3

    .line 132
    :cond_8
    const-string v8, "schema"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 133
    iput-object v7, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->schemaResource:Ljava/lang/String;

    goto :goto_3

    .line 134
    :cond_9
    const-string v8, "monitorInterval"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 135
    invoke-static {v7}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v12, v8

    .end local v12    # "monitorIntervalSeconds":I
    .local v8, "monitorIntervalSeconds":I
    goto :goto_3

    .line 136
    .end local v8    # "monitorIntervalSeconds":I
    .restart local v12    # "monitorIntervalSeconds":I
    :cond_a
    const-string v8, "advertiser"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 137
    const-string v8, "text/xml"

    invoke-virtual {v1, v7, v2, v4, v8}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->createAdvertiser(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/ConfigurationSource;[BLjava/lang/String;)V

    .line 139
    .end local v7    # "value":Ljava/lang/String;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "key":Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v8, v16

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 140
    .end local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_c
    move-object/from16 v16, v8

    .end local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v1, v2, v12}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->initializeWatchers(Lorg/apache/logging/log4j/core/config/Reconfigurable;Lorg/apache/logging/log4j/core/config/ConfigurationSource;I)V

    .line 141
    invoke-virtual {v11}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;->initialize()V

    .line 144
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "configStream":Ljava/io/InputStream;
    .end local v6    # "source":Lorg/xml/sax/InputSource;
    .end local v10    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "statusConfig":Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
    .end local v12    # "monitorIntervalSeconds":I
    .end local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_4

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "configStream":Ljava/io/InputStream;
    .restart local v6    # "source":Lorg/xml/sax/InputSource;
    .restart local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .local v10, "throwable":Ljava/lang/Throwable;
    :cond_d
    move-object/from16 v16, v8

    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local v8    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .restart local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    throw v0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "source":Lorg/xml/sax/InputSource;
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .end local v16    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    throw v6
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    .end local v5    # "configStream":Ljava/io/InputStream;
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-boolean v0, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->strict:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->schemaResource:Ljava/lang/String;

    if-eqz v0, :cond_11

    if-eqz v4, :cond_11

    .line 146
    :try_start_5
    const-class v5, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/apache/logging/log4j/core/util/Loader;->getResourceAsStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v5, v0

    .line 147
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_f

    .line 148
    :try_start_6
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    const-string v6, "Log4j-config.xsd"

    invoke-direct {v0, v5, v6}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v6, v0

    .line 149
    .local v6, "src":Ljavax/xml/transform/Source;
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v7, v0

    .line 150
    .local v7, "factory":Ljavax/xml/validation/SchemaFactory;
    const/4 v8, 0x0

    .line 152
    .local v8, "schema":Ljavax/xml/validation/Schema;
    :try_start_7
    invoke-virtual {v7, v6}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v8, v0

    .line 155
    goto :goto_5

    .line 153
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 154
    .local v0, "ex":Lorg/xml/sax/SAXException;
    :try_start_8
    sget-object v9, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Error parsing Log4j schema"

    invoke-interface {v9, v10, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :goto_5
    if-eqz v8, :cond_f

    .line 157
    invoke-virtual {v8}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v9, v0

    .line 159
    .local v9, "validator":Ljavax/xml/validation/Validator;
    :try_start_9
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v10}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v0}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 162
    :catch_3
    move-exception v0

    .line 163
    .restart local v0    # "ex":Lorg/xml/sax/SAXException;
    :try_start_a
    sget-object v10, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v11, "Error validating configuration"

    invoke-interface {v10, v11, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 160
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v0

    .line 161
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v10, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v11, "Error reading configuration for validation"

    invoke-interface {v10, v11, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 164
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_6
    goto :goto_8

    .line 146
    .end local v6    # "src":Ljavax/xml/transform/Source;
    .end local v7    # "factory":Ljavax/xml/validation/SchemaFactory;
    .end local v8    # "schema":Ljavax/xml/validation/Schema;
    .end local v9    # "validator":Ljavax/xml/validation/Validator;
    :catchall_1
    move-exception v0

    move-object v6, v0

    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 167
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :catchall_2
    move-exception v0

    move-object v7, v0

    if-eqz v5, :cond_e

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_d
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .end local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .end local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_e
    :goto_7
    throw v7

    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    .restart local p1    # "loggerContext":Lorg/apache/logging/log4j/core/LoggerContext;
    .restart local p2    # "configSource":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 169
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_10
    goto :goto_9

    .line 167
    :catch_5
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v6, v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->schemaResource:Ljava/lang/String;

    const-string v7, "Unable to access schema {}"

    invoke-interface {v5, v7, v6, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_11
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 173
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->setName(Ljava/lang/String;)V

    .line 175
    :cond_12
    return-void
.end method

.method private constructHierarchy(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)V
    .locals 13
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node",
            "element"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)Ljava/util/Map;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 286
    .local v1, "list":Lorg/w3c/dom/NodeList;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 288
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 289
    .local v4, "w3cNode":Lorg/w3c/dom/Node;
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    .line 290
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    .line 291
    .local v5, "child":Lorg/w3c/dom/Element;
    invoke-direct {p0, v5}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getType(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->pluginManager:Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    invoke-virtual {v7, v6}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPluginType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v7

    .line 293
    .local v7, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    new-instance v8, Lorg/apache/logging/log4j/core/config/Node;

    invoke-direct {v8, p1, v6, v7}, Lorg/apache/logging/log4j/core/config/Node;-><init>(Lorg/apache/logging/log4j/core/config/Node;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V

    .line 294
    .local v8, "childNode":Lorg/apache/logging/log4j/core/config/Node;
    invoke-direct {p0, v8, v5}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->constructHierarchy(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)V

    .line 295
    if-nez v7, :cond_1

    .line 296
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/config/Node;->hasChildren()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v9, :cond_0

    .line 298
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 300
    :cond_0
    iget-object v10, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->status:Ljava/util/List;

    new-instance v11, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;

    sget-object v12, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;->CLASS_NOT_FOUND:Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

    invoke-direct {v11, v6, p2, v12}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v9    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 303
    :cond_1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    .end local v5    # "child":Lorg/w3c/dom/Element;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    .end local v8    # "childNode":Lorg/apache/logging/log4j/core/config/Node;
    :cond_2
    instance-of v5, v4, Lorg/w3c/dom/Text;

    if-eqz v5, :cond_3

    .line 306
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Text;

    .line 307
    .local v5, "data":Lorg/w3c/dom/Text;
    invoke-interface {v5}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 305
    .end local v5    # "data":Lorg/w3c/dom/Text;
    :cond_3
    :goto_2
    nop

    .line 287
    .end local v4    # "w3cNode":Lorg/w3c/dom/Node;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->isRoot()Z

    move-result v4

    if-nez v4, :cond_6

    .line 313
    :cond_5
    invoke-virtual {p1, v3}, Lorg/apache/logging/log4j/core/config/Node;->setValue(Ljava/lang/String;)V

    .line 315
    :cond_6
    return-void
.end method

.method private static disableDtdProcessing(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 2
    .param p0, "factory"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 198
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 199
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    invoke-static {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->setFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 200
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-static {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->setFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 201
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->setFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method private static enableXInclude(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 8
    .param p0, "factory"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 222
    const-string v0, "http://apache.org/xml/features/xinclude/fixup-language"

    const-string v1, "The DocumentBuilderFactory [{}] is out of date and does not support setFeature: {}"

    const-string v2, "The DocumentBuilderFactory [{}] does not support the feature [{}]: {}"

    const-string v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    goto :goto_1

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .local v5, "err":Ljava/lang/IncompatibleClassChangeError;
    sget-object v6, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "The DocumentBuilderFactory [{}] is out of date and does not support XInclude: {}"

    invoke-interface {v6, v7, p0, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 223
    .end local v5    # "err":Ljava/lang/IncompatibleClassChangeError;
    :catch_1
    move-exception v5

    .line 224
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v6, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "The DocumentBuilderFactory [{}] does not support XInclude: {}"

    invoke-interface {v6, v7, p0, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 232
    :goto_1
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 236
    :catch_2
    move-exception v3

    .line 237
    .local v3, "err":Ljava/lang/AbstractMethodError;
    sget-object v5, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5, v1, p0, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 233
    .end local v3    # "err":Ljava/lang/AbstractMethodError;
    :catch_3
    move-exception v5

    .line 234
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v6, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6, v2, p0, v3, v5}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    nop

    .line 241
    :goto_3
    :try_start_2
    invoke-virtual {p0, v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    .line 245
    :catch_4
    move-exception v0

    .line 246
    .local v0, "err":Ljava/lang/AbstractMethodError;
    sget-object v2, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, p0, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 242
    .end local v0    # "err":Ljava/lang/AbstractMethodError;
    :catch_5
    move-exception v1

    .line 243
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v3, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3, v2, p0, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    nop

    .line 249
    :goto_5
    return-void
.end method

.method private getType(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "element"
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->strict:Z

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 320
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 321
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 322
    .local v2, "w3cNode":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Attr;

    if-eqz v3, :cond_0

    .line 323
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Attr;

    .line 324
    .local v3, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "type":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 327
    return-object v4

    .line 320
    .end local v2    # "w3cNode":Lorg/w3c/dom/Node;
    .end local v3    # "attr":Lorg/w3c/dom/Attr;
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static newDocumentBuilder(Z)Ljavax/xml/parsers/DocumentBuilder;
    .locals 2
    .param p0, "xIncludeAware"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "xIncludeAware"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 185
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 186
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 188
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->disableDtdProcessing(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 190
    if-eqz p0, :cond_0

    .line 191
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->enableXInclude(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    return-object v1
.end method

.method private processAttributes(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)Ljava/util/Map;
    .locals 7
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "node",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Node;",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 337
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 339
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 340
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 341
    .local v3, "w3cNode":Lorg/w3c/dom/Node;
    instance-of v4, v3, Lorg/w3c/dom/Attr;

    if-eqz v4, :cond_1

    .line 342
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Attr;

    .line 343
    .local v4, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml:base"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    goto :goto_1

    .line 346
    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v3    # "w3cNode":Lorg/w3c/dom/Node;
    .end local v4    # "attr":Lorg/w3c/dom/Attr;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static setFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "factory"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "factory",
            "featureName",
            "value"
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 208
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getStatusLogger()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    .line 209
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 208
    const-string v2, "Caught {} setting feature {} to {} on DocumentBuilderFactory {}: {}"

    move-object v4, p1

    move-object v6, p0

    move-object v8, v7

    invoke-interface/range {v1 .. v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public reconfigure()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 5

    .line 270
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->resetInputStream()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    .line 271
    .local v1, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-nez v1, :cond_0

    .line 272
    return-object v0

    .line 274
    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)V

    .line 275
    .local v2, "config":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    iget-object v3, v2, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0

    .line 276
    .end local v1    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .end local v2    # "config":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v3

    const-string v4, "Cannot locate file {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .end local v1    # "ex":Ljava/io/IOException;
    return-object v0
.end method

.method public setup()V
    .locals 7

    .line 253
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No logging configuration"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 255
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootNode:Lorg/apache/logging/log4j/core/config/Node;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->constructHierarchy(Lorg/apache/logging/log4j/core/config/Node;Lorg/w3c/dom/Element;)V

    .line 258
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->status:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 259
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->status:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;

    .line 260
    .local v1, "s":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;
    sget-object v2, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->access$000(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->access$100(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;->access$200(Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;)Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$ErrorType;

    move-result-object v5

    const-string v6, "Error processing element {} ({}): {}"

    invoke-interface {v2, v6, v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .end local v1    # "s":Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration$Status;
    goto :goto_0

    .line 262
    :cond_1
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->rootElement:Lorg/w3c/dom/Element;

    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/xml/XmlConfiguration;->getConfigurationSource()Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
