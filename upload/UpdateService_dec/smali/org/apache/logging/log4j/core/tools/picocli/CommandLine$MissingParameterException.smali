.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingParameterException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46706ebc72d9e5c1L


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V
    .locals 0
    .param p1, "commandLine"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "commandLine",
            "msg"
        }
    .end annotation

    .line 4756
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    .line 4757
    return-void
.end method

.method static synthetic access$2000(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/lang/String;

    .line 4753
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;->create(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;
    .locals 4
    .param p0, "cmd"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "cmd",
            "missing",
            "separator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;"
        }
    .end annotation

    .line 4760
    .local p1, "missing":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4761
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4762
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-static {v2, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;->describe(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    .line 4761
    return-object v0

    .line 4764
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4765
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 4766
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;->describe(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4767
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 4768
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required options "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    return-object v1
.end method

.method private static describe(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "separator"
        }
    .end annotation

    .line 4771
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 4772
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    .line 4773
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->index()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 4774
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->access$2800(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
