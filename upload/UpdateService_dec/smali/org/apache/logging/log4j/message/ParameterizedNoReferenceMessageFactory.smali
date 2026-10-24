.class public final Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;
.super Lorg/apache/logging/log4j/message/AbstractMessageFactory;
.source "ParameterizedNoReferenceMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

.field private static final serialVersionUID:J = 0x45c5c3419effa164L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/AbstractMessageFactory;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public varargs newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;
    .locals 4
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

    .line 101
    if-nez p2, :cond_0

    .line 102
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .local v0, "msg":Lorg/apache/logging/log4j/message/ParameterizedMessage;
    new-instance v1, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
