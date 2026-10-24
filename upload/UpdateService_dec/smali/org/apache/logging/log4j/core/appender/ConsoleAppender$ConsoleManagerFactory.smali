.class Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;
.super Ljava/lang/Object;
.source "ConsoleAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
        "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;

    .line 373
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;-><init>()V

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

    .line 373
    check-cast p2, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;
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

    .line 384
    new-instance v0, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;->access$500(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;->access$600(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;->access$700(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Z)V

    return-object v0
.end method
