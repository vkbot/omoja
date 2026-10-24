.class Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;
.super Ljava/lang/Object;
.source "Generate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/Generate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LevelInfo"
.end annotation


# instance fields
.field final intLevel:I

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "description"
        }
    .end annotation

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->name:Ljava/lang/String;

    .line 1044
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;->intLevel:I

    .line 1045
    return-void
.end method

.method public static parse(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;",
            ">;"
        }
    .end annotation

    .line 1048
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "generator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1049
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1051
    :try_start_0
    new-instance v2, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/tools/Generate$LevelInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    goto :goto_1

    .line 1052
    :catch_0
    move-exception v2

    .line 1053
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse custom level \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1054
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v3, p1}, Lorg/apache/logging/log4j/core/tools/Generate;->access$200(Ljava/io/PrintStream;Ljava/lang/Class;)V

    .line 1055
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1049
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
