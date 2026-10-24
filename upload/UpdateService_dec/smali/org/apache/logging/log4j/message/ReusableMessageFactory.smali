.class public final Lorg/apache/logging/log4j/message/ReusableMessageFactory;
.super Ljava/lang/Object;
.source "ReusableMessageFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/MessageFactory2;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/message/ReusableMessageFactory;

.field private static final serialVersionUID:J = -0x7c7f2e98cf436953L

.field private static threadLocalObjectMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableObjectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static threadLocalParameterized:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static threadLocalSimpleMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/message/ReusableSimpleMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ReusableMessageFactory;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static getObject()Lorg/apache/logging/log4j/message/ReusableObjectMessage;
    .locals 2

    .line 70
    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    .line 71
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableObjectMessage;
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    invoke-direct {v1}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;-><init>()V

    move-object v0, v1

    .line 73
    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalObjectMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-object v0
.end method

.method private static getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    .line 53
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    invoke-direct {v1}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;-><init>()V

    move-object v0, v1

    .line 55
    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalParameterized:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 57
    :cond_0
    iget-boolean v1, v0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    invoke-direct {v1}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;-><init>()V

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserve()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserve()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
    .locals 2

    .line 61
    sget-object v0, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    .line 62
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    invoke-direct {v1}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;-><init>()V

    move-object v0, v1

    .line 64
    sget-object v1, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->threadLocalSimpleMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method public static release(Lorg/apache/logging/log4j/message/Message;)V
    .locals 1
    .param p0, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 86
    instance-of v0, p0, Lorg/apache/logging/log4j/message/Clearable;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/message/Clearable;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Clearable;->clear()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public newMessage(Ljava/lang/CharSequence;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 93
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    move-result-object v0

    .line 94
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->set(Ljava/lang/CharSequence;)V

    .line 95
    return-object v0
.end method

.method public newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 195
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getObject()Lorg/apache/logging/log4j/message/ReusableObjectMessage;

    move-result-object v0

    .line 196
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableObjectMessage;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->set(Ljava/lang/Object;)V

    .line 197
    return-object v0
.end method

.method public newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 179
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getSimple()Lorg/apache/logging/log4j/message/ReusableSimpleMessage;

    move-result-object v0

    .line 180
    .local v0, "result":Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->set(Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 114
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p0"    # Ljava/lang/Object;
    .param p3, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 119
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 124
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 130
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 136
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 142
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 148
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
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

    .line 154
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 11
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
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

    .line 160
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
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
            "message",
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

    .line 166
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method

.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 109
    invoke-static {}, Lorg/apache/logging/log4j/message/ReusableMessageFactory;->getParameterized()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->set(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;

    move-result-object v0

    return-object v0
.end method
