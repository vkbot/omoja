.class public abstract Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
.source "AbstractJacksonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AdditionalField"
    .end annotation
.end field

.field private compact:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private complete:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private endOfLine:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private eventEol:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeNullDelimiter:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeStacktrace:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeTimeMillis:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private locationInfo:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private properties:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private stacktraceAsString:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeStacktrace:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->stacktraceAsString:Z

    .line 83
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeNullDelimiter:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeTimeMillis:Z

    return-void
.end method


# virtual methods
.method public getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .locals 1

    .line 139
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    return-object v0
.end method

.method public getEndOfLine()Ljava/lang/String;
    .locals 1

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->endOfLine:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEol()Z
    .locals 1

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->eventEol:Z

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .line 105
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->compact:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 109
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->complete:Z

    return v0
.end method

.method public isIncludeNullDelimiter()Z
    .locals 1

    .line 132
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeNullDelimiter:Z

    return v0
.end method

.method public isIncludeStacktrace()Z
    .locals 1

    .line 125
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeStacktrace:Z

    return v0
.end method

.method public isIncludeTimeMillis()Z
    .locals 1

    .line 135
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeTimeMillis:Z

    return v0
.end method

.method public isLocationInfo()Z
    .locals 1

    .line 113
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->locationInfo:Z

    return v0
.end method

.method public isProperties()Z
    .locals 1

    .line 117
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->properties:Z

    return v0
.end method

.method public isStacktraceAsString()Z
    .locals 1

    .line 129
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->stacktraceAsString:Z

    return v0
.end method

.method public setAdditionalFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            ")TB;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 219
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setCompact(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "compact"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compact"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->compact:Z

    .line 154
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setComplete(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "complete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->complete:Z

    .line 159
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setEndOfLine(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "endOfLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endOfLine"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->endOfLine:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setEventEol(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "eventEol"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "eventEol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->eventEol:Z

    .line 144
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setIncludeNullDelimiter(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "includeNullDelimiter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeNullDelimiter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeNullDelimiter:Z

    .line 199
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setIncludeStacktrace(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "includeStacktrace"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeStacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeStacktrace:Z

    .line 179
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setIncludeTimeMillis(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "includeTimeMillis"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeTimeMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->includeTimeMillis:Z

    .line 209
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setLocationInfo(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "locationInfo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locationInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->locationInfo:Z

    .line 164
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setProperties(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "properties"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->properties:Z

    .line 169
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method public setStacktraceAsString(Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 1
    .param p1, "stacktraceAsString"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stacktraceAsString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->stacktraceAsString:Z

    .line 189
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;

    return-object v0
.end method

.method protected toStringOrNull([B)Ljava/lang/String;
    .locals 2
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "header"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    return-object v0
.end method
