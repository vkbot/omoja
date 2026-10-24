.class public Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
.super Ljava/lang/Object;
.source "PluginEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient category:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private defer:Z

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private printable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefer()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->defer:Z

    return v0
.end method

.method public isPrintable()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->printable:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->category:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->className:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDefer(Z)V
    .locals 0
    .param p1, "defer"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defer"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->defer:Z

    .line 73
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->key:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPrintable(Z)V
    .locals 0
    .param p1, "printable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "printable"
        }
    .end annotation

    .line 64
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->printable:Z

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginEntry [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", printable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->printable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->defer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
