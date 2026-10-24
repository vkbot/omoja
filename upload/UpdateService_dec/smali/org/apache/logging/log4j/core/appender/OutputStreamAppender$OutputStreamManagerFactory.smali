.class Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;
.super Ljava/lang/Object;
.source "OutputStreamAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputStreamManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;

    .line 104
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 104
    check-cast p2, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->access$200(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V

    return-object v0
.end method
