.class Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;
.super Ljava/lang/ThreadLocal;
.source "AbstractLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/spi/AbstractLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalLogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/apache/logging/log4j/internal/DefaultLogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private logger:Lorg/apache/logging/log4j/spi/AbstractLogger;

.field final synthetic this$0:Lorg/apache/logging/log4j/spi/AbstractLogger;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/spi/AbstractLogger;Lorg/apache/logging/log4j/spi/AbstractLogger;)V
    .locals 0
    .param p2, "logger"    # Lorg/apache/logging/log4j/spi/AbstractLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "logger"
        }
    .end annotation

    .line 2948
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;->this$0:Lorg/apache/logging/log4j/spi/AbstractLogger;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2949
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;->logger:Lorg/apache/logging/log4j/spi/AbstractLogger;

    .line 2950
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 2946
    invoke-virtual {p0}, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;->initialValue()Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
    .locals 2

    .line 2954
    new-instance v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/AbstractLogger$LocalLogBuilder;->logger:Lorg/apache/logging/log4j/spi/AbstractLogger;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;-><init>(Lorg/apache/logging/log4j/Logger;)V

    return-object v0
.end method
