.class public interface abstract Lorg/apache/logging/log4j/core/appender/db/jdbc/ConnectionSource;
.super Ljava/lang/Object;
.source "ConnectionSource.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LifeCycle;


# virtual methods
.method public abstract getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
