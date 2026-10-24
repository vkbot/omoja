.class public Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
.source "SyslogLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/SyslogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/SyslogLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private escapeNL:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "newLineEscape"
    .end annotation
.end field

.field private facility:Lorg/apache/logging/log4j/core/net/Facility;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeNewLine:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "newLine"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;-><init>()V

    .line 64
    sget-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL0:Lorg/apache/logging/log4j/core/net/Facility;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/SyslogLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/SyslogLayout;
    .locals 5

    .line 75
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->includeNewLine:Z

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->escapeNL:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;-><init>(Lorg/apache/logging/log4j/core/net/Facility;ZLjava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getEscapeNL()Ljava/lang/String;
    .locals 1

    .line 87
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->escapeNL:Ljava/lang/String;

    return-object v0
.end method

.method public getFacility()Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public isIncludeNewLine()Z
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->includeNewLine:Z

    return v0
.end method

.method public setEscapeNL(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
    .locals 1
    .param p1, "escapeNL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "escapeNL"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->escapeNL:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    return-object v0
.end method

.method public setFacility(Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
    .locals 1
    .param p1, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "facility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/Facility;",
            ")TB;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 92
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    return-object v0
.end method

.method public setIncludeNewLine(Z)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;
    .locals 1
    .param p1, "includeNewLine"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeNewLine"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->includeNewLine:Z

    .line 97
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    return-object v0
.end method
