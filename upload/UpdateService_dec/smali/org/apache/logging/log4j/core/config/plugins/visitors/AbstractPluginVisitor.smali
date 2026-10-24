.class public abstract Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.super Ljava/lang/Object;
.source "AbstractPluginVisitor.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
        "TA;>;"
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field protected aliases:[Ljava/lang/String;

.field protected annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field protected conversionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected member:Ljava/lang/reflect/Member;

.field protected substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
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
            "TA;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->clazz:Ljava/lang/Class;

    .line 74
    return-void
.end method

.method protected static varargs removeAttributeValue(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "attributes",
            "name",
            "aliases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 121
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v3

    .line 128
    :cond_0
    if-eqz p2, :cond_2

    .line 129
    array-length v4, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p2, v5

    .line 130
    .local v6, "alias":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v3

    .line 129
    .end local v6    # "alias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected convert(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->conversionType:Ljava/lang/Class;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Strings;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->conversionType:Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs setAliases([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 0
    .param p1, "someAliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "someAliases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->aliases:[Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setAnnotation(Ljava/lang/annotation/Annotation;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 2
    .param p1, "anAnnotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anAnnotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    const-string v0, "No annotation was provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 80
    .local v0, "a":Ljava/lang/annotation/Annotation;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->annotation:Ljava/lang/annotation/Annotation;

    .line 83
    :cond_0
    return-object p0
.end method

.method public setConversionType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aConversionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    .local p1, "aConversionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "No conversion type class was provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->conversionType:Ljava/lang/Class;

    .line 95
    return-object p0
.end method

.method public setMember(Ljava/lang/reflect/Member;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 0
    .param p1, "aMember"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aMember"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->member:Ljava/lang/reflect/Member;

    .line 107
    return-object p0
.end method

.method public setStrSubstitutor(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 1
    .param p1, "aSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aSubstitutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;",
            ")",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "TA;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<TA;>;"
    const-string v0, "No StrSubstitutor was provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;->substitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 101
    return-object p0
.end method
