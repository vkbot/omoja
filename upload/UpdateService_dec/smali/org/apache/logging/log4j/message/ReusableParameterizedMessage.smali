.class public Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
.super Ljava/lang/Object;
.source "ReusableParameterizedMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;
.implements Lorg/apache/logging/log4j/message/Clearable;


# static fields
.field private static final MAX_PARMS:I = 0xa

.field private static final MIN_BUILDER_SIZE:I = 0x200

.field private static final serialVersionUID:J = 0x6c3f6faf867a8190L


# instance fields
.field private argCount:I

.field private transient buffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final indices:[I

.field private messagePattern:Ljava/lang/String;

.field private transient params:[Ljava/lang/Object;

.field transient reserved:Z

.field private transient throwable:Ljava/lang/Throwable;

.field private usedCount:I

.field private transient varargs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    .line 53
    return-void
.end method

.method private static count(Ljava/lang/String;[I)I
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "indices"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->countArgumentPlaceholders2(Ljava/lang/String;[I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->countArgumentPlaceholders(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getBuffer()Ljava/lang/StringBuilder;
    .locals 6

    .line 309
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 313
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 314
    iget-object v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 315
    .local v2, "currentPatternLength":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v3

    .line 316
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 318
    .end local v2    # "currentPatternLength":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    return-object v0
.end method

.method private getParams()[Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getTrimmedParams()[Ljava/lang/Object;
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "argCount"    # I
    .param p3, "paramArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "argCount",
            "paramArray"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    .line 125
    iput p2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    .line 126
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->count(Ljava/lang/String;[I)I

    move-result v0

    .line 127
    .local v0, "placeholderCount":I
    invoke-direct {p0, p3, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->initThrowable([Ljava/lang/Object;II)V

    .line 128
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->usedCount:I

    .line 129
    return-void
.end method

.method private initThrowable([Ljava/lang/Object;II)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .param p2, "argCount"    # I
    .param p3, "usedParams"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "params",
            "argCount",
            "usedParams"
        }
    .end annotation

    .line 141
    if-ge p3, p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 142
    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 146
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    .line 353
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 355
    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 3
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

    .line 111
    .local p1, "action":Lorg/apache/logging/log4j/message/ParameterConsumer;, "Lorg/apache/logging/log4j/message/ParameterConsumer<TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "parameters":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    if-ge v1, v2, :cond_0

    .line 113
    aget-object v2, v0, v1

    invoke-interface {p1, v2, v1, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 112
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 115
    .end local v1    # "i":S
    :cond_0
    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    invoke-static {p1, v0, v1, v2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->formatMessage(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->usedCount:I

    iget-object v3, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/logging/log4j/message/ParameterFormatter;->formatMessage2(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I[I)V

    .line 329
    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 3

    .line 301
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "result":Ljava/lang/String;
    sget v2, Lorg/apache/logging/log4j/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v0, v2}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 305
    return-object v1
.end method

.method public getParameterCount()S
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    int-to-short v0, v0

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 278
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getTrimmedParams()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 3

    .line 119
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getTrimmedParams()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method reserve()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 1

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    .line 338
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 156
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 162
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 163
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 164
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 169
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 170
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 171
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 172
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 177
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 178
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 179
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 180
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 181
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 186
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 187
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 188
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 189
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 190
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 196
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 197
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 198
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 199
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 200
    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 201
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 202
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 208
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 209
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 210
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 211
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 212
    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 213
    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 214
    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 215
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 221
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 222
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 223
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 224
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 225
    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 226
    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 227
    const/4 v1, 0x7

    aput-object p9, v0, v1

    .line 228
    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 229
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 235
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 236
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 237
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 238
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 239
    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 240
    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 241
    const/4 v1, 0x7

    aput-object p9, v0, v1

    .line 242
    const/16 v1, 0x8

    aput-object p10, v0, v1

    .line 243
    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 244
    return-object p0
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .param p4, "p2"    # Ljava/lang/Object;
    .param p5, "p3"    # Ljava/lang/Object;
    .param p6, "p4"    # Ljava/lang/Object;
    .param p7, "p5"    # Ljava/lang/Object;
    .param p8, "p6"    # Ljava/lang/Object;
    .param p9, "p7"    # Ljava/lang/Object;
    .param p10, "p8"    # Ljava/lang/Object;
    .param p11, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 250
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 251
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 252
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 253
    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 254
    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 255
    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 256
    const/4 v1, 0x7

    aput-object p9, v0, v1

    .line 257
    const/16 v1, 0x8

    aput-object p10, v0, v1

    .line 258
    const/16 v1, 0x9

    aput-object p11, v0, v1

    .line 259
    const/16 v1, 0xa

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 260
    return-object p0
.end method

.method varargs set(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
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

    .line 149
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 150
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    .line 151
    return-object p0
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "emptyReplacement"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    .line 69
    .local v0, "result":[Ljava/lang/Object;
    array-length v2, p1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 70
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    goto :goto_2

    .line 71
    :cond_0
    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    array-length v4, p1

    if-gt v2, v4, :cond_2

    .line 74
    iget-object v3, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    invoke-static {v3, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    if-ge v1, v2, :cond_1

    .line 77
    iget-object v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    move-object v0, p1

    goto :goto_2

    .line 82
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    goto :goto_2

    .line 92
    .end local v0    # "result":[Ljava/lang/Object;
    :cond_3
    iget v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 93
    move-object v0, p1

    .restart local v0    # "result":[Ljava/lang/Object;
    goto :goto_1

    .line 95
    .end local v0    # "result":[Ljava/lang/Object;
    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    .restart local v0    # "result":[Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReusableParameterizedMessage[messagePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stringArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method
