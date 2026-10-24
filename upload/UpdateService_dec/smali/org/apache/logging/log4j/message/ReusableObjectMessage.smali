.class public Lorg/apache/logging/log4j/message/ReusableObjectMessage;
.super Ljava/lang/Object;
.source "ReusableObjectMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;
.implements Lorg/apache/logging/log4j/message/Clearable;


# static fields
.field private static final serialVersionUID:J = 0x601193fbf10edad8L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/message/ParameterConsumer<",
            "TS;>;TS;)V"
        }
    .end annotation

    .line 126
    .local p1, "action":Lorg/apache/logging/log4j/message/ParameterConsumer;, "Lorg/apache/logging/log4j/message/ParameterConsumer<TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getParameterCount()S
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 3

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 2

    .line 131
    new-instance v0, Lorg/apache/logging/log4j/message/ObjectMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/ObjectMessage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "emptyReplacement"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    .local v0, "params":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 109
    return-object v0

    .line 111
    .end local v0    # "params":[Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 112
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
