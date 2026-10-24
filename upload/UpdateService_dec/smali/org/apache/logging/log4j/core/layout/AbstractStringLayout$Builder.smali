.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;
.source "AbstractStringLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "charset"
    .end annotation
.end field

.field private footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "footerSerializer"
    .end annotation
.end field

.field private headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "headerSerializer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFooterSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1

    .line 65
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method public getHeaderSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 1

    .line 69
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
    .locals 1
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
            ")TB;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->charset:Ljava/nio/charset/Charset;

    .line 74
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    return-object v0
.end method

.method public setFooterSerializer(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
    .locals 1
    .param p1, "footerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "footerSerializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;",
            ")TB;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->footerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    return-object v0
.end method

.method public setHeaderSerializer(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
    .locals 1
    .param p1, "headerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "headerSerializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;",
            ")TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->headerSerializer:Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    .line 84
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    return-object v0
.end method
