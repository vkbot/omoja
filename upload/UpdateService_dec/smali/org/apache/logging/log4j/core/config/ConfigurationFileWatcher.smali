.class public Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;
.super Lorg/apache/logging/log4j/core/util/AbstractWatcher;
.source "ConfigurationFileWatcher.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/FileWatcher;


# instance fields
.field private file:Ljava/io/File;

.field private lastModifiedMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p4, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "configuration",
            "reconfigurable",
            "configurationListeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)V"
        }
    .end annotation

    .line 37
    .local p3, "configurationListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;)V

    .line 38
    iput-wide p4, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->lastModifiedMillis:J

    .line 39
    return-void
.end method


# virtual methods
.method public fileModified(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->lastModifiedMillis:J

    .line 49
    return-void
.end method

.method public getLastModified()J
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public isModified()Z
    .locals 4

    .line 60
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->lastModifiedMillis:J

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 7
    .param p1, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p3, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "reconfigurable",
            "listeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)",
            "Lorg/apache/logging/log4j/core/util/Watcher;"
        }
    .end annotation

    .line 66
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    new-instance v6, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V

    .line 68
    .local v0, "watcher":Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method public watching(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 2
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->file:Ljava/io/File;

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;->lastModifiedMillis:J

    .line 55
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 56
    return-void
.end method
