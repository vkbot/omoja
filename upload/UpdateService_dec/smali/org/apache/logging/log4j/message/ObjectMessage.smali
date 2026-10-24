.class public Lorg/apache/logging/log4j/message/ObjectMessage;
.super Ljava/lang/Object;
.source "ObjectMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final serialVersionUID:J = -0x51eca303cf4ef8a9L


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient objectString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private equalObjectsOrStrings(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
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

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 101
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/ObjectMessage;

    .line 109
    .local v2, "that":Lorg/apache/logging/log4j/message/ObjectMessage;
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    invoke-direct {p0, v3, v0}, Lorg/apache/logging/log4j/message/ObjectMessage;->equalObjectsOrStrings(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 105
    .end local v2    # "that":Lorg/apache/logging/log4j/message/ObjectMessage;
    :cond_4
    :goto_1
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

    .line 62
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->objectString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->objectString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->objectString:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->objectString:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 3

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectMessage;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
