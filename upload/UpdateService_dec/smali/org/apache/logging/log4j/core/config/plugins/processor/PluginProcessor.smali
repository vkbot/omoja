.class public Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "PluginProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;,
        Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "org.apache.logging.log4j.core.config.plugins.*"
    }
.end annotation


# static fields
.field private static final EMPTY_ELEMENT_ARRAY:[Ljavax/lang/model/element/Element;

.field public static final PLUGIN_CACHE_FILE:Ljava/lang/String; = "META-INF/org/apache/logging/log4j/core/config/plugins/Log4j2Plugins.dat"


# instance fields
.field private final pluginCache:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/lang/model/element/Element;

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->EMPTY_ELEMENT_ARRAY:[Ljavax/lang/model/element/Element;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 64
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->pluginCache:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;

    return-void
.end method

.method private collectPlugins(Ljava/lang/Iterable;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/Element;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    .line 98
    .local v0, "elementUtils":Ljavax/lang/model/util/Elements;
    new-instance v1, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;-><init>(Ljavax/lang/model/util/Elements;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;)V

    .line 99
    .local v1, "pluginVisitor":Ljavax/lang/model/element/ElementVisitor;, "Ljavax/lang/model/element/ElementVisitor<Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;Lorg/apache/logging/log4j/core/config/plugins/Plugin;>;"
    new-instance v3, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;

    invoke-direct {v3, v0, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;-><init>(Ljavax/lang/model/util/Elements;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;)V

    move-object v2, v3

    .line 101
    .local v2, "pluginAliasesVisitor":Ljavax/lang/model/element/ElementVisitor;, "Ljavax/lang/model/element/ElementVisitor<Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;Lorg/apache/logging/log4j/core/config/plugins/Plugin;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    .line 102
    .local v4, "element":Ljavax/lang/model/element/Element;
    const-class v5, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    invoke-interface {v4, v5}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    .line 103
    .local v5, "plugin":Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    if-nez v5, :cond_0

    .line 104
    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v4, v1, v5}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 107
    .local v6, "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->pluginCache:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->getCategory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 108
    .local v7, "category":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v4, v2, v5}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 110
    .local v8, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 111
    .local v10, "pluginEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v10    # "pluginEntry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    goto :goto_1

    .line 113
    .end local v4    # "element":Ljavax/lang/model/element/Element;
    .end local v5    # "plugin":Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    .end local v6    # "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .end local v7    # "category":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    .end local v8    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    :cond_1
    goto :goto_0

    .line 114
    :cond_2
    return-void
.end method

.method private error(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method private varargs writeCacheFile([Ljavax/lang/model/element/Element;)V
    .locals 5
    .param p1, "elements"    # [Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    const-string v2, ""

    const-string v3, "META-INF/org/apache/logging/log4j/core/config/plugins/Log4j2Plugins.dat"

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/annotation/processing/Filer;->createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;

    move-result-object v0

    .line 119
    .local v0, "fileObject":Ljavax/tools/FileObject;
    invoke-interface {v0}, Ljavax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 120
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->pluginCache:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->writeCache(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 122
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 119
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "fileObject":Ljavax/tools/FileObject;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;
    .end local p1    # "elements":[Ljavax/lang/model/element/Element;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .restart local v0    # "fileObject":Ljavax/tools/FileObject;
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;
    .restart local p1    # "elements":[Ljavax/lang/model/element/Element;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 68
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latest()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 5
    .param p2, "roundEnv"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "annotations",
            "roundEnv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 73
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    .line 74
    .local v0, "messager":Ljavax/annotation/processing/Messager;
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v2, "Processing Log4j annotations"

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 76
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    invoke-interface {p2, v2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    .line 77
    .local v2, "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v4, "No elements to process"

    invoke-interface {v0, v3, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 79
    return v1

    .line 81
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->collectPlugins(Ljava/lang/Iterable;)V

    .line 82
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->EMPTY_ELEMENT_ARRAY:[Ljavax/lang/model/element/Element;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/lang/model/element/Element;

    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->writeCacheFile([Ljavax/lang/model/element/Element;)V

    .line 83
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v4, "Annotations processed"

    invoke-interface {v0, v3, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    return v1

    .line 85
    .end local v2    # "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;->error(Ljava/lang/CharSequence;)V

    .line 88
    return v1
.end method
