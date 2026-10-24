.class public Lorg/apache/logging/log4j/message/StringFormattedMessage;
.super Ljava/lang/Object;
.source "StringFormattedMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final HASHVAL:I = 0x1f

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final serialVersionUID:J = -0x93e05771a4380c9L


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private transient formattedMessage:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private messagePattern:Ljava/lang/String;

.field private stringArgs:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arguments"
        }
    .end annotation

    .line 78
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "messagePattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arguments"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->locale:Ljava/util/Locale;

    .line 63
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->argArray:[Ljava/lang/Object;

    .line 65
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 66
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->throwable:Ljava/lang/Throwable;

    .line 68
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
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

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 172
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formattedMessage:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 175
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
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

    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 156
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StringFormattedMessage;->getFormattedMessage()Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 163
    .local v4, "obj":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "string":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    aput-object v5, v6, v1

    .line 165
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 166
    nop

    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "string":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_0
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

    .line 125
    if-ne p0, p1, :cond_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    .line 134
    .local v1, "that":Lorg/apache/logging/log4j/message/StringFormattedMessage;
    iget-object v2, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 135
    :goto_0
    return v0

    .line 138
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    iget-object v2, v1, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 129
    .end local v1    # "that":Lorg/apache/logging/log4j/message/StringFormattedMessage;
    :cond_4
    :goto_1
    return v0
.end method

.method protected varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "msgPattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msgPattern",
            "args"
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ife":Ljava/util/IllegalFormatException;
    sget-object v1, Lorg/apache/logging/log4j/message/StringFormattedMessage;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to format msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-object p1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->argArray:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formattedMessage:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 143
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 144
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/message/StringFormattedMessage;->stringArgs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 145
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StringFormattedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
