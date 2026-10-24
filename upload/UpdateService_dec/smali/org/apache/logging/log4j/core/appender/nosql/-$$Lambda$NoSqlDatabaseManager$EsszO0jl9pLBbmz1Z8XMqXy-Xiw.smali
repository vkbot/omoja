.class public final synthetic Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

.field public final synthetic f$1:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;->f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;->f$1:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;->f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;->f$1:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    check-cast p1, Lorg/apache/logging/log4j/core/util/KeyValuePair;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->lambda$setAdditionalFields$0(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-void
.end method
