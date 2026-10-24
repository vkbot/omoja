.class final Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$SimpleEntryMessage;
.super Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;
.source "DefaultFlowMessageFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/message/EntryMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleEntryMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V
    .locals 0
    .param p1, "entryText"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entryText",
            "message"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/DefaultFlowMessageFactory$AbstractFlowMessage;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;)V

    .line 112
    return-void
.end method
