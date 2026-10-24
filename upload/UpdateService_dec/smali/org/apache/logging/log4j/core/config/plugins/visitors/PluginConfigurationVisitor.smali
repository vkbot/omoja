.class public Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginConfigurationVisitor;
.super Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;
.source "PluginConfigurationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor<",
        "Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/plugins/visitors/AbstractPluginVisitor;-><init>(Ljava/lang/Class;)V

    .line 31
    return-void
.end method


# virtual methods
.method public visit(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 3
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "node"    # Lorg/apache/logging/log4j/core/config/Node;
    .param p3, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "log"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "node",
            "event",
            "log"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginConfigurationVisitor;->conversionType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "Configuration"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    return-object p1

    .line 43
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginConfigurationVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 43
    const-string v2, "Variable annotated with @PluginConfiguration is not compatible with type {}."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
