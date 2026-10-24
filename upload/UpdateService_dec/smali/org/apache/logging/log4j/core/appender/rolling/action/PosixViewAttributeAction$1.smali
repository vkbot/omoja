.class Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "PosixViewAttributeAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->createFileVisitor(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/FileVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

.field final synthetic val$basePath:Ljava/nio/file/Path;

.field final synthetic val$conditions:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$basePath",
            "val$conditions"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$conditions:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$basePath:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 253
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    .line 256
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 257
    .local v1, "pathFilter":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$basePath:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 258
    .local v2, "relative":Ljava/nio/file/Path;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$basePath:Ljava/nio/file/Path;

    invoke-interface {v1, v3, v2, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->val$basePath:Ljava/nio/file/Path;

    const-string v4, "Not defining POSIX attribute base={}, relative={}"

    invoke-interface {v0, v4, v3, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 262
    .end local v1    # "pathFilter":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .end local v2    # "relative":Ljava/nio/file/Path;
    :cond_0
    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->access$100(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->access$200(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;->this$0:Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->access$300(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/util/FileUtils;->defineFilePosixAttributeView(Ljava/nio/file/Path;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
