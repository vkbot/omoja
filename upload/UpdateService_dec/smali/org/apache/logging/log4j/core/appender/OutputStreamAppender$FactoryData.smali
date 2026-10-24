.class Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;
.super Ljava/lang/Object;
.source "OutputStreamAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryData"
.end annotation


# instance fields
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

.field private final name:Ljava/lang/String;

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "os",
            "type",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->os:Ljava/io/OutputStream;

    .line 96
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->name:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 98
    return-void
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;)Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method
