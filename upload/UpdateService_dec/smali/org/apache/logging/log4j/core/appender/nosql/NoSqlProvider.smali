.class public interface abstract Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
.super Ljava/lang/Object;
.source "NoSqlProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<",
        "*+",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
        "*>;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getConnection()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
