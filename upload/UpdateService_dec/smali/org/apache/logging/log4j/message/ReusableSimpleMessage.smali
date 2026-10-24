.class public Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
.super Ljava/lang/Object;
.source "ReusableSimpleMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Ljava/lang/CharSequence;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;
.implements Lorg/apache/logging/log4j/message/Clearable;


# static fields
.field private static final serialVersionUID:J = -0x7face011f27a5451L


# instance fields
.field private charSequence:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 0
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

    .line 85
    .local p1, "action":Lorg/apache/logging/log4j/message/ParameterConsumer;, "Lorg/apache/logging/log4j/message/ParameterConsumer<TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
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

    .line 61
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

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

    .line 41
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()S
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public set(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 37
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p1, "emptyReplacement"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    .line 71
    return-object p1
.end method
