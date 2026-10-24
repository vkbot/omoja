.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;
.super Ljava/lang/Object;
.source "AbstractManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AbstractManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractFactoryData"
.end annotation


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 62
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractManager$AbstractFactoryData;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method
