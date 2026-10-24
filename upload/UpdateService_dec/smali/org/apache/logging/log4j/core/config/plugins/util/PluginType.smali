.class public Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;
.super Ljava/lang/Object;
.source "PluginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final elementName:Ljava/lang/String;

.field private final pluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginEntry"    # Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .param p3, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pluginEntry",
            "pluginClass",
            "elementName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    .local p2, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 39
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginClass:Ljava/lang/Class;

    .line 40
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->elementName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 48
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 55
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isDeferChildren()Z
    .locals 1

    .line 63
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isDefer()Z

    move-result v0

    return v0
.end method

.method public isObjectPrintable()Z
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isPrintable()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;, "Lorg/apache/logging/log4j/core/config/plugins/util/PluginType<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginType [pluginClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 76
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elementName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 77
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isObjectPrintable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 78
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isPrintable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDeferChildren=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 79
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isDefer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/PluginType;->pluginEntry:Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 80
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method
