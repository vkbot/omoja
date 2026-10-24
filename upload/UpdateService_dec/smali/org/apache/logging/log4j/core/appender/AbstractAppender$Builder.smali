.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
.source "AbstractAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private ignoreExceptions:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Layout"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No appender name provided"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->ignoreExceptions:Z

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getLayout()Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public getOrCreateLayout(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/Layout;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public isIgnoreExceptions()Z
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->ignoreExceptions:Z

    return v0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")TB;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 97
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    return-object v0
.end method

.method public setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ignoreExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->ignoreExceptions:Z

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    return-object v0
.end method

.method public setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 107
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    return-object v0
.end method

.method public withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    return-object v0
.end method

.method public withIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ignoreExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<TB;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    return-object v0
.end method
