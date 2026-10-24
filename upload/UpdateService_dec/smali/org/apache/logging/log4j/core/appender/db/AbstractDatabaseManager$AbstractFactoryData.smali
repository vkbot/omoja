.class public abstract Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;
.super Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;
.source "AbstractDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractFactoryData"
.end annotation


# instance fields
.field private final bufferSize:I

.field private final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/apache/logging/log4j/core/Layout;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bufferSize",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/Layout;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/Layout;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "bufferSize",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 63
    iput p2, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;->bufferSize:I

    .line 64
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 65
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;->bufferSize:I

    return v0
.end method

.method public getLayout()Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method
