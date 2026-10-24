.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "AbstractFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private advertise:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private advertiseUri:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private append:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private createOnDemand:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileGroup:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private fileOwner:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private filePermissions:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private locking:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->append:Z

    return-void
.end method


# virtual methods
.method public getAdvertiseUri()Ljava/lang/String;
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->advertiseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFileGroup()Ljava/lang/String;
    .locals 1

    .line 105
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 77
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePermissions()Ljava/lang/String;
    .locals 1

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method public isAdvertise()Z
    .locals 1

    .line 81
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->advertise:Z

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 85
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->append:Z

    return v0
.end method

.method public isCreateOnDemand()Z
    .locals 1

    .line 89
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->createOnDemand:Z

    return v0
.end method

.method public isLocking()Z
    .locals 1

    .line 93
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->locking:Z

    return v0
.end method

.method public withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "advertise"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertise"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->advertise:Z

    .line 110
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withAdvertiseUri(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "advertiseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertiseUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->advertiseUri:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withAppend(Z)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "append"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->append:Z

    .line 120
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withCreateOnDemand(Z)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "createOnDemand"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "createOnDemand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->createOnDemand:Z

    .line 130
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "fileGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "fileOwner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileOwner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->fileOwner:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withFilePermissions(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "filePermissions"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->filePermissions:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method

.method public withLocking(Z)Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    .locals 1
    .param p1, "locking"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->locking:Z

    .line 135
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;

    return-object v0
.end method
