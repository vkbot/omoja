.class public final Lorg/apache/logging/log4j/core/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x20

.field private static final DECIMAL:I = 0xa

.field static final DISABLE_ANSI:Ljava/lang/String; = "disableAnsi"

.field private static final ESCAPE_CHAR:C = '%'

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field static final NO_CONSOLE_NO_ANSI:Ljava/lang/String; = "noConsoleNoAnsi"


# instance fields
.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final converterRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "converterKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "converterKey"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "converterKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "converterKey",
            "expected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 113
    .local p3, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 16
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "converterKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "config",
            "converterKey",
            "expectedClass",
            "filterClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 129
    .local p3, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object v2, v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 131
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 132
    .local v5, "manager":Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;
    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getPluginPackages()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->collectPlugins(Ljava/util/List;)V

    .line 133
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;->getPlugins()Ljava/util/Map;

    move-result-object v6

    .line 134
    .local v6, "plugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    .line 136
    .local v7, "converters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 139
    .local v9, "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 141
    goto :goto_1

    .line 143
    :cond_1
    const-class v10, Lorg/apache/logging/log4j/core/pattern/ConverterKeys;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/pattern/ConverterKeys;

    .line 144
    .local v10, "keys":Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    if-eqz v10, :cond_3

    .line 145
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/pattern/ConverterKeys;->value()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 146
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 147
    sget-object v15, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Converter key \'{}\' is already mapped to \'{}\'. Sorry, Dave, I can\'t let you do that! Ignoring plugin [{}]."

    .line 149
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 147
    invoke-interface {v15, v2, v14, v3, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 151
    :cond_2
    invoke-interface {v7, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v14    # "key":Ljava/lang/String;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    goto :goto_2

    .line 157
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    .end local v10    # "keys":Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    :cond_3
    goto :goto_4

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing plugin "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "type":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    goto :goto_1

    .line 159
    :cond_4
    iput-object v7, v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;->converterRules:Ljava/util/Map;

    .line 160
    return-void
.end method

.method private static areValidNewInstanceParameters([Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 607
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 608
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 609
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[Ljava.lang.String;"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 610
    :cond_0
    return v1

    .line 607
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private createConverter(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/util/List;ZZ)Lorg/apache/logging/log4j/core/pattern/PatternConverter;
    .locals 18
    .param p1, "converterId"    # Ljava/lang/String;
    .param p2, "currentLiteral"    # Ljava/lang/StringBuilder;
    .param p5, "disableAnsi"    # Z
    .param p6, "noConsoleNoAnsi"    # Z
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
            "converterId",
            "currentLiteral",
            "rules",
            "options",
            "disableAnsi",
            "noConsoleNoAnsi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;"
        }
    .end annotation

    .line 522
    .local p3, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;>;"
    .local p4, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v0, p1

    .line 523
    .local v0, "converterName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 525
    .local v4, "converterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    const/16 v5, 0x5d

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 526
    sget-object v7, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null rules for ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 527
    return-object v6

    .line 529
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v17, v4

    move-object v4, v0

    move v0, v7

    move-object/from16 v7, v17

    .local v0, "i":I
    .local v4, "converterName":Ljava/lang/String;
    .local v7, "converterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    :goto_0
    const/4 v8, 0x0

    if-lez v0, :cond_1

    if-nez v7, :cond_1

    .line 530
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    .line 529
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 534
    .end local v0    # "i":I
    :cond_1
    if-nez v7, :cond_2

    .line 535
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized format specifier ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 536
    return-object v6

    .line 539
    :cond_2
    const-class v0, Lorg/apache/logging/log4j/core/pattern/AnsiConverter;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableAnsi="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "noConsoleNoAnsi="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    :cond_3
    move/from16 v5, p5

    move/from16 v9, p6

    .line 545
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 546
    .local v10, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 547
    .local v0, "newInstanceMethod":Ljava/lang/reflect/Method;
    array-length v11, v10

    move-object v12, v0

    move v0, v8

    .end local v0    # "newInstanceMethod":Ljava/lang/reflect/Method;
    .local v12, "newInstanceMethod":Ljava/lang/reflect/Method;
    :goto_2
    const-string v13, "Class "

    if-ge v0, v11, :cond_6

    aget-object v14, v10, v0

    .line 548
    .local v14, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 549
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 550
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v8, "newInstance"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 551
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->areValidNewInstanceParameters([Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 552
    if-nez v12, :cond_4

    .line 553
    move-object v8, v14

    move-object v12, v8

    .end local v12    # "newInstanceMethod":Ljava/lang/reflect/Method;
    .local v8, "newInstanceMethod":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 554
    .end local v8    # "newInstanceMethod":Ljava/lang/reflect/Method;
    .restart local v12    # "newInstanceMethod":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 555
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " cannot contain multiple static newInstance methods"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 556
    return-object v6

    .line 547
    .end local v14    # "method":Ljava/lang/reflect/Method;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 560
    :cond_6
    if-nez v12, :cond_7

    .line 561
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not contain a static newInstance method"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 562
    return-object v6

    .line 565
    :cond_7
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 566
    .local v8, "parmTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v8

    if-lez v0, :cond_8

    array-length v0, v8

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object v0, v6

    :goto_4
    move-object v11, v0

    .line 568
    .local v11, "parms":[Ljava/lang/Object;
    if-eqz v11, :cond_d

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "i":I
    const/4 v13, 0x0

    .line 571
    .local v13, "errors":Z
    array-length v14, v8

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_b

    aget-object v6, v8, v15

    .line 572
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "[Ljava.lang.String;"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 573
    sget-object v2, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 574
    .local v2, "optionsArray":[Ljava/lang/String;
    aput-object v2, v11, v0

    .line 575
    .end local v2    # "optionsArray":[Ljava/lang/String;
    move-object/from16 v2, p0

    goto :goto_6

    :cond_9
    const-class v2, Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 576
    move-object/from16 v2, p0

    iget-object v5, v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    aput-object v5, v11, v0

    goto :goto_6

    .line 578
    :cond_a
    move-object/from16 v2, p0

    sget-object v5, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parameter type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for static newInstance method of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-interface {v5, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x1

    move v13, v2

    .line 582
    :goto_6
    nop

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v0, v0, 0x1

    .line 571
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v5, p5

    const/4 v6, 0x0

    goto :goto_5

    .line 584
    :cond_b
    if-eqz v13, :cond_c

    .line 585
    const/4 v2, 0x0

    return-object v2

    .line 584
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 568
    .end local v0    # "i":I
    .end local v13    # "errors":Z
    :cond_d
    move-object v2, v6

    .line 590
    :goto_7
    :try_start_0
    invoke-virtual {v12, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    .local v0, "newObj":Ljava/lang/Object;
    instance-of v2, v0, Lorg/apache/logging/log4j/core/pattern/PatternConverter;

    if-eqz v2, :cond_e

    .line 593
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v3, p2

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 595
    move-object v2, v0

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternConverter;

    return-object v2

    .line 597
    :cond_e
    move-object/from16 v3, p2

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Class {} does not extend PatternConverter."

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    .end local v0    # "newObj":Ljava/lang/Object;
    goto :goto_9

    .line 598
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v3, p2

    .line 599
    .local v0, "ex":Ljava/lang/Exception;
    :goto_8
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating converter for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9
    const/4 v2, 0x0

    return-object v2
.end method

.method private static extractConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 2
    .param p0, "lastChar"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "convBuf"    # Ljava/lang/StringBuilder;
    .param p4, "currentLiteral"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "lastChar",
            "pattern",
            "start",
            "convBuf",
            "currentLiteral"
        }
    .end annotation

    .line 238
    move v0, p2

    .line 239
    .local v0, "i":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return v0
.end method

.method private static extractOptions(Ljava/lang/String;ILjava/util/List;)I
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "start",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 273
    .local p2, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p1

    .line 274
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_6

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    move v1, v0

    .line 277
    .local v1, "begin":I
    const/4 v3, 0x1

    .line 278
    .local v3, "depth":I
    :goto_1
    const/16 v4, 0x7d

    if-lez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 280
    .local v5, "c":C
    if-ne v5, v2, :cond_0

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 282
    :cond_0
    if-ne v5, v4, :cond_1

    .line 283
    add-int/lit8 v3, v3, -0x1

    .line 286
    :cond_1
    :goto_2
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 287
    goto :goto_1

    .line 289
    :cond_2
    if-lez v3, :cond_5

    .line 290
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 291
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-ge v0, p1, :cond_3

    goto :goto_3

    .line 296
    :cond_3
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 294
    :cond_4
    :goto_3
    return v1

    .line 299
    :cond_5
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v1    # "begin":I
    .end local v3    # "depth":I
    goto :goto_0

    .line 302
    :cond_6
    return v0
.end method

.method private finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZZZ)I
    .locals 17
    .param p1, "c"    # C
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "currentLiteral"    # Ljava/lang/StringBuilder;
    .param p5, "formattingInfo"    # Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .param p9, "disableAnsi"    # Z
    .param p10, "noConsoleNoAnsi"    # Z
    .param p11, "convertBackslashes"    # Z
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
            "c",
            "pattern",
            "start",
            "currentLiteral",
            "formattingInfo",
            "rules",
            "patternConverters",
            "formattingInfos",
            "disableAnsi",
            "noConsoleNoAnsi",
            "convertBackslashes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/pattern/FormattingInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/FormattingInfo;",
            ">;ZZZ)I"
        }
    .end annotation

    .line 648
    .local p6, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;>;"
    .local p7, "patternConverters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    .local p8, "formattingInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p11

    move/from16 v0, p3

    .line 649
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 650
    .local v13, "convBuf":Ljava/lang/StringBuilder;
    move/from16 v14, p1

    invoke-static {v14, v8, v0, v13, v9}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->extractConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 652
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 654
    .local v15, "converterId":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 655
    .local v6, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v8, v0, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->extractOptions(Ljava/lang/String;ILjava/util/List;)I

    move-result v5

    .line 657
    .end local v0    # "i":I
    .local v5, "i":I
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object v4, v6

    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    move/from16 v5, p9

    move-object/from16 v16, v6

    .end local v6    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->createConverter(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/util/List;ZZ)Lorg/apache/logging/log4j/core/pattern/PatternConverter;

    move-result-object v0

    .line 660
    .local v0, "pc":Lorg/apache/logging/log4j/core/pattern/PatternConverter;
    if-nez v0, :cond_1

    .line 663
    invoke-static {v15}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty conversion specifier starting at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, "msg":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 666
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized conversion specifier ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, "] starting at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    const-string v2, " in conversion pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v12}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->literalPattern(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    move-object/from16 v1, p5

    goto :goto_1

    .line 679
    :cond_1
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    move-object/from16 v1, p5

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 683
    nop

    .line 684
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v12}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->literalPattern(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 691
    return v8
.end method

.method private literalPattern(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .locals 2
    .param p1, "literal"    # Ljava/lang/String;
    .param p2, "convertBackslashes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "literal",
            "convertBackslashes"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;->containsSubstitutionSequence(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LiteralPatternConverter;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Z)V

    return-object v0

    .line 699
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->of(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "alwaysWriteExceptions"    # Z
    .param p3, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "alwaysWriteExceptions"    # Z
    .param p3, "disableAnsi"    # Z
    .param p4, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "alwaysWriteExceptions",
            "disableAnsi",
            "noConsoleNoAnsi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v3, "converters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZ)V

    .line 179
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 180
    .local v1, "fieldIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    const/4 v2, 0x0

    .line 182
    .local v2, "handlesThrowable":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/pattern/PatternConverter;

    .line 183
    .local v6, "converter":Lorg/apache/logging/log4j/core/pattern/PatternConverter;
    instance-of v7, v6, Lorg/apache/logging/log4j/core/pattern/NanoTimePatternConverter;

    if-eqz v7, :cond_0

    .line 186
    iget-object v7, p0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v7, :cond_0

    .line 187
    new-instance v8, Lorg/apache/logging/log4j/core/util/SystemNanoClock;

    invoke-direct {v8}, Lorg/apache/logging/log4j/core/util/SystemNanoClock;-><init>()V

    invoke-interface {v7, v8}, Lorg/apache/logging/log4j/core/config/Configuration;->setNanoClock(Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 191
    :cond_0
    instance-of v7, v6, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    if-eqz v7, :cond_1

    .line 192
    move-object v7, v6

    check-cast v7, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    .line 193
    .local v7, "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->handlesThrowable()Z

    move-result v8

    or-int/2addr v2, v8

    goto :goto_1

    .line 195
    .end local v7    # "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    :cond_1
    const-string v7, ""

    invoke-static {v7}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;->of(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v7

    .line 199
    .restart local v7    # "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    .local v8, "field":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    goto :goto_2

    .line 202
    .end local v8    # "field":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v8

    .line 204
    .restart local v8    # "field":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :goto_2
    new-instance v9, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-direct {v9, v7, v8}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;-><init>(Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v6    # "converter":Lorg/apache/logging/log4j/core/pattern/PatternConverter;
    .end local v7    # "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    .end local v8    # "field":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    goto :goto_0

    .line 206
    :cond_3
    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    .line 207
    iget-object v5, p0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;

    move-result-object v5

    .line 208
    .local v5, "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    new-instance v6, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;-><init>(Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v5    # "pc":Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
    :cond_4
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p4, "noConsoleNoAnsi"    # Z
    .param p5, "convertBackslashes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "patternConverters",
            "formattingInfos",
            "noConsoleNoAnsi",
            "convertBackslashes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/FormattingInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 322
    .local p2, "patternConverters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    .local p3, "formattingInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZ)V

    .line 323
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZ)V
    .locals 27
    .param p1, "pattern"    # Ljava/lang/String;
    .param p4, "disableAnsi"    # Z
    .param p5, "noConsoleNoAnsi"    # Z
    .param p6, "convertBackslashes"    # Z
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
            "pattern",
            "patternConverters",
            "formattingInfos",
            "disableAnsi",
            "noConsoleNoAnsi",
            "convertBackslashes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/FormattingInfo;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 344
    .local p2, "patternConverters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    .local p3, "formattingInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v11, p6

    const-string v0, "pattern"

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v0

    .line 348
    .local v10, "currentLiteral":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 349
    .local v9, "patternLength":I
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 351
    .local v0, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    const/4 v1, 0x0

    .line 352
    .local v1, "i":I
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 354
    .end local v0    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v16, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v17, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :goto_0
    if-ge v1, v9, :cond_12

    .line 355
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "i":I
    .local v8, "i":I
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 357
    .local v7, "c":C
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$1;->$SwitchMap$org$apache$logging$log4j$core$pattern$PatternParser$ParserState:[I

    invoke-virtual/range {v16 .. v16}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    move v5, v7

    move v1, v8

    move v0, v9

    move v6, v11

    move-object v4, v14

    move-object v3, v15

    move-object v15, v10

    goto/16 :goto_2

    .line 476
    :cond_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    if-lt v7, v5, :cond_1

    if-gt v7, v4, :cond_1

    .line 480
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v20

    .line 481
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    add-int/lit8 v21, v1, -0x30

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v23

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    move-object/from16 v17, v0

    move v5, v7

    move v1, v8

    move v0, v9

    move v6, v11

    move-object v4, v14

    move-object v3, v15

    move-object v15, v10

    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    goto/16 :goto_2

    .line 483
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_1
    iget-object v5, v12, Lorg/apache/logging/log4j/core/pattern/PatternParser;->converterRules:Ljava/util/Map;

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, p1

    move v3, v8

    move-object v4, v10

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move v15, v6

    move-object/from16 v6, v18

    move/from16 v24, v7

    .end local v7    # "c":C
    .local v24, "c":C
    move-object/from16 v7, p2

    move/from16 v25, v8

    .end local v8    # "i":I
    .local v25, "i":I
    move-object/from16 v8, p3

    move/from16 v26, v9

    .end local v9    # "patternLength":I
    .local v26, "patternLength":I
    move/from16 v9, p4

    move-object v15, v10

    .end local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .local v15, "currentLiteral":Ljava/lang/StringBuilder;
    move/from16 v10, p5

    move v14, v11

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZZZ)I

    move-result v0

    .line 485
    .end local v25    # "i":I
    .local v0, "i":I
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 486
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v1, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    .line 487
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v2, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v6, v14

    move/from16 v5, v24

    move v1, v0

    move/from16 v0, v26

    goto/16 :goto_2

    .line 452
    .end local v0    # "i":I
    .end local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .end local v2    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .end local v24    # "c":C
    .end local v26    # "patternLength":I
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v9    # "patternLength":I
    .restart local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_2
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move-object v15, v10

    move v14, v11

    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v9    # "patternLength":I
    .end local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v24    # "c":C
    .restart local v25    # "i":I
    .restart local v26    # "patternLength":I
    move/from16 v11, v24

    .end local v24    # "c":C
    .local v11, "c":C
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    if-eq v11, v3, :cond_4

    .line 461
    if-lt v11, v5, :cond_3

    if-gt v11, v4, :cond_3

    .line 462
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v20

    add-int/lit8 v21, v11, -0x30

    .line 463
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v23

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 464
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->MAX_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move v5, v11

    move v6, v14

    move/from16 v1, v25

    move/from16 v0, v26

    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    goto/16 :goto_2

    .line 466
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred in position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v25

    .end local v25    # "i":I
    .local v10, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 469
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 473
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v0, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v0

    move v1, v10

    move v5, v11

    move v6, v14

    move/from16 v0, v26

    goto/16 :goto_2

    .line 455
    .end local v0    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .end local v10    # "i":I
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v25    # "i":I
    :cond_4
    move/from16 v10, v25

    .end local v25    # "i":I
    .restart local v10    # "i":I
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v3

    .line 456
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 457
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v0

    move v1, v10

    move v5, v11

    move v6, v14

    move/from16 v0, v26

    goto/16 :goto_2

    .line 433
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v11    # "c":C
    .end local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .end local v26    # "patternLength":I
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v9    # "patternLength":I
    .local v10, "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_5
    move/from16 v26, v9

    move-object v15, v10

    move v14, v11

    move v11, v7

    move v10, v8

    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v9    # "patternLength":I
    .local v10, "i":I
    .restart local v11    # "c":C
    .restart local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v26    # "patternLength":I
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    if-lt v11, v5, :cond_6

    if-gt v11, v4, :cond_6

    .line 437
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v11

    add-int/lit8 v3, v1, -0x30

    .line 438
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v0

    move v1, v10

    move v5, v11

    move v6, v14

    move/from16 v0, v26

    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    goto/16 :goto_2

    .line 439
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_6
    if-ne v11, v2, :cond_7

    .line 440
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->DOT_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v0

    move v1, v10

    move v5, v11

    move v6, v14

    move/from16 v0, v26

    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v0, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    goto/16 :goto_2

    .line 442
    .end local v0    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    :cond_7
    iget-object v6, v12, Lorg/apache/logging/log4j/core/pattern/PatternParser;->converterRules:Ljava/util/Map;

    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v2, p1

    move v3, v10

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v25, v10

    .end local v10    # "i":I
    .restart local v25    # "i":I
    move/from16 v10, p5

    move v14, v11

    .end local v11    # "c":C
    .local v14, "c":C
    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZZZ)I

    move-result v0

    .line 444
    .end local v25    # "i":I
    .local v0, "i":I
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 445
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    .line 446
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v2    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 449
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v5, v14

    move v1, v0

    move/from16 v0, v26

    goto/16 :goto_2

    .line 395
    .end local v0    # "i":I
    .end local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .end local v2    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v14    # "c":C
    .end local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .end local v26    # "patternLength":I
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v9    # "patternLength":I
    .local v10, "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_8
    move v14, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move-object v15, v10

    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v9    # "patternLength":I
    .end local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v14    # "c":C
    .restart local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v25    # "i":I
    .restart local v26    # "patternLength":I
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    if-eq v14, v3, :cond_c

    if-eq v14, v2, :cond_b

    if-eq v14, v5, :cond_a

    .line 415
    if-lt v14, v5, :cond_9

    if-gt v14, v4, :cond_9

    .line 416
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v5

    add-int/lit8 v6, v14, -0x30

    .line 417
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 418
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->MIN_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move v5, v14

    move/from16 v1, v25

    move/from16 v0, v26

    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    goto/16 :goto_2

    .line 420
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_9
    iget-object v6, v12, Lorg/apache/logging/log4j/core/pattern/PatternParser;->converterRules:Ljava/util/Map;

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move/from16 v3, v25

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZZZ)I

    move-result v0

    .line 424
    .end local v25    # "i":I
    .local v0, "i":I
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 425
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    .line 426
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v2    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 430
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v5, v14

    move v1, v0

    move/from16 v0, v26

    goto/16 :goto_2

    .line 400
    .end local v0    # "i":I
    .end local v1    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .end local v2    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v25    # "i":I
    :cond_a
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v6

    .line 401
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v8

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 402
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v17, v0

    move v5, v14

    move/from16 v1, v25

    move/from16 v0, v26

    goto/16 :goto_2

    .line 410
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_b
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->DOT_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 411
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v0, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v16, v0

    move v5, v14

    move/from16 v1, v25

    move/from16 v0, v26

    goto/16 :goto_2

    .line 405
    .end local v0    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    :cond_c
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    const/4 v2, 0x1

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMinLength()I

    move-result v3

    .line 406
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getMaxLength()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isLeftTruncate()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->isZeroPad()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;-><init>(ZIIZZ)V

    .line 407
    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move-object/from16 v17, v0

    move v5, v14

    move/from16 v1, v25

    move/from16 v0, v26

    goto/16 :goto_2

    .line 361
    .end local v0    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .end local v14    # "c":C
    .end local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .end local v25    # "i":I
    .end local v26    # "patternLength":I
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v9    # "patternLength":I
    .restart local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_d
    move v3, v6

    move v14, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move-object v15, v10

    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v9    # "patternLength":I
    .end local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v14    # "c":C
    .restart local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v25    # "i":I
    .restart local v26    # "patternLength":I
    move/from16 v1, v25

    move/from16 v0, v26

    .end local v25    # "i":I
    .end local v26    # "patternLength":I
    .local v0, "patternLength":I
    .local v1, "i":I
    if-ne v1, v0, :cond_e

    .line 362
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    move-object/from16 v14, p2

    move/from16 v11, p6

    move v9, v0

    move-object v10, v15

    move-object/from16 v15, p3

    goto/16 :goto_0

    .line 367
    :cond_e
    const/16 v2, 0x25

    if-ne v14, v2, :cond_11

    .line 369
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_10

    .line 378
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_f

    .line 379
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, p6

    move v5, v14

    .end local v14    # "c":C
    .local v5, "c":C
    invoke-direct {v12, v2, v4}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->literalPattern(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v2

    move v6, v4

    move-object/from16 v4, p2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    move v7, v3

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    .end local v5    # "c":C
    .restart local v14    # "c":C
    :cond_f
    move-object/from16 v4, p2

    move/from16 v6, p6

    move v7, v3

    move v5, v14

    move-object/from16 v3, p3

    .line 383
    .end local v14    # "c":C
    .restart local v5    # "c":C
    :goto_1
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 384
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->CONVERTER_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 386
    .end local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .local v2, "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v7

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    .end local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .local v7, "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    goto :goto_2

    .line 371
    .end local v2    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .end local v5    # "c":C
    .end local v7    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    .restart local v14    # "c":C
    .restart local v16    # "state":Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .restart local v17    # "formattingInfo":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_10
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move v5, v14

    .end local v14    # "c":C
    .restart local v5    # "c":C
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v8, v1, 0x1

    .line 374
    .end local v1    # "i":I
    .restart local v8    # "i":I
    move v1, v8

    goto :goto_2

    .line 389
    .end local v5    # "c":C
    .end local v8    # "i":I
    .restart local v1    # "i":I
    .restart local v14    # "c":C
    :cond_11
    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move v5, v14

    .end local v14    # "c":C
    .restart local v5    # "c":C
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    nop

    .line 490
    :goto_2
    move v9, v0

    move-object v14, v4

    move v11, v6

    move-object v10, v15

    move-object v15, v3

    goto/16 :goto_0

    .line 495
    .end local v0    # "patternLength":I
    .end local v5    # "c":C
    .end local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v9    # "patternLength":I
    .restart local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    :cond_12
    move v0, v9

    move v6, v11

    move-object v4, v14

    move-object v3, v15

    move-object v15, v10

    .end local v9    # "patternLength":I
    .end local v10    # "currentLiteral":Ljava/lang/StringBuilder;
    .restart local v0    # "patternLength":I
    .restart local v15    # "currentLiteral":Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_13

    .line 496
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->literalPattern(Ljava/lang/String;Z)Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_13
    return-void
.end method
