.class public Lorg/apache/logging/log4j/core/script/ScriptManager;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/FileWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;,
        Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;,
        Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;,
        Lorg/apache/logging/log4j/core/script/ScriptManager$AbstractScriptRunner;
    }
.end annotation


# static fields
.field private static final KEY_THREADING:Ljava/lang/String; = "THREADING"

.field private static final logger:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final allowedLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final languages:Ljava/lang/String;

.field private final manager:Ljavax/script/ScriptEngineManager;

.field private final scriptRunners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/util/WatchManager;Ljava/lang/String;)V
    .locals 22
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "watchManager"    # Lorg/apache/logging/log4j/core/util/WatchManager;
    .param p3, "scriptLanguages"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "watchManager",
            "scriptLanguages"
        }
    .end annotation

    .line 79
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljavax/script/ScriptEngineManager;

    invoke-direct {v1}, Ljavax/script/ScriptEngineManager;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->manager:Ljavax/script/ScriptEngineManager;

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 81
    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    .line 82
    iget-object v3, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->manager:Ljavax/script/ScriptEngineManager;

    invoke-virtual {v3}, Ljavax/script/ScriptEngineManager;->getEngineFactories()Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, "factories":Ljava/util/List;, "Ljava/util/List<Ljavax/script/ScriptEngineFactory;>;"
    invoke-static/range {p3 .. p3}, Lorg/apache/logging/log4j/util/Strings;->splitList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;->INSTANCE:Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 84
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iput-object v4, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->allowedLanguages:Ljava/util/Set;

    .line 85
    sget-object v4, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->isDebugEnabled()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_8

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 88
    .local v6, "factorySize":I
    sget-object v7, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v6, v9, :cond_0

    const-string v9, "s"

    goto :goto_0

    :cond_0
    const-string v9, ""

    :goto_0
    const-string v10, "Installed {} script engine{}"

    invoke-interface {v7, v10, v8, v9}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/script/ScriptEngineFactory;

    .line 90
    .local v8, "factory":Ljavax/script/ScriptEngineFactory;
    const-string v9, "THREADING"

    invoke-interface {v8, v9}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "threading":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 92
    const-string v9, "Not Thread Safe"

    .line 94
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v10

    .line 95
    .local v15, "names":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljavax/script/ScriptEngineFactory;->getNames()Ljava/util/List;

    move-result-object v19

    .line 96
    .local v19, "languageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 97
    .local v11, "name":Ljava/lang/String;
    iget-object v12, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->allowedLanguages:Ljava/util/Set;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 98
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 99
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v11    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_5
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v8}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v10

    instance-of v14, v10, Ljavax/script/Compilable;

    .line 110
    .local v14, "compiled":Z
    sget-object v10, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    .line 111
    invoke-interface {v8}, Ljavax/script/ScriptEngineFactory;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Ljavax/script/ScriptEngineFactory;->getEngineVersion()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8}, Ljavax/script/ScriptEngineFactory;->getLanguageName()Ljava/lang/String;

    move-result-object v16

    .line 112
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 110
    const-string v11, "{} version: {}, language: {}, threading: {}, compile: {}, names: {}, factory class: {}"

    move/from16 v20, v14

    .end local v14    # "compiled":Z
    .local v20, "compiled":Z
    move-object/from16 v14, v16

    move-object/from16 v21, v15

    .end local v15    # "names":Ljava/lang/StringBuilder;
    .local v21, "names":Ljava/lang/StringBuilder;
    move-object v15, v9

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    invoke-interface/range {v10 .. v18}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 104
    .end local v20    # "compiled":Z
    .end local v21    # "names":Ljava/lang/StringBuilder;
    .restart local v15    # "names":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v21, v15

    .line 114
    .end local v8    # "factory":Ljavax/script/ScriptEngineFactory;
    .end local v9    # "threading":Ljava/lang/String;
    .end local v15    # "names":Ljava/lang/StringBuilder;
    .end local v19    # "languageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    goto/16 :goto_1

    .line 115
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->languages:Ljava/lang/String;

    .line 116
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "factorySize":I
    goto :goto_6

    .line 117
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v4, "names":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/script/ScriptEngineFactory;

    .line 119
    .local v7, "factory":Ljavax/script/ScriptEngineFactory;
    invoke-interface {v7}, Ljavax/script/ScriptEngineFactory;->getNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 120
    .local v9, "name":Ljava/lang/String;
    iget-object v10, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->allowedLanguages:Ljava/util/Set;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_9
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .end local v9    # "name":Ljava/lang/String;
    :cond_a
    goto :goto_5

    .line 127
    .end local v7    # "factory":Ljavax/script/ScriptEngineFactory;
    :cond_b
    goto :goto_4

    .line 128
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->languages:Ljava/lang/String;

    .line 130
    .end local v4    # "names":Ljava/lang/StringBuilder;
    :goto_6
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/script/ScriptManager;)Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/script/ScriptManager;

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/script/ScriptManager;)Ljavax/script/ScriptEngineManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/script/ScriptManager;

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->manager:Ljavax/script/ScriptEngineManager;

    return-object v0
.end method

.method private getScriptRunner(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
    .locals 2
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "script"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    return-object v0
.end method

.method static synthetic lambda$execute$0(Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 1
    .param p0, "scriptRunner"    # Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
    .param p1, "bindings"    # Ljavax/script/Bindings;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "scriptRunner",
            "bindings"
        }
    .end annotation

    .line 197
    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;->execute(Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z
    .locals 5
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "script"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->allowedLanguages:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->manager:Ljavax/script/ScriptEngineManager;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 139
    .local v0, "engine":Ljavax/script/ScriptEngine;
    if-nez v0, :cond_0

    .line 140
    sget-object v2, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ScriptEngine found for language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Available languages are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->languages:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 142
    return v1

    .line 144
    :cond_0
    invoke-interface {v0}, Ljavax/script/ScriptEngine;->getFactory()Ljavax/script/ScriptEngineFactory;

    move-result-object v1

    const-string v2, "THREADING"

    invoke-interface {v1, v2}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    invoke-direct {v3, p0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    invoke-direct {v3, p0, v0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/script/ScriptFile;

    if-eqz v1, :cond_2

    .line 151
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/script/ScriptFile;

    .line 152
    .local v1, "scriptFile":Lorg/apache/logging/log4j/core/script/ScriptFile;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/script/ScriptFile;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 153
    .local v2, "path":Ljava/nio/file/Path;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/script/ScriptFile;->isWatched()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 154
    iget-object v3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->watchManager:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lorg/apache/logging/log4j/core/util/WatchManager;->watchFile(Ljava/io/File;Lorg/apache/logging/log4j/core/util/FileWatcher;)V

    .line 157
    .end local v0    # "engine":Ljavax/script/ScriptEngine;
    .end local v1    # "scriptFile":Lorg/apache/logging/log4j/core/script/ScriptFile;
    .end local v2    # "path":Ljava/nio/file/Path;
    :cond_2
    nop

    .line 162
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    .line 159
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v4, "Unable to add script {}, {} has not been configured as an allowed language"

    invoke-interface {v0, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    return v1
.end method

.method public createBindings(Lorg/apache/logging/log4j/core/script/AbstractScript;)Ljavax/script/Bindings;
    .locals 1
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "script"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/script/ScriptManager;->getScriptRunner(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;->createBindings()Ljavax/script/Bindings;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bindings"    # Ljavax/script/Bindings;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "bindings"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    .line 193
    .local v0, "scriptRunner":Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No script named {} could be found"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v1, 0x0

    return-object v1

    .line 197
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;

    invoke-direct {v1, v0, p2}, Lorg/apache/logging/log4j/core/script/-$$Lambda$ScriptManager$ATTpdXrMJAE7eiWDPXybRFTqrx4;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;Ljavax/script/Bindings;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fileModified(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    .line 177
    .local v0, "runner":Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
    if-nez v0, :cond_0

    .line 178
    sget-object v1, Lorg/apache/logging/log4j/core/script/ScriptManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} is not a running script"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v1

    .line 182
    .local v1, "engine":Ljavax/script/ScriptEngine;
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;->getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v2

    .line 183
    .local v2, "script":Lorg/apache/logging/log4j/core/script/AbstractScript;
    invoke-interface {v1}, Ljavax/script/ScriptEngine;->getFactory()Ljavax/script/ScriptEngineFactory;

    move-result-object v3

    const-string v4, "THREADING"

    invoke-interface {v3, v4}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 184
    iget-object v3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;

    invoke-direct {v5, p0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager$ThreadLocalScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;

    invoke-direct {v5, p0, v1, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager$MainScriptRunner;-><init>(Lorg/apache/logging/log4j/core/script/ScriptManager;Ljavax/script/ScriptEngine;Lorg/apache/logging/log4j/core/script/AbstractScript;)V

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_0
    return-void
.end method

.method public getAllowedLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->allowedLanguages:Ljava/util/Set;

    return-object v0
.end method

.method public getScript(Ljava/lang/String;)Lorg/apache/logging/log4j/core/script/AbstractScript;
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

    .line 170
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/ScriptManager;->scriptRunners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;

    .line 171
    .local v0, "runner":Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/script/ScriptManager$ScriptRunner;->getScript()Lorg/apache/logging/log4j/core/script/AbstractScript;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
