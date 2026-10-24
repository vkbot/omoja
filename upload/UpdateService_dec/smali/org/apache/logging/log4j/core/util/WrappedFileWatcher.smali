.class public Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;
.super Lorg/apache/logging/log4j/core/util/AbstractWatcher;
.source "WrappedFileWatcher.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/FileWatcher;


# instance fields
.field private volatile lastModifiedMillis:J

.field private final watcher:Lorg/apache/logging/log4j/core/util/FileWatcher;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/util/FileWatcher;)V
    .locals 1
    .param p1, "watcher"    # Lorg/apache/logging/log4j/core/util/FileWatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;)V

    .line 46
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->watcher:Lorg/apache/logging/log4j/core/util/FileWatcher;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/util/FileWatcher;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V
    .locals 0
    .param p1, "watcher"    # Lorg/apache/logging/log4j/core/util/FileWatcher;
    .param p2, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .param p5, "lastModifiedMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "watcher",
            "configuration",
            "reconfigurable",
            "configurationListeners",
            "lastModifiedMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/util/FileWatcher;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;J)V"
        }
    .end annotation

    .line 38
    .local p4, "configurationListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;)V

    .line 39
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->watcher:Lorg/apache/logging/log4j/core/util/FileWatcher;

    .line 40
    iput-wide p5, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    .line 41
    return-void
.end method


# virtual methods
.method public fileModified(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->watcher:Lorg/apache/logging/log4j/core/util/FileWatcher;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/util/FileWatcher;->fileModified(Ljava/io/File;)V

    .line 57
    return-void
.end method

.method public getLastModified()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->getListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-super {p0}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isModified()Z
    .locals 4

    .line 61
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 62
    .local v0, "lastModified":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 63
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    .line 64
    const/4 v2, 0x1

    return v2

    .line 66
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public modified()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->modified()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->fileModified(Ljava/io/File;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    .line 85
    return-void
.end method

.method public newWatcher(Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)Lorg/apache/logging/log4j/core/util/Watcher;
    .locals 8
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

    .line 96
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    new-instance v7, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->watcher:Lorg/apache/logging/log4j/core/util/FileWatcher;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;-><init>(Lorg/apache/logging/log4j/core/util/FileWatcher;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;J)V

    .line 98
    .local v0, "watcher":Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->getSource()Lorg/apache/logging/log4j/core/util/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 101
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

    .line 89
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;->lastModifiedMillis:J

    .line 90
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 91
    return-void
.end method
