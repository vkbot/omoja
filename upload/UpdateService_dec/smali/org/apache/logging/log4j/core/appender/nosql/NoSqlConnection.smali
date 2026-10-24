.class public interface abstract Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;
.super Ljava/lang/Object;
.source "NoSqlConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        "T::",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
        "TW;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract createList(I)[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public abstract createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract insertObject(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;)V"
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method
