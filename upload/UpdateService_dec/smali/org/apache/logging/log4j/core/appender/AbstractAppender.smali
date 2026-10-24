.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable;
.source "AbstractAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/Appender;
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    }
.end annotation


# instance fields
.field private handler:Lorg/apache/logging/log4j/core/ErrorHandler;

.field private final ignoreExceptions:Z

.field private final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 180
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "ignoreExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "ignoreExceptions",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 210
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0, p2, p5}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable;-><init>(Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 162
    new-instance v0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;-><init>(Lorg/apache/logging/log4j/core/Appender;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

    .line 211
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->name:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 213
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->ignoreExceptions:Z

    .line 214
    return-void
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "s",
            "defaultValue"
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Could not parse \"{}\" as an integer,  using default value {}: {}"

    invoke-interface {v1, v3, p0, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return p1
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/ErrorHandler;->error(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "t"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    return-void
.end method

.method public error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p3, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "event",
            "t"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/ErrorHandler;->error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public getHandler()Lorg/apache/logging/log4j/core/ErrorHandler;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

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

    .line 264
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->layout:Lorg/apache/logging/log4j/core/Layout;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ignoreExceptions()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->ignoreExceptions:Z

    return v0
.end method

.method public requiresLocation()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->layout:Lorg/apache/logging/log4j/core/Layout;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/LocationAware;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/impl/LocationAware;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHandler(Lorg/apache/logging/log4j/core/ErrorHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/logging/log4j/core/ErrorHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "handler"
        }
    .end annotation

    .line 295
    if-nez p1, :cond_0

    .line 296
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "The handler cannot be set to null"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 297
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "The handler cannot be changed once the appender is started"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 301
    return-void

    .line 303
    :cond_1
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->handler:Lorg/apache/logging/log4j/core/ErrorHandler;

    .line 304
    return-void
.end method

.method protected toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->layout:Lorg/apache/logging/log4j/core/Layout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/Layout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->name:Ljava/lang/String;

    return-object v0
.end method
