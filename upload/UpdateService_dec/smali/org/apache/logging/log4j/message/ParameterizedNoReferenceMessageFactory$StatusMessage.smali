.class Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;
.super Ljava/lang/Object;
.source "ParameterizedNoReferenceMessageFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StatusMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3a46cfc888f6a800L


# instance fields
.field private final formattedMessage:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "formattedMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formattedMessage",
            "throwable"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;->formattedMessage:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;->throwable:Ljava/lang/Throwable;

    .line 56
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory$StatusMessage;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
