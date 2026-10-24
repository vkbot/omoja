.class public final Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;
.super Lorg/apache/logging/log4j/message/AbstractMessageFactory;
.source "ParameterizedMessageFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;

.field private static final serialVersionUID:J = -0x7c7f2e98cf436953L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedMessageFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
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

    .line 70
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 86
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 94
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 102
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 119
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 128
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 137
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 3
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

    .line 146
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p11, v1, v2

    invoke-direct {v0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 62
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
