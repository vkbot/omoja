.class public final synthetic Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$3z0wrnbnFoJ-69hY2XP8-VNQZVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$3z0wrnbnFoJ-69hY2XP8-VNQZVw;->f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$3z0wrnbnFoJ-69hY2XP8-VNQZVw;->f$0:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->lambda$setFields$2(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
