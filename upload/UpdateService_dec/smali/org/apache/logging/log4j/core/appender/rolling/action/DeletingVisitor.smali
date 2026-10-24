.class public Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "DeletingVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final basePath:Ljava/nio/file/Path;

.field private final pathConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/List;Z)V
    .locals 2
    .param p1, "basePath"    # Ljava/nio/file/Path;
    .param p3, "testMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "pathConditions",
            "testMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;Z)V"
        }
    .end annotation

    .line 53
    .local p2, "pathConditions":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;>;"
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 54
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->testMode:Z

    .line 55
    const-string v0, "basePath"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->basePath:Ljava/nio/file/Path;

    .line 56
    const-string v0, "pathConditions"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->pathConditions:Ljava/util/List;

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 58
    .local v1, "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->beforeFileTreeWalk()V

    .line 59
    .end local v1    # "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method protected delete(Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Deleting {}"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 100
    return-void
.end method

.method public isTestMode()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->testMode:Z

    return v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 5
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->pathConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 65
    .local v1, "pathFilter":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->basePath:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 66
    .local v2, "relative":Ljava/nio/file/Path;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->basePath:Ljava/nio/file/Path;

    invoke-interface {v1, v3, v2, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->basePath:Ljava/nio/file/Path;

    const-string v4, "Not deleting base={}, relative={}"

    invoke-interface {v0, v4, v3, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 70
    .end local v1    # "pathFilter":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .end local v2    # "relative":Ljava/nio/file/Path;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Deleting {} (TEST MODE: file not actually deleted)"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->delete(Ljava/nio/file/Path;)V

    .line 76
    :goto_1
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "ioException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "ioException"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "ioException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    instance-of v0, p2, Ljava/nio/file/NoSuchFileException;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "File {} could not be accessed, it has likely already been deleted"

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
