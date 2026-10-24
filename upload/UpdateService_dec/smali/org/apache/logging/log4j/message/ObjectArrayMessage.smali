.class public final Lorg/apache/logging/log4j/message/ObjectArrayMessage;
.super Ljava/lang/Object;
.source "ObjectArrayMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final serialVersionUID:J = -0x51eca303cf4ef8a9L


# instance fields
.field private transient array:[Ljava/lang/Object;

.field private transient arrayString:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private equalObjectsOrStrings([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "left"    # [Ljava/lang/Object;
    .param p2, "right"    # [Ljava/lang/Object;
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

    .line 55
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

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

    .line 121
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
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

    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 132
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 133
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

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/ObjectArrayMessage;

    .line 68
    .local v2, "that":Lorg/apache/logging/log4j/message/ObjectArrayMessage;
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v2, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-direct {p0, v3, v0}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->equalObjectsOrStrings([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    .end local v2    # "that":Lorg/apache/logging/log4j/message/ObjectArrayMessage;
    :cond_4
    :goto_1
    return v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->arrayString:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ObjectArrayMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
