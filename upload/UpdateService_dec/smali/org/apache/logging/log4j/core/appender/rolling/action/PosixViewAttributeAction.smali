.class public Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;
.source "PosixViewAttributeAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "PosixViewAttribute"
    printObject = true
.end annotation


# instance fields
.field private final fileGroup:Ljava/lang/String;

.field private final fileOwner:Ljava/lang/String;

.field private final filePermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "followSymbolicLinks"    # Z
    .param p3, "maxDepth"    # I
    .param p4, "pathConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .param p5, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p7, "fileOwner"    # Ljava/lang/String;
    .param p8, "fileGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "followSymbolicLinks",
            "maxDepth",
            "pathConditions",
            "subst",
            "filePermissions",
            "fileOwner",
            "fileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI[",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            "Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    .local p6, "filePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;-><init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 72
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->filePermissions:Ljava/util/Set;

    .line 73
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileOwner:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileGroup:Ljava/lang/String;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p6, "x5"    # Ljava/util/Set;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;

    .line 50
    invoke-direct/range {p0 .. p8}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;-><init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->filePermissions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected createFileVisitor(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p1, "basePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "basePath",
            "conditions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;)",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 253
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;Ljava/util/List;Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public getFileGroup()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->filePermissions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PosixViewAttributeAction [filePermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->filePermissions:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->fileGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getBasePath()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->getBasePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getMaxDepth()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->getMaxDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getPathConditions()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->getPathConditions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    return-object v0
.end method
