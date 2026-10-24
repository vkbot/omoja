.class public Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;
.super Ljava/lang/Object;
.source "PathSortByModificationTime.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "SortByModificationTime"
    printObject = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final multiplier:I

.field private final recentFirst:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "recentFirst"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recentFirst"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;->recentFirst:Z

    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;->multiplier:I

    .line 46
    return-void
.end method

.method public static createSorter(Z)Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
    .locals 1
    .param p0, "recentFirst"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "recentFirst"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recentFirst"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 57
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "path1",
            "path2"
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    check-cast p2, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;->compare(Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;)I
    .locals 8
    .param p1, "path1"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    .param p2, "path2"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path1",
            "path2"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    .line 77
    .local v0, "lastModified1":J
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2

    .line 78
    .local v2, "lastModified2":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result v4

    .line 79
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v5

    .line 85
    .local v5, "ex":Ljava/lang/ClassCastException;
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 88
    .end local v5    # "ex":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    iget v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;->multiplier:I

    mul-int/2addr v5, v4

    return v5
.end method

.method public isRecentFirst()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;->recentFirst:Z

    return v0
.end method
