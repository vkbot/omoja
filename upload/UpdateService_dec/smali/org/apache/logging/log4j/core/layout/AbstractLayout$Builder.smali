.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
.super Ljava/lang/Object;
.source "AbstractLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private footer:[B
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private header:[B
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    return-object p0
.end method

.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getFooter()[B
    .locals 1

    .line 65
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->footer:[B

    return-object v0
.end method

.method public getHeader()[B
    .locals 1

    .line 69
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->header:[B

    return-object v0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
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

    .line 73
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 74
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFooter([B)Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
    .locals 1
    .param p1, "footer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "footer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->footer:[B

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeader([B)Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
    .locals 1
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "header"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->header:[B

    .line 84
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    return-object v0
.end method
