.class public Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "OutputStreamAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private follow:Z

.field private final ignoreExceptions:Z

.field private target:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->follow:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->ignoreExceptions:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 49
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
    .locals 10

    .line 60
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v8

    .line 61
    .local v8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v9, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->target:Ljava/io/OutputStream;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->follow:Z

    invoke-static {v0, v2, v8}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->access$000(Ljava/io/OutputStream;ZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;)V

    .line 61
    return-object v9
.end method

.method public setFollow(Z)Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;
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

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->follow:Z

    .line 67
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;

    return-object v0
.end method

.method public setTarget(Ljava/io/OutputStream;)Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;
    .locals 1
    .param p1, "aTarget"    # Ljava/io/OutputStream;
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
            "Ljava/io/OutputStream;",
            ")TB;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->target:Ljava/io/OutputStream;

    .line 72
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;

    return-object v0
.end method
