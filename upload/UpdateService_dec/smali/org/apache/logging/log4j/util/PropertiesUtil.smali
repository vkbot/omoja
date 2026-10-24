.class public final Lorg/apache/logging/log4j/util/PropertiesUtil;
.super Ljava/lang/Object;
.source "PropertiesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;,
        Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;
    }
.end annotation


# static fields
.field private static final LOG4J_PROPERTIES:Lorg/apache/logging/log4j/util/PropertiesUtil;

.field private static final LOG4J_PROPERTIES_FILE_NAME:Ljava/lang/String; = "log4j2.component.properties"

.field private static final LOG4J_SYSTEM_PROPERTIES_FILE_NAME:Ljava/lang/String; = "log4j2.system.properties"


# instance fields
.field private final environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.component.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil;->LOG4J_PROPERTIES:Lorg/apache/logging/log4j/util/PropertiesUtil;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "propertiesFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertiesFileName"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    new-instance v1, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;-><init>(Lorg/apache/logging/log4j/util/PropertySource;Lorg/apache/logging/log4j/util/PropertiesUtil$1;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil;->environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "props"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    new-instance v1, Lorg/apache/logging/log4j/util/PropertiesPropertySource;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/util/PropertiesPropertySource;-><init>(Ljava/util/Properties;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;-><init>(Lorg/apache/logging/log4j/util/PropertySource;Lorg/apache/logging/log4j/util/PropertiesUtil$1;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil;->environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    .line 64
    return-void
.end method

.method public static extractSubset(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "properties",
            "prefix"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 518
    .local v0, "subset":Ljava/util/Properties;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 522
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 524
    .local v1, "prefixToMatch":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 527
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 528
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 532
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 533
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2

    .line 536
    :cond_4
    return-object v0

    .line 519
    .end local v1    # "prefixToMatch":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    return-object v0
.end method

.method static getCharsetsResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    .line 540
    const-string v0, "Log4j-charsets"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;
    .locals 1

    .line 107
    sget-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil;->LOG4J_PROPERTIES:Lorg/apache/logging/log4j/util/PropertiesUtil;

    return-object v0
.end method

.method public static getSystemProperties()Ljava/util/Properties;
    .locals 2

    .line 389
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "Unable to access system properties."

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    return-object v1
.end method

.method static loadClose(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/util/Properties;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "in",
            "source"
        }
    .end annotation

    .line 84
    const-string v0, "Unable to close "

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 85
    .local v1, "props":Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_0
    goto :goto_4

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 91
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 88
    :catch_1
    move-exception v2

    .line 89
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v2

    .line 94
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 95
    goto :goto_3

    .line 93
    :catch_3
    move-exception v3

    .line 94
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    throw v2

    .line 98
    :cond_0
    :goto_4
    return-object v1
.end method

.method public static partitionOnCommonPrefixes(Ljava/util/Properties;)Ljava/util/Map;
    .locals 1
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->partitionOnCommonPrefixes(Ljava/util/Properties;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static partitionOnCommonPrefixes(Ljava/util/Properties;Z)Ljava/util/Map;
    .locals 8
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "includeBaseKey"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "properties",
            "includeBaseKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 567
    .local v0, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 568
    .local v2, "key":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 569
    .local v3, "idx":I
    if-gez v3, :cond_2

    .line 570
    if-eqz p1, :cond_0

    .line 571
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 572
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 578
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "prefix":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 580
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 583
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "idx":I
    .end local v4    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 584
    :cond_4
    return-object v0
.end method


# virtual methods
.method public getBooleanProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "prefixes",
            "key",
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 169
    .local p3, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Ljava/lang/Boolean;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 170
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 169
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
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

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public getBooleanProperty(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValueIfAbsent"    # Z
    .param p3, "defaultValueIfPresent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValueIfAbsent",
            "defaultValueIfPresent"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 155
    :goto_0
    return v1
.end method

.method public getCharsetProperty(Ljava/lang/String;)Ljava/nio/charset/Charset;
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

    .line 184
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getCharsetProperty(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetProperty(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "charsetName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    return-object p2

    .line 200
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1

    .line 203
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getCharsetsResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    .line 204
    .local v1, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "mapped":Ljava/lang/String;
    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    return-object v3

    .line 210
    .end local v2    # "mapped":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get Charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', using default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and continuing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->log(Ljava/lang/String;)V

    .line 212
    return-object p2
.end method

.method public getDoubleProperty(Ljava/lang/String;D)D
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 227
    :catch_0
    move-exception v1

    .line 230
    :cond_0
    return-wide p2
.end method

.method public getDurationProperty(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->getDuration(Ljava/lang/String;)Ljava/time/Duration;

    move-result-object v1

    return-object v1

    .line 320
    :cond_0
    return-object p2
.end method

.method public getDurationProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/time/Duration;
    .locals 5
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "prefixes",
            "key",
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Ljava/time/Duration;",
            ">;)",
            "Ljava/time/Duration;"
        }
    .end annotation

    .line 333
    .local p3, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Ljava/time/Duration;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 334
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getDurationProperty(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 333
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/time/Duration;

    :cond_2
    return-object v2
.end method

.method public getIntegerProperty(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 246
    :catch_0
    move-exception v1

    .line 250
    :cond_0
    return p2
.end method

.method public getIntegerProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Integer;
    .locals 5
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "prefixes",
            "key",
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 263
    .local p3, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Ljava/lang/Integer;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 264
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 263
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getLongProperty(Ljava/lang/String;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 283
    :catch_0
    move-exception v1

    .line 286
    :cond_0
    return-wide p2
.end method

.method public getLongProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Long;
    .locals 5
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "prefixes",
            "key",
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 299
    .local p3, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Ljava/lang/Long;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 300
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 299
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
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

    .line 367
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil;->environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->access$200(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultValue"
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getStringProperty([Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/String;
    .locals 4
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "prefixes",
            "key",
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 351
    .local p3, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Ljava/lang/String;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 352
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 354
    return-object v3

    .line 351
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
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

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil;->environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->access$100(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOsWindows()Z
    .locals 2

    .line 593
    const-string v0, "os.name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil;->environment:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->access$300(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;)V

    .line 404
    return-void
.end method
