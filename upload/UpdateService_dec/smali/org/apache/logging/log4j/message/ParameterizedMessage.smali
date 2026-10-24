.class public Lorg/apache/logging/log4j/message/ParameterizedMessage;
.super Ljava/lang/Object;
.source "ParameterizedMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final DEFAULT_STRING_BUILDER_SIZE:I = 0xff

.field public static final ERROR_MSG_SEPARATOR:Ljava/lang/String; = ":"

.field public static final ERROR_PREFIX:Ljava/lang/String; = "[!!!"

.field public static final ERROR_SEPARATOR:Ljava/lang/String; = "=>"

.field public static final ERROR_SUFFIX:Ljava/lang/String; = "!!!]"

.field private static final HASHVAL:I = 0x1f

.field public static final RECURSION_PREFIX:Ljava/lang/String; = "[..."

.field public static final RECURSION_SUFFIX:Ljava/lang/String; = "...]"

.field private static final serialVersionUID:J = -0x93e05771a4380c9L

.field private static threadLocalStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private formattedMessage:Ljava/lang/String;

.field private indices:[I

.field private messagePattern:Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;

.field private usedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

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

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 106
    iput-object p3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 93
    iput-object p3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static countArgumentPlaceholders(Ljava/lang/String;)I
    .locals 1
    .param p0, "messagePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messagePattern"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->countArgumentPlaceholders(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;
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

    .line 239
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getThreadLocalStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 211
    sget-object v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 212
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .line 214
    sget-object v1, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 216
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 217
    return-object v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 324
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 4
    .param p1, "messagePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messagePattern"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/2addr v2, v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 148
    .local v1, "len":I
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->indices:[I

    .line 149
    invoke-static {p1, v2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->countArgumentPlaceholders2(Ljava/lang/String;[I)I

    move-result v2

    .line 150
    .local v2, "placeholders":I
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->initThrowable([Ljava/lang/Object;I)V

    .line 151
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, v3

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    .line 152
    return-void
.end method

.method private initThrowable([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .param p2, "usedParams"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "params",
            "usedParams"
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_0

    .line 156
    array-length v0, p1

    .line 157
    .local v0, "argCount":I
    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 158
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Throwable;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 161
    .end local v0    # "argCount":I
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

    .line 244
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 245
    return v0

    .line 247
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    .line 253
    .local v2, "that":Lorg/apache/logging/log4j/message/ParameterizedMessage;
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 254
    :goto_0
    return v1

    .line 256
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget-object v4, v2, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 257
    return v1

    .line 261
    :cond_4
    return v0

    .line 248
    .end local v2    # "that":Lorg/apache/logging/log4j/message/ParameterizedMessage;
    :cond_5
    :goto_1
    return v1
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->indices:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gez v1, :cond_1

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    invoke-static {p1, v0, v1, v2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->formatMessage(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    invoke-static {p1, v1, v2, v3, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->formatMessage2(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I[I)V

    .line 229
    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getThreadLocalStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    .line 205
    sget v1, Lorg/apache/logging/log4j/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 207
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 266
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 267
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 268
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParameterizedMessage[messagePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stringArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 330
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0
.end method
