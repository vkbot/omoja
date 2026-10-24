.class public Lorg/apache/logging/log4j/util/SystemPropertiesPropertySource;
.super Ljava/lang/Object;
.source "SystemPropertiesPropertySource.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/PropertySource;


# static fields
.field private static final DEFAULT_PRIORITY:I = 0x64

.field private static final PREFIX:Ljava/lang/String; = "log4j2."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "action":Lorg/apache/logging/log4j/util/BiConsumer;, "Lorg/apache/logging/log4j/util/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "properties":Ljava/util/Properties;
    nop

    .line 55
    monitor-enter v0

    .line 56
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "keySet":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 61
    .local v4, "key":Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "keyStr":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/logging/log4j/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "keyStr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void

    .line 57
    .end local v1    # "keySet":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 44
    .end local v0    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/SecurityException;
    return-void
.end method

.method public getNormalForm(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tokens"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 68
    .local p1, "tokens":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log4j2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertySource$Util;->joinAsCamelCase(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 36
    const/16 v0, 0x64

    return v0
.end method
