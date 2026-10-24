.class public Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;
.super Ljava/lang/Object;
.source "DefaultNoSqlObject.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    .local p2, "value":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->unwrap()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public set(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "values"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public set(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 58
    .local p2, "values":[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 63
    .local v3, "value":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->unwrap()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "value":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    return-void
.end method

.method public bridge synthetic unwrap()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->unwrap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/DefaultNoSqlObject;->map:Ljava/util/Map;

    return-object v0
.end method
