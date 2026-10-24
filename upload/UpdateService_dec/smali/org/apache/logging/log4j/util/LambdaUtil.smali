.class public final Lorg/apache/logging/log4j/util/LambdaUtil;
.super Ljava/lang/Object;
.source "LambdaUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static get(Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    .local p0, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/Message;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static get(Lorg/apache/logging/log4j/util/MessageSupplier;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p0, "supplier"    # Lorg/apache/logging/log4j/util/MessageSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "supplier"
        }
    .end annotation

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/MessageSupplier;->get()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getAll([Lorg/apache/logging/log4j/util/Supplier;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suppliers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    .local p0, "suppliers":[Lorg/apache/logging/log4j/util/Supplier;, "[Lorg/apache/logging/log4j/util/Supplier<*>;"
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 47
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/logging/log4j/util/LambdaUtil;->get(Lorg/apache/logging/log4j/util/Supplier;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getMessage(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .param p1, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "supplier",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/message/Message;"
        }
    .end annotation

    .line 88
    .local p0, "supplier":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<*>;"
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    invoke-interface {p0}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/Message;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/Message;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    :goto_0
    return-object v1
.end method
