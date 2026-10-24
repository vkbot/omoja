.class public Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "WriterAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/WriterAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/WriterAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private follow:Z

.field private target:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->follow:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/WriterAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/WriterAppender;
    .locals 11

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v0

    .line 53
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    instance-of v1, v0, Lorg/apache/logging/log4j/core/StringLayout;

    if-nez v1, :cond_0

    .line 54
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/WriterAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "Layout must be a StringLayout to log to ServletContext"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/StringLayout;

    .line 58
    .local v1, "stringLayout":Lorg/apache/logging/log4j/core/StringLayout;
    new-instance v10, Lorg/apache/logging/log4j/core/appender/WriterAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v5

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->target:Ljava/io/Writer;

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->follow:Z

    invoke-static {v2, v4, v1}, Lorg/apache/logging/log4j/core/appender/WriterAppender;->access$100(Ljava/io/Writer;ZLorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/WriterManager;

    move-result-object v6

    .line 59
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->isIgnoreExceptions()Z

    move-result v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v10

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lorg/apache/logging/log4j/core/appender/WriterAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/WriterManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/WriterAppender$1;)V

    .line 58
    return-object v10
.end method

.method public setFollow(Z)Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;
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

    .line 63
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->follow:Z

    .line 64
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;

    return-object v0
.end method

.method public setTarget(Ljava/io/Writer;)Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;
    .locals 1
    .param p1, "aTarget"    # Ljava/io/Writer;
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
            "Ljava/io/Writer;",
            ")TB;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->target:Ljava/io/Writer;

    .line 69
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;

    return-object v0
.end method
