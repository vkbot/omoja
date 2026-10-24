.class public final synthetic Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

.field public final synthetic f$1:Lorg/apache/logging/log4j/util/PropertySource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Lorg/apache/logging/log4j/util/PropertySource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;->f$0:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    iput-object p2, p0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;->f$1:Lorg/apache/logging/log4j/util/PropertySource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;->f$0:Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;->f$1:Lorg/apache/logging/log4j/util/PropertySource;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->lambda$reload$1$PropertiesUtil$Environment(Lorg/apache/logging/log4j/util/PropertySource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
