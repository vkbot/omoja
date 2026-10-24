.class public Lorg/apache/logging/log4j/message/SimpleMessage;
.super Ljava/lang/Object;
.source "SimpleMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialVersionUID:J = -0x748bb2cf9f485d58L


# instance fields
.field private transient charSequence:Ljava/lang/CharSequence;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 151
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    .line 152
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/SimpleMessage;->getFormattedMessage()Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 147
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

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/SimpleMessage;

    .line 102
    .local v2, "that":Lorg/apache/logging/log4j/message/SimpleMessage;
    iget-object v3, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-nez v3, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 97
    .end local v2    # "that":Lorg/apache/logging/log4j/message/SimpleMessage;
    :cond_5
    :goto_2
    return v1
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

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
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

    .line 140
    iget-object v0, p0, Lorg/apache/logging/log4j/message/SimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/SimpleMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
