.class Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;
.super Ljava/lang/Object;
.source "WriterAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/WriterAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/WriterManager;",
        "Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/WriterAppender$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$1;

    .line 97
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;-><init>()V

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

    .line 97
    check-cast p2, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/WriterManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Lorg/apache/logging/log4j/core/appender/WriterManager;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;
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

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/core/appender/WriterManager;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->access$300(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Ljava/io/Writer;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->access$400(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->access$500(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Lorg/apache/logging/log4j/core/StringLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/WriterManager;-><init>(Ljava/io/Writer;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Z)V

    return-object v0
.end method
