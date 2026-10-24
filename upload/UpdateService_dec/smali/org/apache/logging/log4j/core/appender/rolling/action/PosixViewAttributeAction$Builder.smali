.class public Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
.super Ljava/lang/Object;
.source "PosixViewAttributeAction.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;",
        ">;"
    }
.end annotation


# instance fields
.field private basePath:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No base path provided"
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private fileGroup:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileOwner:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private filePermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private filePermissionsString:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "filePermissions"
    .end annotation
.end field

.field private followLinks:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private maxDepth:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private pathConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PathConditions"
    .end annotation
.end field

.field private subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->followLinks:Z

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->maxDepth:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;
    .locals 13

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->basePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Posix file attribute view action not valid because base path is empty."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 120
    return-object v1

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissions:Ljava/util/Set;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissionsString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileOwner:Ljava/lang/String;

    .line 124
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileGroup:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Posix file attribute view not valid because nor permissions, user or group defined."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 126
    return-object v1

    .line 129
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/util/FileUtils;->isFilePosixAttributeViewSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Posix file attribute view defined but it is not supported by this files system."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 131
    return-object v1

    .line 134
    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->basePath:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->followLinks:Z

    iget v6, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->maxDepth:I

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->pathConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    if-eqz v2, :cond_3

    move-object v8, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 135
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v2

    move-object v8, v2

    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissions:Ljava/util/Set;

    if-eqz v2, :cond_4

    move-object v9, v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissionsString:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 137
    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_5
    nop

    :goto_1
    move-object v9, v1

    :goto_2
    iget-object v10, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileOwner:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileGroup:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;-><init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$1;)V

    .line 134
    return-object v0
.end method

.method public withBasePath(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "basePath"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->basePath:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 150
    return-object p0
.end method

.method public withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "fileGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileGroup"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileGroup:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "fileOwner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileOwner"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->fileOwner:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public withFilePermissions(Ljava/util/Set;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePermissions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;"
        }
    .end annotation

    .line 225
    .local p1, "filePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissions:Ljava/util/Set;

    .line 226
    return-object p0
.end method

.method public withFilePermissionsString(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "filePermissionsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePermissionsString"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->filePermissionsString:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public withFollowLinks(Z)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "followLinks"
        }
    .end annotation

    .line 180
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->followLinks:Z

    .line 181
    return-object p0
.end method

.method public withMaxDepth(I)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "maxDepth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxDepth"
        }
    .end annotation

    .line 190
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->maxDepth:I

    .line 191
    return-object p0
.end method

.method public withPathConditions([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "pathConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pathConditions"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->pathConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 202
    return-object p0
.end method

.method public withSubst(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;
    .locals 0
    .param p1, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "subst"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 161
    return-object p0
.end method
