.class public Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;
.super Ljava/lang/Object;
.source "PluginBuilder.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private event:Lorg/apache/logging/log4j/core/LogEvent;

.field private node:Lorg/apache/logging/log4j/core/config/Node;

.field private final pluginType:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    .line 57
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pluginType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<",
            "*>;)V"
        }
    .end annotation

    .line 71
    .local p1, "pluginType":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->pluginType:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 73
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    .line 74
    return-void
.end method

.method private checkForRemainingAttributes()V
    .locals 6

    .line 302
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 303
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 307
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v4, " contains "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 310
    const-string v4, "an invalid element or attribute "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :cond_0
    const-string v4, "invalid attributes "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :cond_1
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :goto_1
    invoke-static {v1, v3}, Lorg/apache/logging/log4j/util/StringBuilders;->appendDqValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 319
    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 321
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private static createBuilder(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/util/Builder;
    .locals 8
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
            "*>;)",
            "Lorg/apache/logging/log4j/core/util/Builder<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 154
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 155
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lorg/apache/logging/log4j/core/util/Builder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/logging/log4j/core/util/TypeUtil;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 159
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/Builder;

    return-object v0

    .line 154
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-object v4
.end method

.method private static varargs extractPluginAliases([Ljava/lang/annotation/Annotation;)[Ljava/lang/String;
    .locals 5
    .param p0, "parmTypes"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parmTypes"
        }
    .end annotation

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "aliases":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 294
    .local v3, "a":Ljava/lang/annotation/Annotation;
    instance-of v4, v3, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;->value()[Ljava/lang/String;

    move-result-object v0

    .line 293
    .end local v3    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_1
    return-object v0
.end method

.method private static findFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
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
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 231
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 232
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v4, Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/ReflectionUtil;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 235
    return-object v3

    .line 231
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No factory method found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateParameters(Ljava/lang/reflect/Method;)[Ljava/lang/Object;
    .locals 19
    .param p1, "factory"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .line 242
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v1, "log":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 244
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 245
    .local v3, "annotations":[[Ljava/lang/annotation/Annotation;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 246
    .local v4, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 247
    .local v5, "invalid":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    const-string v8, ")"

    if-ge v6, v7, :cond_8

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v7, ", "

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    aget-object v7, v3, v6

    invoke-static {v7}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->extractPluginAliases([Ljava/lang/annotation/Annotation;)[Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "aliases":[Ljava/lang/String;
    aget-object v9, v3, v6

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 251
    .local v12, "a":Ljava/lang/annotation/Annotation;
    instance-of v13, v12, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    if-eqz v13, :cond_1

    .line 252
    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto :goto_4

    .line 254
    :cond_1
    nop

    .line 255
    invoke-interface {v12}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    .line 254
    invoke-static {v13}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitors;->findVisitor(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v13

    .line 256
    .local v13, "visitor":Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v13, :cond_3

    .line 257
    invoke-interface {v13, v7}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setAliases([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    .line 258
    invoke-interface {v14, v12}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setAnnotation(Ljava/lang/annotation/Annotation;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    aget-object v15, v2, v6

    .line 259
    invoke-interface {v14, v15}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setConversionType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->event:Lorg/apache/logging/log4j/core/LogEvent;

    if-nez v15, :cond_2

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 261
    invoke-interface {v15}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v15

    goto :goto_3

    :cond_2
    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 262
    invoke-interface {v15}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v15

    .line 260
    :goto_3
    invoke-interface {v14, v15}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setStrSubstitutor(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    .line 263
    move-object/from16 v15, p1

    invoke-interface {v14, v15}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setMember(Ljava/lang/reflect/Member;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    move-object/from16 v16, v2

    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v16, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    move-object/from16 v17, v7

    .end local v7    # "aliases":[Ljava/lang/String;
    .local v17, "aliases":[Ljava/lang/String;
    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    move-object/from16 v18, v9

    iget-object v9, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 264
    invoke-interface {v14, v2, v7, v9, v1}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 267
    aput-object v2, v4, v6

    goto :goto_4

    .line 256
    .end local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "aliases":[Ljava/lang/String;
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "aliases":[Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    .line 250
    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "aliases":[Ljava/lang/String;
    .end local v12    # "a":Ljava/lang/annotation/Annotation;
    .end local v13    # "visitor":Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<+Ljava/lang/annotation/Annotation;>;"
    .restart local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v17    # "aliases":[Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    goto :goto_2

    .line 271
    .end local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "aliases":[Ljava/lang/String;
    .restart local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "aliases":[Ljava/lang/String;
    :cond_5
    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "aliases":[Ljava/lang/String;
    .restart local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v17    # "aliases":[Ljava/lang/String;
    aget-object v2, v3, v6

    .line 272
    invoke-static {v2}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidators;->findValidators([Ljava/lang/annotation/Annotation;)Ljava/util/Collection;

    move-result-object v2

    .line 273
    .local v2, "validators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    aget-object v7, v4, v6

    .line 274
    .local v7, "value":Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arg["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->simpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "argName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;

    .line 276
    .local v10, "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    invoke-interface {v10, v8, v7}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;->isValid(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 277
    const/4 v5, 0x1

    .line 279
    .end local v10    # "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    :cond_6
    goto :goto_5

    .line 247
    .end local v2    # "validators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "argName":Ljava/lang/String;
    .end local v17    # "aliases":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v15, p1

    move-object/from16 v16, v2

    .line 281
    .end local v2    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "i":I
    .restart local v16    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "()"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_9
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->checkForRemainingAttributes()V

    .line 283
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->verifyNodeChildrenUsed()V

    .line 284
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 285
    if-nez v5, :cond_a

    .line 288
    return-object v4

    .line 286
    :cond_a
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Arguments given for element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " are invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private injectFields(Lorg/apache/logging/log4j/core/util/Builder;)V
    .locals 19
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
            "Lorg/apache/logging/log4j/core/util/Builder<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 166
    .local p1, "builder":Lorg/apache/logging/log4j/core/util/Builder;, "Lorg/apache/logging/log4j/core/util/Builder<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/TypeUtil;->getAllDeclaredFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/AccessibleObject;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, "log":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 170
    .local v4, "invalid":Z
    const-string v5, ""

    .line 171
    .local v5, "reason":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 172
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const-string v9, ", "

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->simpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v9

    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 174
    .local v8, "annotations":[Ljava/lang/annotation/Annotation;
    invoke-static {v8}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->extractPluginAliases([Ljava/lang/annotation/Annotation;)[Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "aliases":[Ljava/lang/String;
    array-length v11, v8

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_5

    aget-object v13, v8, v12

    .line 176
    .local v13, "a":Ljava/lang/annotation/Annotation;
    instance-of v14, v13, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    if-eqz v14, :cond_1

    .line 177
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    goto :goto_4

    .line 179
    :cond_1
    nop

    .line 180
    invoke-interface {v13}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitors;->findVisitor(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v14

    .line 181
    .local v14, "visitor":Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v14, :cond_3

    .line 182
    invoke-interface {v14, v10}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setAliases([Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v15

    .line 183
    invoke-interface {v15, v13}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setAnnotation(Ljava/lang/annotation/Annotation;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v15

    .line 184
    move-object/from16 v16, v2

    .end local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local v16, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setConversionType(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v2

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->event:Lorg/apache/logging/log4j/core/LogEvent;

    if-nez v15, :cond_2

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 186
    invoke-interface {v15}, Lorg/apache/logging/log4j/core/config/Configuration;->getConfigurationStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v15

    goto :goto_3

    :cond_2
    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 187
    invoke-interface {v15}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v15

    .line 185
    :goto_3
    invoke-interface {v2, v15}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setStrSubstitutor(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v2

    .line 188
    invoke-interface {v2, v7}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->setMember(Ljava/lang/reflect/Member;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;

    move-result-object v2

    iget-object v15, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    move-object/from16 v17, v6

    iget-object v6, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    move-object/from16 v18, v10

    .end local v10    # "aliases":[Ljava/lang/String;
    .local v18, "aliases":[Ljava/lang/String;
    iget-object v10, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 189
    invoke-interface {v2, v15, v6, v10, v3}, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;->visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v2

    .line 191
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {v7, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 181
    .end local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v18    # "aliases":[Ljava/lang/String;
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v10    # "aliases":[Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    .line 175
    .end local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v10    # "aliases":[Ljava/lang/String;
    .end local v13    # "a":Ljava/lang/annotation/Annotation;
    .end local v14    # "visitor":Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;, "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<+Ljava/lang/annotation/Annotation;>;"
    .restart local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v18    # "aliases":[Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    goto :goto_2

    .line 196
    .end local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v18    # "aliases":[Ljava/lang/String;
    .restart local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v10    # "aliases":[Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    .line 197
    .end local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v10    # "aliases":[Ljava/lang/String;
    .restart local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v18    # "aliases":[Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidators;->findValidators([Ljava/lang/annotation/Annotation;)Ljava/util/Collection;

    move-result-object v2

    .line 198
    .local v2, "validators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 199
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;

    .line 200
    .local v11, "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v6}, Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;->isValid(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 201
    const/4 v4, 0x1

    .line 202
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 203
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "field \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' has invalid value \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    .end local v11    # "validator":Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;, "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;"
    :cond_7
    goto :goto_5

    .line 208
    .end local v2    # "validators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<*>;>;"
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v18    # "aliases":[Ljava/lang/String;
    :cond_8
    move-object/from16 v2, v16

    move-object/from16 v6, v17

    goto/16 :goto_0

    .line 209
    .end local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_9
    move-object/from16 v16, v2

    .end local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v16    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "()"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    const-string v2, ")"

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 211
    if-nez v4, :cond_b

    .line 214
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->checkForRemainingAttributes()V

    .line 215
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->verifyNodeChildrenUsed()V

    .line 216
    return-void

    .line 212
    :cond_b
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Arguments given for element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " are invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static simpleName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 222
    if-nez p0, :cond_0

    .line 223
    const-string v0, "null"

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "cls":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 227
    .local v1, "index":I
    if-gez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private verify()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    const-string v1, "No Configuration object was set."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    const-string v1, "No Node object was set."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method private verifyNodeChildrenUsed()V
    .locals 8

    .line 324
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Node;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->pluginType:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->isDeferChildren()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/Node;

    .line 327
    .local v2, "child":Lorg/apache/logging/log4j/core/config/Node;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getType()Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "nodeType":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "start":Ljava/lang/String;
    :goto_1
    sget-object v5, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{} has no parameter that matches element {}"

    invoke-interface {v5, v7, v4, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .end local v2    # "child":Lorg/apache/logging/log4j/core/config/Node;
    .end local v3    # "nodeType":Ljava/lang/String;
    .end local v4    # "start":Ljava/lang/String;
    goto :goto_0

    .line 332
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 8

    .line 116
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->verify()V

    .line 119
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Building Plugin[name={}, class={}]."

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->pluginType:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getElementName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->pluginType:Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;

    .line 120
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->createBuilder(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/util/Builder;

    move-result-object v1

    .line 122
    .local v1, "builder":Lorg/apache/logging/log4j/core/util/Builder;, "Lorg/apache/logging/log4j/core/util/Builder<*>;"
    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->injectFields(Lorg/apache/logging/log4j/core/util/Builder;)V

    .line 124
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/Builder;->build()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/config/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 133
    .end local v1    # "builder":Lorg/apache/logging/log4j/core/util/Builder;, "Lorg/apache/logging/log4j/core/util/Builder<*>;"
    :cond_0
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v1

    .line 130
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 131
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .line 132
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    const-string v3, "Could not create plugin of type {} for element {}: {}"

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->findFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "factory":Ljava/lang/reflect/Method;
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->generateParameters(Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 139
    .end local v1    # "factory":Ljava/lang/reflect/Method;
    .end local v2    # "params":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    .line 140
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 141
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v5

    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .line 142
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    const-string v3, "Unable to invoke factory method in {} for element {}: {}"

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-object v0

    .line 126
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/apache/logging/log4j/core/config/ConfigurationException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/Node;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not create plugin of type {} for element {}"

    invoke-interface {v2, v5, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-object v0
.end method

.method public forLogEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 106
    return-object p0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 84
    return-object p0
.end method

.method public withConfigurationNode(Lorg/apache/logging/log4j/core/config/Node;)Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;
    .locals 0
    .param p1, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginBuilder;->node:Lorg/apache/logging/log4j/core/config/Node;

    .line 95
    return-object p0
.end method
