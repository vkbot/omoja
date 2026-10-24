.class public Lorg/apache/logging/log4j/message/FormattedMessage;
.super Ljava/lang/Object;
.source "FormattedMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final FORMAT_SPECIFIER:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static final HASHVAL:I = 0x1f

.field private static final MSG_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x93e05771a4380c9L


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private transient formattedMessage:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private message:Lorg/apache/logging/log4j/message/Message;

.field private messagePattern:Ljava/lang/String;

.field private stringArgs:[Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/FormattedMessage;->MSG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arg"
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
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

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arguments",
            "throwable"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    .line 132
    iput-object p1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    .line 134
    iput-object p3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "messagePattern"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arg"
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "messagePattern"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
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

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "messagePattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arguments",
            "throwable"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    .line 91
    iput-object p2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    .line 93
    iput-object p4, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    .line 94
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

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 239
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 241
    iget-object v2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
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

    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 252
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 256
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 259
    .local v4, "obj":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "string":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    aput-object v5, v6, v1

    .line 261
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 262
    nop

    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "string":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
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

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/FormattedMessage;

    .line 149
    .local v2, "that":Lorg/apache/logging/log4j/message/FormattedMessage;
    iget-object v3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 150
    :goto_0
    return v1

    .line 152
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 153
    return v1

    .line 156
    :cond_4
    return v0

    .line 144
    .end local v2    # "that":Lorg/apache/logging/log4j/message/FormattedMessage;
    :cond_5
    :goto_1
    return v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;
    .locals 4
    .param p1, "msgPattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msgPattern",
            "args",
            "aThrowable"
        }
    .end annotation

    .line 185
    :try_start_0
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "format":Ljava/text/MessageFormat;
    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v1

    .line 187
    .local v1, "formats":[Ljava/text/Format;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 188
    new-instance v2, Lorg/apache/logging/log4j/message/MessageFormatMessage;

    iget-object v3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, p1, p2}, Lorg/apache/logging/log4j/message/MessageFormatMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 192
    .end local v0    # "format":Ljava/text/MessageFormat;
    .end local v1    # "formats":[Ljava/text/Format;
    :cond_0
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 194
    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/logging/log4j/message/FormattedMessage;->MSG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 199
    :cond_1
    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    .line 200
    :goto_1
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 210
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 218
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 229
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 230
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 231
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
