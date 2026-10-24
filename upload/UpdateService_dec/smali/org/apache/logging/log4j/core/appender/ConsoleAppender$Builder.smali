.class public Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "ConsoleAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/ConsoleAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private direct:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private follow:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 192
    nop

    .line 194
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->access$200()Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 192
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 189
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
    .locals 11

    .line 219
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->follow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->direct:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use both follow and direct on ConsoleAppender \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->getOrCreateLayout(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    .line 223
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v10, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->follow:Z

    iget-boolean v5, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->direct:Z

    invoke-static {v1, v3, v5, v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->access$300(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v5

    .line 224
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->isIgnoreExceptions()Z

    move-result v6

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V

    .line 223
    return-object v10
.end method

.method public setDirect(Z)Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;
    .locals 1
    .param p1, "shouldDirect"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shouldDirect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->direct:Z

    .line 214
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;

    return-object v0
.end method

.method public setFollow(Z)Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;
    .locals 1
    .param p1, "shouldFollow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shouldFollow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->follow:Z

    .line 209
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;

    return-object v0
.end method

.method public setTarget(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;
    .locals 1
    .param p1, "aTarget"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aTarget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
            ")TB;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 204
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;

    return-object v0
.end method
