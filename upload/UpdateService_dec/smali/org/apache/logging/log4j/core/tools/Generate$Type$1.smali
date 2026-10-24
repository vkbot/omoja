.class final enum Lorg/apache/logging/log4j/core/tools/Generate$Type$1;
.super Lorg/apache/logging/log4j/core/tools/Generate$Type;
.source "Generate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/Generate$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/tools/Generate$Type;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/tools/Generate$1;)V

    return-void
.end method


# virtual methods
.method constructor()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "%n    private %s(final Logger logger) {%n        this.logger = new ExtendedLoggerWrapper((AbstractLogger) logger, logger.getName(), logger.getMessageFactory());%n    }%n"

    return-object v0
.end method

.method declaration()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/**%n * Custom Logger interface with convenience methods for%n * %s%n * <p>Compatible with Log4j 2.6 or higher.</p>%n */%npublic final class %s implements Serializable {%n    private static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L;%n    private final ExtendedLoggerWrapper logger;%n%n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method generator()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 106
    const-class v0, Lorg/apache/logging/log4j/core/tools/Generate$CustomLogger;

    return-object v0
.end method

.method imports()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "import java.io.Serializable;%nimport org.apache.logging.log4j.Level;%nimport org.apache.logging.log4j.LogManager;%nimport org.apache.logging.log4j.Logger;%nimport org.apache.logging.log4j.Marker;%nimport org.apache.logging.log4j.message.Message;%nimport org.apache.logging.log4j.message.MessageFactory;%nimport org.apache.logging.log4j.spi.AbstractLogger;%nimport org.apache.logging.log4j.spi.ExtendedLoggerWrapper;%nimport org.apache.logging.log4j.util.MessageSupplier;%nimport org.apache.logging.log4j.util.Supplier;%n%n"

    return-object v0
.end method
