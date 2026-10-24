.class Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;
.super Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.source "ConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# static fields
.field private static final ALL_TYPES:Ljava/lang/String; = "*"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/ConfigurationFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/ConfigurationFactory$1;

    .line 385
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;-><init>()V

    return-void
.end method

.method private getConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 8
    .param p1, "requiredVersion"    # Ljava/lang/String;
    .param p2, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p3, "configLocationStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "requiredVersion",
            "loggerContext",
            "configLocationStr"
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :try_start_0
    invoke-static {p3}, Lorg/apache/logging/log4j/core/util/NetUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromUri(Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 511
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 510
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v3, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->catching(Lorg/apache/logging/log4j/Level;Ljava/lang/Throwable;)V

    .line 512
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 514
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p0, p3, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getInputFromString(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v0

    .line 516
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    if-eqz v0, :cond_5

    .line 517
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getFactories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 518
    .local v2, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 519
    goto :goto_1

    .line 521
    :cond_1
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "types":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 523
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 524
    .local v6, "type":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 525
    :cond_2
    invoke-virtual {v2, p2, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v7

    .line 526
    .local v7, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v7, :cond_3

    .line 527
    return-object v7

    .line 523
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 532
    .end local v2    # "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .end local v3    # "types":[Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 534
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "configLocationStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "configLocationStr"
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;ZLjava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 11
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "isTest"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "isTest",
            "name"
        }
    .end annotation

    .line 538
    invoke-static {p3}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 539
    .local v0, "named":Z
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 540
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getFactories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 542
    .local v3, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getTestPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getDefaultPrefix()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "types":[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 545
    goto :goto_0

    .line 548
    :cond_1
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 549
    .local v8, "suffix":Ljava/lang/String;
    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 550
    goto :goto_4

    .line 552
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 554
    .local v9, "configName":Ljava/lang/String;
    invoke-static {v9, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->fromResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/core/config/ConfigurationSource;

    move-result-object v10

    .line 555
    .local v10, "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    if-eqz v10, :cond_5

    .line 556
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 557
    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Found configuration file {} for inactive ConfigurationFactory {}"

    invoke-interface {v2, v7, v9, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 559
    :cond_4
    invoke-virtual {v3, p1, v10}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    return-object v2

    .line 548
    .end local v8    # "suffix":Ljava/lang/String;
    .end local v9    # "configName":Ljava/lang/String;
    .end local v10    # "source":Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 562
    .end local v3    # "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "types":[Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 563
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method private parseConfigLocations(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "configLocations"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configLocations"
        }
    .end annotation

    .line 619
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "uris":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 621
    return-object v0

    .line 624
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->parseConfigLocations(Ljava/net/URI;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "ex":Ljava/net/URISyntaxException;
    sget-object v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Error parsing URI {}"

    invoke-interface {v3, v4, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    .end local v1    # "ex":Ljava/net/URISyntaxException;
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    return-object v1
.end method

.method private parseConfigLocations(Ljava/net/URI;)[Ljava/lang/String;
    .locals 11
    .param p1, "configLocations"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configLocations"
        }
    .end annotation

    .line 597
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "uris":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_3

    .line 600
    aget-object v2, v0, v4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "pairs":[Ljava/lang/String;
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 603
    .local v6, "pair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 605
    .local v7, "idx":I
    const-string v8, "UTF-8"

    if-lez v7, :cond_0

    :try_start_0
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 609
    :catch_0
    move-exception v8

    goto :goto_2

    .line 605
    :cond_0
    move-object v9, v6

    .line 606
    .local v9, "key":Ljava/lang/String;
    :goto_1
    const-string v10, "override"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 607
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v9    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_3

    .line 610
    .local v8, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_2
    sget-object v9, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Invalid query parameter in {}"

    invoke-interface {v9, v10, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    .end local v6    # "pair":Ljava/lang/String;
    .end local v7    # "idx":I
    .end local v8    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 613
    :cond_2
    sget-object v3, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 615
    .end local v2    # "pairs":[Ljava/lang/String;
    :cond_3
    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    return-object v2
.end method


# virtual methods
.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 16
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configLocation"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "name",
            "configLocation"
        }
    .end annotation

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "*"

    const-string v5, "Failed to created configuration at {}"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_a

    .line 399
    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v10

    .line 400
    const-string v11, "log4j.configurationFile"

    invoke-virtual {v10, v11}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 399
    invoke-virtual {v9, v10}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "configLocationStr":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 402
    invoke-direct {v0, v9}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->parseConfigLocations(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "sources":[Ljava/lang/String;
    array-length v10, v4

    if-le v10, v8, :cond_4

    .line 404
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v10, "configs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    array-length v11, v4

    move v12, v7

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v13, v4, v12

    .line 406
    .local v13, "sourceLocation":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v14}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v14

    .line 407
    .local v14, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v14, :cond_1

    .line 408
    instance-of v15, v14, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    if-eqz v15, :cond_0

    .line 409
    move-object v15, v14

    check-cast v15, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    :cond_0
    sget-object v7, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7, v5, v13}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    return-object v6

    .line 415
    :cond_1
    sget-object v15, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Unable to create configuration for {}, ignoring"

    invoke-interface {v15, v6, v13}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    .end local v13    # "sourceLocation":Ljava/lang/String;
    .end local v14    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 418
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 419
    new-instance v5, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;

    invoke-direct {v5, v10}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;-><init>(Ljava/util/List;)V

    return-object v5

    .line 420
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 421
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v5

    .line 424
    .end local v10    # "configs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    :cond_4
    invoke-direct {v0, v1, v9}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v5

    return-object v5

    .line 426
    .end local v4    # "sources":[Ljava/lang/String;
    :cond_5
    iget-object v5, v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v6

    .line 427
    const-string v10, "log4j.configuration"

    invoke-virtual {v6, v10}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-virtual {v5, v6}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "log4j1ConfigStr":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 429
    const-string v4, "log4j1.compatibility"

    const-string v6, "true"

    invoke-static {v4, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    const-string v4, "1"

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Ljava/lang/String;Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    return-object v4

    .line 432
    :cond_6
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getFactories()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 433
    .local v10, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 434
    .local v11, "types":[Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 435
    array-length v12, v11

    move v13, v7

    :goto_3
    if-ge v13, v12, :cond_8

    aget-object v14, v11, v13

    .line 436
    .local v14, "type":Ljava/lang/String;
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 437
    invoke-virtual {v10, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v15

    .line 438
    .local v15, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v15, :cond_7

    .line 439
    return-object v15

    .line 435
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 444
    .end local v10    # "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .end local v11    # "types":[Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 445
    .end local v5    # "log4j1ConfigStr":Ljava/lang/String;
    .end local v9    # "configLocationStr":Ljava/lang/String;
    :cond_9
    goto/16 :goto_7

    .line 446
    :cond_a
    invoke-direct {v0, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->parseConfigLocations(Ljava/net/URI;)[Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "sources":[Ljava/lang/String;
    array-length v9, v6

    if-le v9, v8, :cond_d

    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    array-length v8, v6

    :goto_4
    if-ge v7, v8, :cond_c

    aget-object v9, v6, v7

    .line 450
    .local v9, "sourceLocation":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v10

    .line 451
    .local v10, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    instance-of v11, v10, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    if-eqz v11, :cond_b

    .line 452
    move-object v11, v10

    check-cast v11, Lorg/apache/logging/log4j/core/config/AbstractConfiguration;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v9    # "sourceLocation":Ljava/lang/String;
    .end local v10    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 454
    .restart local v9    # "sourceLocation":Ljava/lang/String;
    .restart local v10    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_b
    sget-object v7, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7, v5, v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    const/4 v5, 0x0

    return-object v5

    .line 458
    .end local v9    # "sourceLocation":Ljava/lang/String;
    .end local v10    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_c
    new-instance v5, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;

    invoke-direct {v5, v4}, Lorg/apache/logging/log4j/core/config/composite/CompositeConfiguration;-><init>(Ljava/util/List;)V

    return-object v5

    .line 461
    .end local v4    # "configs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AbstractConfiguration;>;"
    :cond_d
    invoke-virtual/range {p3 .. p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "configLocationStr":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getFactories()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 463
    .local v10, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 464
    .restart local v11    # "types":[Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 465
    array-length v12, v11

    move v13, v7

    :goto_6
    if-ge v13, v12, :cond_10

    aget-object v14, v11, v13

    .line 466
    .restart local v14    # "type":Ljava/lang/String;
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v5, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 467
    :cond_e
    invoke-virtual {v10, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v15

    .line 468
    .restart local v15    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v15, :cond_f

    .line 469
    return-object v15

    .line 465
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "config":Lorg/apache/logging/log4j/core/config/Configuration;
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 474
    .end local v10    # "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .end local v11    # "types":[Ljava/lang/String;
    :cond_10
    goto :goto_5

    .line 477
    .end local v5    # "configLocationStr":Ljava/lang/String;
    .end local v6    # "sources":[Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-direct {v0, v1, v8, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;ZLjava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 478
    .local v4, "config":Lorg/apache/logging/log4j/core/config/Configuration;
    if-nez v4, :cond_12

    .line 479
    const/4 v5, 0x0

    invoke-direct {v0, v1, v8, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;ZLjava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 480
    if-nez v4, :cond_12

    .line 481
    invoke-direct {v0, v1, v7, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;ZLjava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 482
    if-nez v4, :cond_12

    .line 483
    invoke-direct {v0, v1, v7, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;ZLjava/lang/String;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 487
    :cond_12
    if-eqz v4, :cond_13

    .line 488
    return-object v4

    .line 490
    :cond_13
    sget-object v5, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "No Log4j 2 configuration file found. Using default configuration (logging only errors to the console), or user programmatically provided configurations. Set system property \'log4j2.debug\' to show Log4j 2 internal initialization logging. See https://logging.apache.org/log4j/2.x/manual/configuration.html for instructions on how to configure Log4j 2"

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 496
    new-instance v5, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    return-object v5
.end method

.method public getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 9
    .param p1, "loggerContext"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "source"    # Lorg/apache/logging/log4j/core/config/ConfigurationSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerContext",
            "source"
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 574
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/config/ConfigurationSource;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "config":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->getFactories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;

    .line 576
    .local v3, "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "types":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 578
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 579
    .local v7, "type":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    .line 578
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 580
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v3, p1, p2}, Lorg/apache/logging/log4j/core/config/ConfigurationFactory;->getConfiguration(Lorg/apache/logging/log4j/core/LoggerContext;Lorg/apache/logging/log4j/core/config/ConfigurationSource;)Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    .line 581
    .local v2, "c":Lorg/apache/logging/log4j/core/config/Configuration;
    if-eqz v2, :cond_2

    .line 582
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Loaded configuration from {}"

    invoke-interface {v0, v5, p2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    return-object v2

    .line 585
    :cond_2
    sget-object v5, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Cannot determine the ConfigurationFactory to use for {}"

    invoke-interface {v5, v6, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    return-object v0

    .line 590
    .end local v2    # "c":Lorg/apache/logging/log4j/core/config/Configuration;
    .end local v3    # "factory":Lorg/apache/logging/log4j/core/config/ConfigurationFactory;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 592
    .end local v1    # "config":Ljava/lang/String;
    :cond_4
    sget-object v1, Lorg/apache/logging/log4j/core/config/ConfigurationFactory$Factory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Cannot process configuration, input source is null"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 593
    return-object v0
.end method

.method public getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .line 568
    const/4 v0, 0x0

    return-object v0
.end method
