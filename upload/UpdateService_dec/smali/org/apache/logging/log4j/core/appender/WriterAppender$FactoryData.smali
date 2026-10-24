.class Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;
.super Ljava/lang/Object;
.source "WriterAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/WriterAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
.field private final layout:Lorg/apache/logging/log4j/core/StringLayout;

.field private final name:Ljava/lang/String;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "writer",
            "type",
            "layout"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->writer:Ljava/io/Writer;

    .line 92
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->name:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    .line 94
    return-void
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;)Lorg/apache/logging/log4j/core/StringLayout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    return-object v0
.end method
